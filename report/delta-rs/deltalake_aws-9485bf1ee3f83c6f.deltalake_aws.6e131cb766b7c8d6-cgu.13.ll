inline.NumInlined: 1308
inline.NumDeleted: 507
begin_hunk_0_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.qj = phi ptr [ %i.ps, %.thread ], [ %i.qg, %bb.bt ] ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !2408, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 136
  %.val.i = load ptr, ptr %i.ql, align 8, !noundef !4 ; 3 uses
  %.not.i.i268 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i268, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qm = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8
  %i.qn = icmp slt i64 %i.qm, 0
  br i1 %i.qn, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.dw, %bb.dv, %bb.dt, %bb.ds, %.body.i, %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.ck, %bb.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i, %bb.bx
  %.pn14.i = phi { ptr, i32 } [ %i.qo, %bb.bx ], [ %i.rs, %bb.co ], [ %i.rm, %bb.ck ], [ %.pn10.i, %bb.ds ], [ %i.rm, %bb.cl ], [ %i.rm, %bb.cj ], [ %i.rs, %bb.cp ], [ %i.rs, %bb.cn ], [ %.pn10.i, %bb.dt ], [ %.pn10.i, %.body.i ], [ %.pn6.i, %bb.dw ], [ %.pn6.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i ], [ %.pn6.i, %bb.dv ]
  store i8 2, ptr %i.qu, align 8, !noalias !2408
  br label %.body269

bb.bx:                                            ; preds = %bb.dr
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.by:                                            ; preds = %bb.bv, %bb.bu
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i, ptr %i.qp, align 8, !noalias !2408
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.qk, ptr %i.qq, align 8, !noalias !2408
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2408
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i: ; preds = %bb.dy, %bb.dx, %bb.ch, %bb.cc
  %.pn6.i = phi { ptr, i32 } [ %i.rj, %bb.ch ], [ %i.qy, %bb.dx ], [ %i.qy, %bb.dy ], [ %i.qy, %bb.cc ] ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  %i.qs = load ptr, ptr %i.qr, align 8, !alias.scope !2417, !noalias !2408, !noundef !4 ; 2 uses
  %i.qt = icmp eq ptr %i.qs, null
  br i1 %i.qt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.dv

bb.bz:                                            ; preds = %bb.bt
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #26
          to label %.noexc271 unwind label %bb.dz

.noexc271:                                        ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bt
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #26
          to label %.noexc272 unwind label %bb.dz

.noexc272:                                        ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.by, %bb.bt
  %i.qu = phi ptr [ %i.qi, %bb.by ], [ %i.qh, %bb.bt ] ; 3 uses
  %i.qv = phi ptr [ %i.qj, %bb.by ], [ %i.qg, %bb.bt ]
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.qx = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.qw, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cd unwind label %bb.cc     ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %i.qy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.ra = load i8, ptr %i.qz, align 8, !range !102, !noalias !2408, !noundef !4
  %cond.i27.i = icmp eq i8 %i.ra, 3
  br i1 %cond.i27.i, label %bb.dx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i

bb.cd:                                            ; preds = %bb.cb
  %i.rb = extractvalue { i64, ptr } %i.qx, 0
  %i.rc = extractvalue { i64, ptr } %i.qx, 1
  %i.rd = trunc nuw i64 %i.rb to i1
  br i1 %i.rd, label %bb.ea, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.rf = load i8, ptr %i.re, align 8, !range !102, !noalias !2408, !noundef !4
  %cond.i.i = icmp eq i8 %i.rf, 3
  br i1 %cond.i.i, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.rh = load i8, ptr %i.rg, align 8, !range !102, !noalias !2408, !noundef !4
  %cond.i.i.i = icmp eq i8 %i.rh, 3
  br i1 %cond.i.i.i, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ri)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb), !noalias !2408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !noalias !2408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz), !noalias !2408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !noalias !2408
  store i64 -9223372036854775807, ptr %i.gy, align 8, !alias.scope !2418, !noalias !2408
  %i.rk = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i64 -9223372036854775807, ptr %i.rk, align 8, !alias.scope !2418, !noalias !2408
  %i.rl = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  store i64 -9223372036854775807, ptr %i.rl, align 8, !alias.scope !2418, !noalias !2408
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.gz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.gy, ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 21)
          to label %bb.cm unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !noalias !2408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !2408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !2408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !2408
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  %i.ro = load ptr, ptr %i.rn, align 8, !alias.scope !2427, !noalias !2408, !noundef !4 ; 2 uses
  %i.rp = icmp eq ptr %i.ro, null
  br i1 %i.rp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rq = atomicrmw sub ptr %i.ro, i64 1 release, align 8, !noalias !2428
  %i.rr = icmp eq i64 %i.rq, 1
  br i1 %i.rr, label %bb.cl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rn) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.du

bb.cm:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !noalias !2408
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ha, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.gz, ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 17)
          to label %bb.cq unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !2408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !2408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !2408
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.ru = load ptr, ptr %i.rt, align 8, !alias.scope !2439, !noalias !2408, !noundef !4 ; 2 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rw = atomicrmw sub ptr %i.ru, i64 1 release, align 8, !noalias !2440
  %i.rx = icmp eq i64 %i.rw, 1
  br i1 %i.rx, label %bb.cp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rt) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.du

bb.cq:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !2408
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 5 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validatebNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueNvB1i_10parse_boolECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.hb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ry, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.rc)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !2408
  br label %.body.i

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !2408
  call void @llvm.experimental.noalias.scope.decl(metadata !2445)
  %i.sa = load i64, ptr %i.hb, align 8, !range !20, !alias.scope !2445, !noalias !2408, !noundef !4
  %.not.i19.i = icmp eq i64 %i.sa, -9223372036854775808
  br i1 %.not.i19.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider8use_fips17use_fips_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !noalias !2448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gx, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.hb, i64 48, i1 false), !noalias !2408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !noalias !2448
  %i.sb = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2449
  %i.sc = icmp ult i64 %i.sb, 4
  br i1 %i.sc, label %bb.cv, label %bb.df

bb.cu:                                            ; preds = %bb.dk, %bb.di, %bb.dh, %bb.dd, %.noexc20.i.i.i, %bb.dc, %bb.da, %bb.cx, %bb.cw
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gx) #22
          to label %.body.i unwind label %bb.dm, !noalias !2445

bb.cv:                                            ; preds = %bb.ct
  %i.se = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !2449 ; 3 uses
  switch i8 %i.se, label %bb.cw [
    i8 0, label %bb.df
    i8 1, label %bb.cx
    i8 2, label %bb.cx
  ], !prof !2452

bb.cw:                                            ; preds = %bb.cv
  %i.sf = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0010___CALLSITE)
          to label %bb.cy unwind label %bb.cu, !noalias !2453 ; 2 uses

bb.cx:                                            ; preds = %bb.cv, %bb.cy, %bb.cv
  %.sroa.06.0.i.i.i = phi i8 [ %i.sf, %bb.cy ], [ %i.se, %bb.cv ], [ %i.se, %bb.cv ]
  %i.sg = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0010___CALLSITE, align 8, !noalias !2449, !nonnull !4, !align !19, !noundef !4
  %i.sh = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sg, i8 noundef %.sroa.06.0.i.i.i)
          to label %bb.cz unwind label %bb.cu, !noalias !2453

bb.cy:                                            ; preds = %bb.cw
  %i.si = icmp eq i8 %i.sf, 0
  br i1 %i.si, label %bb.df, label %bb.cx

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.sh, label %bb.da, label %bb.df

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !noalias !2449
  %i.sj = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0010___CALLSITE, align 8, !noalias !2449, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !noalias !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu), !noalias !2449
  store ptr @24, ptr %i.gu, align 8, !noalias !2449
  %i.sl = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.sl, align 8, !noalias !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt), !noalias !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs), !noalias !2449
  store ptr %i.gx, ptr %i.gs, align 8, !noalias !2449
  store ptr %i.gs, ptr %i.gt, align 8, !noalias !2449
  store ptr %i.gu, ptr %i.gv, align 8, !noalias !2449
  %i.sm = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr @7, ptr %i.sm, align 8, !noalias !2449
  %i.sn = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store ptr %i.gt, ptr %i.sn, align 8, !noalias !2449
  %i.so = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store ptr @15, ptr %i.so, align 8, !noalias !2449
  store i64 1, ptr %i.gw, align 8, !noalias !2449
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr %i.gv, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2449
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2449
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store ptr %i.sk, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !noalias !2449
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gw)
          to label %.noexc.i.i.i unwind label %bb.cu, !noalias !2445

.noexc.i.i.i:                                     ; preds = %bb.da
  %i.sp = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2454
  %i.sq = icmp eq i8 %i.sp, 0
  br i1 %i.sq, label %bb.db, label %bb.de

bb.db:                                            ; preds = %.noexc.i.i.i
  %i.sr = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2454 ; 2 uses
  %i.ss = icmp ult i64 %i.sr, 6
  call void @llvm.assume(i1 %i.ss)
  %i.st = icmp samesign ugt i64 %i.sr, 1
  br i1 %i.st, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.su = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0010___CALLSITE, align 8, !noalias !2454, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.sw = load ptr, ptr %i.sv, align 8, !noalias !2445, !nonnull !4, !noundef !4
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %i.sy = load i64, ptr %i.sx, align 8, !noalias !2445, !noundef !4
  store i64 2, ptr %i.gl, align 8, !noalias !2454
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.sw, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !2454
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store i64 %i.sy, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2454
  %i.sz = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i unwind label %bb.cu, !noalias !2445 ; 2 uses

.noexc20.i.i.i:                                   ; preds = %bb.dc
  %i.ta = extractvalue { ptr, ptr } %i.sz, 0      ; 2 uses
  %i.tb = extractvalue { ptr, ptr } %i.sz, 1      ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load ptr, ptr %i.tc, align 8, !invariant.load !4, !noalias !2445, !nonnull !4
  %i.te = invoke noundef zeroext i1 %i.td(ptr noundef %i.ta, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #25
          to label %.noexc21.i.i.i unwind label %bb.cu, !noalias !2445, !inline_history !2457

.noexc21.i.i.i:                                   ; preds = %.noexc20.i.i.i
  br i1 %i.te, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.noexc21.i.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.su, ptr noundef nonnull %i.ta, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gw)
          to label %bb.de unwind label %bb.cu, !noalias !2445

bb.de:                                            ; preds = %bb.dd, %.noexc21.i.i.i, %bb.db, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !noalias !2449
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.df:                                            ; preds = %bb.cz, %bb.cy, %bb.cv, %bb.ct
  %i.tf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2449
  %i.tg = icmp eq i8 %i.tf, 0
  br i1 %i.tg, label %bb.dg, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dg:                                            ; preds = %bb.df
  %i.th = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2449 ; 2 uses
  %i.ti = icmp ult i64 %i.th, 6
  call void @llvm.assume(i1 %i.ti)
  %i.tj = icmp samesign ugt i64 %i.th, 1
  br i1 %i.tj, label %bb.dh, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.tk = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0010___CALLSITE, align 8, !noalias !2449, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8, !noalias !2453, !nonnull !4, !noundef !4
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.to = load i64, ptr %i.tn, align 8, !noalias !2453, !noundef !4
  store i64 2, ptr %i.gr, align 8, !noalias !2449
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.tm, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !2449
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i64 %i.to, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !2449
  %i.tp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.di unwind label %bb.cu, !noalias !2453 ; 2 uses

bb.di:                                            ; preds = %bb.dh
  %i.tq = extractvalue { ptr, ptr } %i.tp, 0      ; 2 uses
  %i.tr = extractvalue { ptr, ptr } %i.tp, 1      ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tt = load ptr, ptr %i.ts, align 8, !invariant.load !4, !noalias !2453, !nonnull !4
  %i.tu = invoke noundef zeroext i1 %i.tt(ptr noundef %i.tq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gr)
          to label %bb.dj unwind label %bb.cu, !noalias !2453

bb.dj:                                            ; preds = %bb.di
  br i1 %i.tu, label %bb.dk, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !noalias !2449
  %i.tv = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider0010___CALLSITE, align 8, !noalias !2449, !nonnull !4, !align !19, !noundef !4
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !noalias !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go), !noalias !2449
  store ptr @24, ptr %i.go, align 8, !noalias !2449
  %i.tx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.tx, align 8, !noalias !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn), !noalias !2449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !noalias !2449
  store ptr %i.gx, ptr %i.gm, align 8, !noalias !2449
  store ptr %i.gm, ptr %i.gn, align 8, !noalias !2449
  store ptr %i.go, ptr %i.gp, align 8, !noalias !2449
  %i.ty = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr @7, ptr %i.ty, align 8, !noalias !2449
  %i.tz = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %i.gn, ptr %i.tz, align 8, !noalias !2449
  %i.ua = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store ptr @15, ptr %i.ua, align 8, !noalias !2449
  store i64 1, ptr %i.gq, align 8, !noalias !2449
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gp, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !2449
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8, !noalias !2449
  %i.ub = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store ptr %i.tw, ptr %i.ub, align 8, !noalias !2449
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.tk, ptr noundef nonnull %i.tq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gq)
          to label %bb.dl unwind label %bb.cu, !noalias !2445

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !noalias !2449
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dm:                                            ; preds = %bb.cu
  %i.uc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2445
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.dl, %bb.dj, %bb.dg, %bb.df, %bb.de
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gx)
          to label %bb.do unwind label %bb.dn

.body.i:                                          ; preds = %bb.dn, %bb.cu, %bb.cr
  %.pn10.i = phi { ptr, i32 } [ %i.rz, %bb.cr ], [ %i.uf, %bb.dn ], [ %i.sd, %bb.cu ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !2408
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  %i.ud = load ptr, ptr %i.ry, align 8, !alias.scope !2464, !noalias !2408, !noundef !4 ; 2 uses
  %i.ue = icmp eq ptr %i.ud, null
  br i1 %i.ue, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.ds

bb.dn:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider8use_fips17use_fips_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.uf = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.vi = phi ptr [ %i.uz, %.thread1279 ], [ %i.vf, %bb.ee ] ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !noalias !2487, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.vk = getelementptr i8, ptr %i.vj, i64 136
  %.val.i305 = load ptr, ptr %i.vk, align 8, !noundef !4 ; 3 uses
  %.not.i.i306 = icmp eq ptr %.val.i305, null
  br i1 %.not.i.i306, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vl = atomicrmw add ptr %.val.i305, i64 1 monotonic, align 8
  %i.vm = icmp slt i64 %i.vl, 0
  br i1 %i.vm, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282: ; preds = %bb.gh, %bb.gg, %bb.ge, %bb.gd, %.body.i286, %bb.fa, %bb.ez, %bb.ey, %bb.ew, %bb.ev, %bb.eu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i280, %bb.ei
  %.pn14.i283 = phi { ptr, i32 } [ %i.vn, %bb.ei ], [ %i.wr, %bb.ez ], [ %i.wl, %bb.ev ], [ %.pn10.i287, %bb.gd ], [ %i.wl, %bb.ew ], [ %i.wl, %bb.eu ], [ %i.wr, %bb.fa ], [ %i.wr, %bb.ey ], [ %.pn10.i287, %bb.ge ], [ %.pn10.i287, %.body.i286 ], [ %.pn6.i281, %bb.gh ], [ %.pn6.i281, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i280 ], [ %.pn6.i281, %bb.gg ]
  store i8 2, ptr %i.vt, align 8, !noalias !2487
  br label %.body309

bb.ei:                                            ; preds = %bb.gc
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282

bb.ej:                                            ; preds = %bb.eg, %bb.ef
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i305, ptr %i.vo, align 8, !noalias !2487
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.vj, ptr %i.vp, align 8, !noalias !2487
  %.sroa.8.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i307, align 8, !noalias !2487
  br label %bb.em

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i280: ; preds = %bb.gj, %bb.gi, %bb.es, %bb.en
  %.pn6.i281 = phi { ptr, i32 } [ %i.wi, %bb.es ], [ %i.vx, %bb.gi ], [ %i.vx, %bb.gj ], [ %i.vx, %bb.en ] ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  %i.vr = load ptr, ptr %i.vq, align 8, !alias.scope !2496, !noalias !2487, !noundef !4 ; 2 uses
  %i.vs = icmp eq ptr %i.vr, null
  br i1 %i.vs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282, label %bb.gg

bb.ek:                                            ; preds = %bb.ee
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #26
          to label %.noexc311 unwind label %bb.gk

.noexc311:                                        ; preds = %bb.ek
  unreachable

bb.el:                                            ; preds = %bb.ee
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #26
          to label %.noexc312 unwind label %bb.gk

.noexc312:                                        ; preds = %bb.el
  unreachable

bb.em:                                            ; preds = %bb.ej, %bb.ee
  %i.vt = phi ptr [ %i.vh, %bb.ej ], [ %i.vg, %bb.ee ] ; 3 uses
  %i.vu = phi ptr [ %i.vi, %bb.ej ], [ %i.vf, %bb.ee ]
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.vw = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.vv, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eo unwind label %bb.en     ; 2 uses

bb.en:                                            ; preds = %bb.em
  %i.vx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.vz = load i8, ptr %i.vy, align 8, !range !102, !noalias !2487, !noundef !4
  %cond.i27.i279 = icmp eq i8 %i.vz, 3
  br i1 %cond.i27.i279, label %bb.gi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i280

bb.eo:                                            ; preds = %bb.em
  %i.wa = extractvalue { i64, ptr } %i.vw, 0
  %i.wb = extractvalue { i64, ptr } %i.vw, 1
  %i.wc = trunc nuw i64 %i.wa to i1
  br i1 %i.wc, label %bb.gl, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.we = load i8, ptr %i.wd, align 8, !range !102, !noalias !2487, !noundef !4
  %cond.i.i285 = icmp eq i8 %i.we, 3
  br i1 %cond.i.i285, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.wg = load i8, ptr %i.wf, align 8, !range !102, !noalias !2487, !noundef !4
  %cond.i.i.i304 = icmp eq i8 %i.wg, 3
  br i1 %cond.i.i.i304, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.wh)
          to label %bb.et unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i280

bb.et:                                            ; preds = %bb.er, %bb.eq, %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !noalias !2487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj), !noalias !2487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi), !noalias !2487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !noalias !2487
  store i64 -9223372036854775807, ptr %i.gh, align 8, !alias.scope !2497, !noalias !2487
  %i.wj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i64 -9223372036854775807, ptr %i.wj, align 8, !alias.scope !2497, !noalias !2487
  %i.wk = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  store i64 -9223372036854775807, ptr %i.wk, align 8, !alias.scope !2497, !noalias !2487
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.gi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.gh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 26)
          to label %bb.ex unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.wl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !noalias !2487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !noalias !2487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !noalias !2487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !noalias !2487
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  %i.wn = load ptr, ptr %i.wm, align 8, !alias.scope !2506, !noalias !2487, !noundef !4 ; 2 uses
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.wp = atomicrmw sub ptr %i.wn, i64 1 release, align 8, !noalias !2507
  %i.wq = icmp eq i64 %i.wp, 1
  br i1 %i.wq, label %bb.ew, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282

bb.ew:                                            ; preds = %bb.ev
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.wm) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282 unwind label %bb.gf

bb.ex:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !noalias !2487
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.gj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.gi, ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 22)
          to label %bb.fb unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.wr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !noalias !2487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !noalias !2487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !noalias !2487
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  %i.wt = load ptr, ptr %i.ws, align 8, !alias.scope !2518, !noalias !2487, !noundef !4 ; 2 uses
  %i.wu = icmp eq ptr %i.wt, null
  br i1 %i.wu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.wv = atomicrmw sub ptr %i.wt, i64 1 release, align 8, !noalias !2519
  %i.ww = icmp eq i64 %i.wv, 1
  br i1 %i.ww, label %bb.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282

bb.fa:                                            ; preds = %bb.ez
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ws) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282 unwind label %bb.gf

bb.fb:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !noalias !2487
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 5 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validatebNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueNvB1i_10parse_boolECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.gk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.gj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.wx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.wb)
          to label %bb.fd unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.wy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !noalias !2487
  br label %.body.i286

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !noalias !2487
  call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  %i.wz = load i64, ptr %i.gk, align 8, !range !20, !alias.scope !2524, !noalias !2487, !noundef !4
  %.not.i19.i288 = icmp eq i64 %i.wz, -9223372036854775808
  br i1 %.not.i19.i288, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider14use_dual_stack23use_dual_stack_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !noalias !2527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gg, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.gk, i64 48, i1 false), !noalias !2487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !noalias !2527
  %i.xa = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2528
  %i.xb = icmp ult i64 %i.xa, 4
  br i1 %i.xb, label %bb.fg, label %bb.fq

bb.ff:                                            ; preds = %bb.fv, %bb.ft, %bb.fs, %bb.fo, %.noexc20.i.i.i302, %bb.fn, %bb.fl, %bb.fi, %bb.fh
  %i.xc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gg) #22
          to label %.body.i286 unwind label %bb.fx, !noalias !2524

bb.fg:                                            ; preds = %bb.fe
  %i.xd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !2528 ; 3 uses
  switch i8 %i.xd, label %bb.fh [
    i8 0, label %bb.fq
    i8 1, label %bb.fi
    i8 2, label %bb.fi
  ], !prof !2452

bb.fh:                                            ; preds = %bb.fg
  %i.xe = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider0010___CALLSITE)
          to label %bb.fj unwind label %bb.ff, !noalias !2531 ; 2 uses

bb.fi:                                            ; preds = %bb.fg, %bb.fj, %bb.fg
  %.sroa.06.0.i.i.i295 = phi i8 [ %i.xe, %bb.fj ], [ %i.xd, %bb.fg ], [ %i.xd, %bb.fg ]
  %i.xf = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider0010___CALLSITE, align 8, !noalias !2528, !nonnull !4, !align !19, !noundef !4
  %i.xg = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xf, i8 noundef %.sroa.06.0.i.i.i295)
          to label %bb.fk unwind label %bb.ff, !noalias !2531

bb.fj:                                            ; preds = %bb.fh
  %i.xh = icmp eq i8 %i.xe, 0
  br i1 %i.xh, label %bb.fq, label %bb.fi

bb.fk:                                            ; preds = %bb.fi
  br i1 %i.xg, label %bb.fl, label %bb.fq

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !noalias !2528
  %i.xi = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider0010___CALLSITE, align 8, !noalias !2528, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !noalias !2528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !noalias !2528
  store ptr @14, ptr %i.gd, align 8, !noalias !2528
  %i.xk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr inttoptr (i64 73 to ptr), ptr %i.xk, align 8, !noalias !2528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !noalias !2528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !noalias !2528
  store ptr %i.gg, ptr %i.gb, align 8, !noalias !2528
  store ptr %i.gb, ptr %i.gc, align 8, !noalias !2528
  store ptr %i.gd, ptr %i.ge, align 8, !noalias !2528
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr @7, ptr %i.xl, align 8, !noalias !2528
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.gc, ptr %i.xm, align 8, !noalias !2528
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store ptr @15, ptr %i.xn, align 8, !noalias !2528
  store i64 1, ptr %i.gf, align 8, !noalias !2528
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i296 = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.ge, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i296, align 8, !noalias !2528
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i297 = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i297, align 8, !noalias !2528
  %.sroa.4.0..sroa_idx.i.i.i298 = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %i.xj, ptr %.sroa.4.0..sroa_idx.i.i.i298, align 8, !noalias !2528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !2528
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gf)
          to label %.noexc.i.i.i299 unwind label %bb.ff, !noalias !2524

.noexc.i.i.i299:                                  ; preds = %bb.fl
  %i.xo = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2532
  %i.xp = icmp eq i8 %i.xo, 0
  br i1 %i.xp, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %.noexc.i.i.i299
  %i.xq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2532 ; 2 uses
  %i.xr = icmp ult i64 %i.xq, 6
  call void @llvm.assume(i1 %i.xr)
  %i.xs = icmp samesign ugt i64 %i.xq, 1
  br i1 %i.xs, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.xt = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider0010___CALLSITE, align 8, !noalias !2532, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.xv = load ptr, ptr %i.xu, align 8, !noalias !2524, !nonnull !4, !noundef !4
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 40
  %i.xx = load i64, ptr %i.xw, align 8, !noalias !2524, !noundef !4
  store i64 2, ptr %i.fu, align 8, !noalias !2532
  %.sroa.3.0..sroa_idx.i.i.i.i300 = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.xv, ptr %.sroa.3.0..sroa_idx.i.i.i.i300, align 8, !noalias !2532
  %.sroa.5.0..sroa_idx.i.i.i.i301 = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i64 %i.xx, ptr %.sroa.5.0..sroa_idx.i.i.i.i301, align 8, !noalias !2532
  %i.xy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i302 unwind label %bb.ff, !noalias !2524 ; 2 uses

.noexc20.i.i.i302:                                ; preds = %bb.fn
  %i.xz = extractvalue { ptr, ptr } %i.xy, 0      ; 2 uses
  %i.ya = extractvalue { ptr, ptr } %i.xy, 1      ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8, !invariant.load !4, !noalias !2524, !nonnull !4
  %i.yd = invoke noundef zeroext i1 %i.yc(ptr noundef %i.xz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu) #25
          to label %.noexc21.i.i.i303 unwind label %bb.ff, !noalias !2524, !inline_history !2535

.noexc21.i.i.i303:                                ; preds = %.noexc20.i.i.i302
  br i1 %i.yd, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %.noexc21.i.i.i303
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xt, ptr noundef nonnull %i.xz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ya, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gf)
          to label %bb.fp unwind label %bb.ff, !noalias !2524

bb.fp:                                            ; preds = %bb.fo, %.noexc21.i.i.i303, %bb.fm, %.noexc.i.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !noalias !2528
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.fq:                                            ; preds = %bb.fk, %bb.fj, %bb.fg, %bb.fe
  %i.ye = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2528
  %i.yf = icmp eq i8 %i.ye, 0
  br i1 %i.yf, label %bb.fr, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.fr:                                            ; preds = %bb.fq
  %i.yg = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2528 ; 2 uses
  %i.yh = icmp ult i64 %i.yg, 6
  call void @llvm.assume(i1 %i.yh)
  %i.yi = icmp samesign ugt i64 %i.yg, 1
  br i1 %i.yi, label %bb.fs, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.yj = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider0010___CALLSITE, align 8, !noalias !2528, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32
  %i.yl = load ptr, ptr %i.yk, align 8, !noalias !2531, !nonnull !4, !noundef !4
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 40
  %i.yn = load i64, ptr %i.ym, align 8, !noalias !2531, !noundef !4
  store i64 2, ptr %i.ga, align 8, !noalias !2528
  %.sroa.3.0..sroa_idx.i.i.i291 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.yl, ptr %.sroa.3.0..sroa_idx.i.i.i291, align 8, !noalias !2528
  %.sroa.513.0..sroa_idx.i.i.i292 = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i64 %i.yn, ptr %.sroa.513.0..sroa_idx.i.i.i292, align 8, !noalias !2528
  %i.yo = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ft unwind label %bb.ff, !noalias !2531 ; 2 uses

bb.ft:                                            ; preds = %bb.fs
  %i.yp = extractvalue { ptr, ptr } %i.yo, 0      ; 2 uses
  %i.yq = extractvalue { ptr, ptr } %i.yo, 1      ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.ys = load ptr, ptr %i.yr, align 8, !invariant.load !4, !noalias !2531, !nonnull !4
  %i.yt = invoke noundef zeroext i1 %i.ys(ptr noundef %i.yp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ga)
          to label %bb.fu unwind label %bb.ff, !noalias !2531

bb.fu:                                            ; preds = %bb.ft
  br i1 %i.yt, label %bb.fv, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !2528
  %i.yu = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider0010___CALLSITE, align 8, !noalias !2528, !nonnull !4, !align !19, !noundef !4
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !2528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !2528
  store ptr @14, ptr %i.fx, align 8, !noalias !2528
  %i.yw = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr inttoptr (i64 73 to ptr), ptr %i.yw, align 8, !noalias !2528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !noalias !2528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !2528
  store ptr %i.gg, ptr %i.fv, align 8, !noalias !2528
  store ptr %i.fv, ptr %i.fw, align 8, !noalias !2528
  store ptr %i.fx, ptr %i.fy, align 8, !noalias !2528
  %i.yx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr @7, ptr %i.yx, align 8, !noalias !2528
  %i.yy = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %i.fw, ptr %i.yy, align 8, !noalias !2528
  %i.yz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store ptr @15, ptr %i.yz, align 8, !noalias !2528
  store i64 1, ptr %i.fz, align 8, !noalias !2528
  %.sroa.415.0..sroa_idx.i.i.i293 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.fy, ptr %.sroa.415.0..sroa_idx.i.i.i293, align 8, !noalias !2528
  %.sroa.516.0..sroa_idx.i.i.i294 = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i294, align 8, !noalias !2528
  %i.za = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store ptr %i.yv, ptr %i.za, align 8, !noalias !2528
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.yj, ptr noundef nonnull %i.yp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fz)
          to label %bb.fw unwind label %bb.ff, !noalias !2524

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !2528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !2528
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.fx:                                            ; preds = %bb.ff
  %i.zb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2524
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.fw, %bb.fu, %bb.fr, %bb.fq, %bb.fp
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.gg)
          to label %bb.fz unwind label %bb.fy

.body.i286:                                       ; preds = %bb.fy, %bb.ff, %bb.fc
  %.pn10.i287 = phi { ptr, i32 } [ %i.wy, %bb.fc ], [ %i.ze, %bb.fy ], [ %i.xc, %bb.ff ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !noalias !2487
  call void @llvm.experimental.noalias.scope.decl(metadata !2536)
  call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  %i.zc = load ptr, ptr %i.wx, align 8, !alias.scope !2542, !noalias !2487, !noundef !4 ; 2 uses
  %i.zd = icmp eq ptr %i.zc, null
  br i1 %i.zd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i282, label %bb.gd

bb.fy:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider14use_dual_stack23use_dual_stack_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ze = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  switch i8 %.pre1147, label %default.unreachable1278 [
    i8 0, label %bb.lf
    i8 1, label %bb.lj
    i8 2, label %bb.lk
    i8 3, label %bb.ll
    i8 4, label %bb.nd
  ]

bb.lf:                                            ; preds = %.thread1281, %bb.le
  %i.ahd = phi ptr [ %i.agy, %.thread1281 ], [ %i.ahc, %bb.le ]
  %i.ahe = phi ptr [ %i.agx, %.thread1281 ], [ %i.ahb, %bb.le ] ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %1, i64 2993
  store i8 0, ptr %i.ahf, align 1, !noalias !2641
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 2792 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ahg, ptr noundef nonnull align 8 dereferenceable(192) %i.ahe, i64 192, i1 false), !noalias !2641
  %i.ahh = getelementptr i8, ptr %1, i64 2928
  %.val.i374 = load ptr, ptr %i.ahh, align 8, !noalias !2641, !noundef !4 ; 3 uses
  %.not.i.i375 = icmp eq ptr %.val.i374, null
  br i1 %.not.i.i375, label %bb.li, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.ahi = atomicrmw add ptr %.val.i374, i64 1 monotonic, align 8, !noalias !2645
  %i.ahj = icmp slt i64 %i.ahi, 0
  br i1 %i.ahj, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.trap()
  unreachable

bb.li:                                            ; preds = %bb.lg, %bb.lf
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 2984
  store ptr %.val.i374, ptr %i.ahk, align 8, !noalias !2641
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 3000
  store ptr %i.ahg, ptr %i.ahl, align 8, !noalias !2641
  %.sroa.8.0..sroa_idx.i376 = getelementptr inbounds nuw i8, ptr %1, i64 3472
  store i8 0, ptr %.sroa.8.0..sroa_idx.i376, align 8, !noalias !2641
  br label %bb.ll

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i352: ; preds = %bb.ot, %bb.nc, %bb.nb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i
  %i.ahm = phi ptr [ %i.aiq, %bb.ot ], [ %i.ale, %bb.nb ], [ %i.ale, %bb.nc ], [ %i.ale, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i ]
  %i.ahn = phi ptr [ %i.air, %bb.ot ], [ %i.alf, %bb.nb ], [ %i.alf, %bb.nc ], [ %i.alf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i ]
  %.pn20.i = phi { ptr, i32 } [ %i.aoe, %bb.ot ], [ %.pn17.pn.i, %bb.nb ], [ %.pn17.pn.i, %bb.nc ], [ %.pn17.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i ]
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 2792
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.aho)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_name7BuilderECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.na, !noalias !2645

bb.lj:                                            ; preds = %bb.le
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26
          to label %.noexc377 unwind label %bb.ow

.noexc377:                                        ; preds = %bb.lj
  unreachable

bb.lk:                                            ; preds = %bb.le
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26
          to label %.noexc378 unwind label %bb.ow

.noexc378:                                        ; preds = %bb.lk
  unreachable

bb.ll:                                            ; preds = %bb.li, %bb.le
  %i.ahp = phi ptr [ %i.ahd, %bb.li ], [ %i.ahc, %bb.le ] ; 10 uses
  %i.ahq = phi ptr [ %i.ahe, %bb.li ], [ %i.ahb, %bb.le ] ; 9 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 3000 ; 3 uses
  %i.ahs = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ahr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ln unwind label %bb.lm, !noalias !2645 ; 2 uses

bb.lm:                                            ; preds = %bb.ll
  %i.aht = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %1, i64 3472
  %i.ahv = load i8, ptr %i.ahu, align 8, !range !102, !noalias !2641, !noundef !4
  %cond.i25.i = icmp eq i8 %i.ahv, 3
  br i1 %cond.i25.i, label %bb.my, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i

bb.ln:                                            ; preds = %bb.ll
  %i.ahw = extractvalue { i64, ptr } %i.ahs, 0
  %i.ahx = extractvalue { i64, ptr } %i.ahs, 1
  %i.ahy = trunc nuw i64 %i.ahw to i1
  br i1 %i.ahy, label %bb.ox, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 3472
  %i.aia = load i8, ptr %i.ahz, align 8, !range !102, !noalias !2641, !noundef !4
  %cond.i.i371 = icmp eq i8 %i.aia, 3
  br i1 %cond.i.i371, label %bb.lp, label %bb.ls

bb.lp:                                            ; preds = %bb.lo
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 3464
  %i.aic = load i8, ptr %i.aib, align 8, !range !102, !noalias !2641, !noundef !4
  %cond.i.i.i373 = icmp eq i8 %i.aic, 3
  br i1 %cond.i.i.i373, label %bb.lq, label %bb.ls

bb.lq:                                            ; preds = %bb.lp
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 3016
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aid)
          to label %bb.ls unwind label %bb.lr, !noalias !2645

bb.lr:                                            ; preds = %bb.lq
  %i.aie = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i

bb.ls:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !2641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !2641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !noalias !2641
  store i64 -9223372036854775807, ptr %i.fi, align 8, !alias.scope !2646, !noalias !2641
  %i.aif = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store i64 -9223372036854775807, ptr %i.aif, align 8, !alias.scope !2646, !noalias !2641
  %i.aig = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  store i64 -9223372036854775807, ptr %i.aig, align 8, !alias.scope !2646, !noalias !2641
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.fj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fi, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 17)
          to label %bb.lu unwind label %bb.lt, !noalias !2645

bb.lt:                                            ; preds = %bb.ls
  %i.aih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !noalias !2641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !2641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !2641
  br label %bb.mx

bb.lu:                                            ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !noalias !2641
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.fk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 13)
          to label %bb.lw unwind label %bb.lv, !noalias !2645

bb.lv:                                            ; preds = %bb.lu
  %i.aii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !2641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !2641
  br label %bb.mx

bb.lw:                                            ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !2641
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 2984
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 3504 ; 2 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameNtB1h_14InvalidAppNameNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB2r_7Builder8app_name00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aik, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.fk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aij, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.ahx)
          to label %bb.ly unwind label %bb.lx, !noalias !2645

bb.lx:                                            ; preds = %bb.lw
  %i.ail = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !2641
  br label %bb.mx

bb.ly:                                            ; preds = %bb.lw
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 2993 ; 2 uses
  store i8 1, ptr %i.aim, align 1, !noalias !2641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !2641
  %i.ain = load i64, ptr %i.aik, align 8, !range !3, !noalias !2641, !noundef !4 ; 2 uses
  %i.aio = trunc nuw i64 %i.ain to i1
  %.sroa.3.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 3512
  %.sroa.3.sroa.0.0.copyload.pre.i = load i64, ptr %.sroa.3.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !2641 ; 2 uses
  %.not.i372 = icmp ne i64 %.sroa.3.sroa.0.0.copyload.pre.i, -9223372036854775807
  %or.cond.not.i = select i1 %i.aio, i1 true, i1 %.not.i372
  br i1 %or.cond.not.i, label %._crit_edge77.i, label %.thread87.i

._crit_edge77.i:                                  ; preds = %bb.ly
  store i8 0, ptr %i.aim, align 1, !noalias !2641
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !2641
  br label %bb.lz

.thread87.i:                                      ; preds = %bb.ly
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 2792 ; 2 uses
  store ptr %i.aip, ptr %i.ahr, align 8, !noalias !2641
  %.sroa.857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3496 ; 2 uses
  store i8 0, ptr %.sroa.857.0..sroa_idx.i, align 8, !noalias !2641
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.861.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !2641
  br label %bb.ne

bb.lz:                                            ; preds = %bb.ol, %._crit_edge77.i
  %i.aiq = phi ptr [ %i.ahp, %._crit_edge77.i ], [ %i.alz, %bb.ol ] ; 7 uses
  %i.air = phi ptr [ %i.ahq, %._crit_edge77.i ], [ %i.ama, %bb.ol ] ; 7 uses
  %.sroa.063.0.i = phi i64 [ %i.ain, %._crit_edge77.i ], [ %.sroa.059.0.copyload60.i, %bb.ol ]
  %.sroa.3.sroa.0.0.i = phi i64 [ %.sroa.3.sroa.0.0.copyload.pre.i, %._crit_edge77.i ], [ %.sroa.861.sroa.0.0.copyload.i, %bb.ol ] ; 3 uses
  %i.ais = trunc nuw i64 %.sroa.063.0.i to i1
  br i1 %i.ais, label %bb.ma, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtB16_14InvalidAppNameEE7map_erruNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB3q_7Builder8app_name0s_0ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh), !noalias !2649
  store i64 %.sroa.3.sroa.0.0.i, ptr %i.fh, align 8, !noalias !2653
  %.sroa.3.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.4.i, i64 16, i1 false), !noalias !2641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb), !noalias !2649
  %i.ait = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2654
  %i.aiu = icmp ult i64 %i.ait, 4
  br i1 %i.aiu, label %bb.mc, label %bb.mp

bb.mb:                                            ; preds = %bb.mu, %bb.ms, %bb.mr, %bb.mk, %.noexc20.i.i.i364, %bb.mj, %bb.mh, %bb.me, %bb.md
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types8app_name14InvalidAppNameEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fh) #22
          to label %.body.i351 unwind label %bb.mw, !noalias !2657

bb.mc:                                            ; preds = %bb.ma
  %i.aiw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB8_7Builder8app_name0s_010___CALLSITE, i64 16) monotonic, align 8, !noalias !2654 ; 3 uses
  switch i8 %i.aiw, label %bb.md [
    i8 0, label %bb.mp
    i8 1, label %bb.me
    i8 2, label %bb.me
  ], !prof !2452

bb.md:                                            ; preds = %bb.mc
  %i.aix = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB8_7Builder8app_name0s_010___CALLSITE)
          to label %bb.mf unwind label %bb.mb, !noalias !2658 ; 2 uses

bb.me:                                            ; preds = %bb.mc, %bb.mf, %bb.mc
  %.sroa.06.0.i.i.i357 = phi i8 [ %i.aix, %bb.mf ], [ %i.aiw, %bb.mc ], [ %i.aiw, %bb.mc ]
  %i.aiy = load ptr, ptr @_RNvNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB8_7Builder8app_name0s_010___CALLSITE, align 8, !noalias !2654, !nonnull !4, !align !19, !noundef !4
  %i.aiz = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aiy, i8 noundef %.sroa.06.0.i.i.i357)
          to label %bb.mg unwind label %bb.mb, !noalias !2658

bb.mf:                                            ; preds = %bb.md
  %i.aja = icmp eq i8 %i.aix, 0
  br i1 %i.aja, label %bb.mp, label %bb.me

bb.mg:                                            ; preds = %bb.me
  br i1 %i.aiz, label %bb.mh, label %bb.mp

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg), !noalias !2654
  %i.ajb = load ptr, ptr @_RNvNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB8_7Builder8app_name0s_010___CALLSITE, align 8, !noalias !2654, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff), !noalias !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe), !noalias !2654
  store ptr @9, ptr %i.fe, align 8, !noalias !2654
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.ajd, align 8, !noalias !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !noalias !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !noalias !2654
  store ptr %i.fh, ptr %i.fc, align 8, !noalias !2654
  store ptr %i.fc, ptr %i.fd, align 8, !noalias !2654
  store ptr %i.fe, ptr %i.ff, align 8, !noalias !2654
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr @7, ptr %i.aje, align 8, !noalias !2654
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %i.fd, ptr %i.ajf, align 8, !noalias !2654
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr @10, ptr %i.ajg, align 8, !noalias !2654
  store i64 1, ptr %i.fg, align 8, !noalias !2654
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i358 = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.ff, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i358, align 8, !noalias !2654
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i359 = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i359, align 8, !noalias !2654
  %.sroa.4.0..sroa_idx.i.i.i360 = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store ptr %i.ajc, ptr %.sroa.4.0..sroa_idx.i.i.i360, align 8, !noalias !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !2654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ajb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fg)
          to label %.noexc.i.i.i361 unwind label %bb.mb, !noalias !2657

.noexc.i.i.i361:                                  ; preds = %bb.mh
  %i.ajh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2659
  %i.aji = icmp eq i8 %i.ajh, 0
  br i1 %i.aji, label %bb.mi, label %bb.ml

bb.mi:                                            ; preds = %.noexc.i.i.i361
  %i.ajj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2659 ; 2 uses
  %i.ajk = icmp ult i64 %i.ajj, 6
  call void @llvm.assume(i1 %i.ajk)
  %i.ajl = icmp samesign ugt i64 %i.ajj, 1
  br i1 %i.ajl, label %bb.mj, label %bb.ml

bb.mj:                                            ; preds = %bb.mi
  %i.ajm = load ptr, ptr @_RNvNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB8_7Builder8app_name0s_010___CALLSITE, align 8, !noalias !2659, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  %i.ajo = load ptr, ptr %i.ajn, align 8, !noalias !2657, !nonnull !4, !noundef !4
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40
  %i.ajq = load i64, ptr %i.ajp, align 8, !noalias !2657, !noundef !4
  store i64 2, ptr %i.ev, align 8, !noalias !2659
  %.sroa.3.0..sroa_idx.i.i.i.i362 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.ajo, ptr %.sroa.3.0..sroa_idx.i.i.i.i362, align 8, !noalias !2659
  %.sroa.5.0..sroa_idx.i.i.i.i363 = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 %i.ajq, ptr %.sroa.5.0..sroa_idx.i.i.i.i363, align 8, !noalias !2659
  %i.ajr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i364 unwind label %bb.mb, !noalias !2657 ; 2 uses

.noexc20.i.i.i364:                                ; preds = %bb.mj
  %i.ajs = extractvalue { ptr, ptr } %i.ajr, 0    ; 2 uses
  %i.ajt = extractvalue { ptr, ptr } %i.ajr, 1    ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 24
  %i.ajv = load ptr, ptr %i.aju, align 8, !invariant.load !4, !noalias !2657, !nonnull !4
  %i.ajw = invoke noundef zeroext i1 %i.ajv(ptr noundef %i.ajs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ev) #25
          to label %.noexc21.i.i.i365 unwind label %bb.mb, !noalias !2657, !inline_history !2662

.noexc21.i.i.i365:                                ; preds = %.noexc20.i.i.i364
  br i1 %i.ajw, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %.noexc21.i.i.i365
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ajm, ptr noundef nonnull %i.ajs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ajt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fg)
          to label %bb.ml unwind label %bb.mb, !noalias !2657

bb.ml:                                            ; preds = %bb.mk, %.noexc21.i.i.i365, %bb.mi, %.noexc.i.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !noalias !2654
  br label %bb.mm

bb.mm:                                            ; preds = %bb.mv, %bb.mt, %bb.mq, %bb.mp, %bb.ml
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fh)
          to label %_RNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB6_7Builder8app_name0s_0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.mn, !noalias !2657

bb.mn:                                            ; preds = %bb.mm
  %i.ajx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fh)
          to label %.body.i351 unwind label %bb.mo, !noalias !2657

bb.mo:                                            ; preds = %bb.mn
  %i.ajy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2657
  unreachable

bb.mp:                                            ; preds = %bb.mg, %bb.mf, %bb.mc, %bb.ma
  %i.ajz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2654
  %i.aka = icmp eq i8 %i.ajz, 0
  br i1 %i.aka, label %bb.mq, label %bb.mm

bb.mq:                                            ; preds = %bb.mp
  %i.akb = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2654 ; 2 uses
  %i.akc = icmp ult i64 %i.akb, 6
  call void @llvm.assume(i1 %i.akc)
  %i.akd = icmp samesign ugt i64 %i.akb, 1
  br i1 %i.akd, label %bb.mr, label %bb.mm

bb.mr:                                            ; preds = %bb.mq
  %i.ake = load ptr, ptr @_RNvNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB8_7Builder8app_name0s_010___CALLSITE, align 8, !noalias !2654, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 32
  %i.akg = load ptr, ptr %i.akf, align 8, !noalias !2658, !nonnull !4, !noundef !4
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ake, i64 40
  %i.aki = load i64, ptr %i.akh, align 8, !noalias !2658, !noundef !4
  store i64 2, ptr %i.fb, align 8, !noalias !2654
  %.sroa.3.0..sroa_idx.i.i.i353 = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.akg, ptr %.sroa.3.0..sroa_idx.i.i.i353, align 8, !noalias !2654
  %.sroa.513.0..sroa_idx.i.i.i354 = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %i.aki, ptr %.sroa.513.0..sroa_idx.i.i.i354, align 8, !noalias !2654
  %i.akj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ms unwind label %bb.mb, !noalias !2658 ; 2 uses

bb.ms:                                            ; preds = %bb.mr
  %i.akk = extractvalue { ptr, ptr } %i.akj, 0    ; 2 uses
  %i.akl = extractvalue { ptr, ptr } %i.akj, 1    ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 24
  %i.akn = load ptr, ptr %i.akm, align 8, !invariant.load !4, !noalias !2658, !nonnull !4
  %i.ako = invoke noundef zeroext i1 %i.akn(ptr noundef %i.akk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.mt unwind label %bb.mb, !noalias !2658

bb.mt:                                            ; preds = %bb.ms
  br i1 %i.ako, label %bb.mu, label %bb.mm

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa), !noalias !2654
  %i.akp = load ptr, ptr @_RNvNCNCNvMNtNtCsaB04DkjCm5a_10aws_config16default_provider8app_nameNtB8_7Builder8app_name0s_010___CALLSITE, align 8, !noalias !2654, !nonnull !4, !align !19, !noundef !4
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez), !noalias !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !2654
  store ptr @9, ptr %i.ey, align 8, !noalias !2654
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.akr, align 8, !noalias !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !2654
  store ptr %i.fh, ptr %i.ew, align 8, !noalias !2654
  store ptr %i.ew, ptr %i.ex, align 8, !noalias !2654
  store ptr %i.ey, ptr %i.ez, align 8, !noalias !2654
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr @7, ptr %i.aks, align 8, !noalias !2654
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store ptr %i.ex, ptr %i.akt, align 8, !noalias !2654
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store ptr @10, ptr %i.aku, align 8, !noalias !2654
  store i64 1, ptr %i.fa, align 8, !noalias !2654
  %.sroa.415.0..sroa_idx.i.i.i355 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.ez, ptr %.sroa.415.0..sroa_idx.i.i.i355, align 8, !noalias !2654
  %.sroa.516.0..sroa_idx.i.i.i356 = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i356, align 8, !noalias !2654
  %i.akv = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store ptr %i.akq, ptr %i.akv, align 8, !noalias !2654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ake, ptr noundef nonnull %i.akk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.akl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fa)
          to label %bb.mv unwind label %bb.mb, !noalias !2657

bb.mv:                                            ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !2654
  br label %bb.mm

bb.mw:                                            ; preds = %bb.mb
  %i.akw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2657
  unreachable
end_hunk_2
begin_hunk_3_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.aph = phi ptr [ %i.apa, %.thread1282 ], [ %i.ape, %bb.pd ] ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !noalias !2745, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.apj = getelementptr i8, ptr %i.api, i64 136
  %.val.i407 = load ptr, ptr %i.apj, align 8, !noundef !4 ; 3 uses
  %.not.i.i408 = icmp eq ptr %.val.i407, null
  br i1 %.not.i.i408, label %bb.pi, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.apk = atomicrmw add ptr %.val.i407, i64 1 monotonic, align 8
  %i.apl = icmp slt i64 %i.apk, 0
  br i1 %i.apl, label %bb.pg, label %bb.pi

bb.pg:                                            ; preds = %bb.pf
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384: ; preds = %bb.rg, %bb.rf, %bb.rd, %bb.rc, %.body.i388, %bb.pz, %bb.py, %bb.px, %bb.pv, %bb.pu, %bb.pt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382, %bb.ph
  %.pn14.i385 = phi { ptr, i32 } [ %i.apm, %bb.ph ], [ %i.aqq, %bb.py ], [ %i.aqk, %bb.pu ], [ %.pn10.i389, %bb.rc ], [ %i.aqk, %bb.pv ], [ %i.aqk, %bb.pt ], [ %i.aqq, %bb.pz ], [ %i.aqq, %bb.px ], [ %.pn10.i389, %bb.rd ], [ %.pn10.i389, %.body.i388 ], [ %.pn6.i383, %bb.rg ], [ %.pn6.i383, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382 ], [ %.pn6.i383, %bb.rf ]
  store i8 2, ptr %i.aps, align 8, !noalias !2745
  br label %.body411

bb.ph:                                            ; preds = %bb.rb
  %i.apm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384

bb.pi:                                            ; preds = %bb.pf, %bb.pe
  %i.apn = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i407, ptr %i.apn, align 8, !noalias !2745
  %i.apo = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.api, ptr %i.apo, align 8, !noalias !2745
  %.sroa.8.0..sroa_idx.i409 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i409, align 8, !noalias !2745
  br label %bb.pl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382: ; preds = %bb.ri, %bb.rh, %bb.pr, %bb.pm
  %.pn6.i383 = phi { ptr, i32 } [ %i.aqh, %bb.pr ], [ %i.apw, %bb.rh ], [ %i.apw, %bb.ri ], [ %i.apw, %bb.pm ] ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2748)
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  %i.apq = load ptr, ptr %i.app, align 8, !alias.scope !2754, !noalias !2745, !noundef !4 ; 2 uses
  %i.apr = icmp eq ptr %i.apq, null
  br i1 %i.apr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384, label %bb.rf

bb.pj:                                            ; preds = %bb.pd
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #26
          to label %.noexc413 unwind label %bb.rj

.noexc413:                                        ; preds = %bb.pj
  unreachable

bb.pk:                                            ; preds = %bb.pd
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #26
          to label %.noexc414 unwind label %bb.rj

.noexc414:                                        ; preds = %bb.pk
  unreachable

bb.pl:                                            ; preds = %bb.pi, %bb.pd
  %i.aps = phi ptr [ %i.apg, %bb.pi ], [ %i.apf, %bb.pd ] ; 3 uses
  %i.apt = phi ptr [ %i.aph, %bb.pi ], [ %i.ape, %bb.pd ]
  %i.apu = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.apv = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.apu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.pn unwind label %bb.pm     ; 2 uses

bb.pm:                                            ; preds = %bb.pl
  %i.apw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.apy = load i8, ptr %i.apx, align 8, !range !102, !noalias !2745, !noundef !4
  %cond.i27.i381 = icmp eq i8 %i.apy, 3
  br i1 %cond.i27.i381, label %bb.rh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382

bb.pn:                                            ; preds = %bb.pl
  %i.apz = extractvalue { i64, ptr } %i.apv, 0
  %i.aqa = extractvalue { i64, ptr } %i.apv, 1
  %i.aqb = trunc nuw i64 %i.apz to i1
  br i1 %i.aqb, label %bb.rk, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.aqc = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.aqd = load i8, ptr %i.aqc, align 8, !range !102, !noalias !2745, !noundef !4
  %cond.i.i387 = icmp eq i8 %i.aqd, 3
  br i1 %cond.i.i387, label %bb.pp, label %bb.ps

bb.pp:                                            ; preds = %bb.po
  %i.aqe = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.aqf = load i8, ptr %i.aqe, align 8, !range !102, !noalias !2745, !noundef !4
  %cond.i.i.i406 = icmp eq i8 %i.aqf, 3
  br i1 %cond.i.i.i406, label %bb.pq, label %bb.ps

bb.pq:                                            ; preds = %bb.pp
  %i.aqg = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aqg)
          to label %bb.ps unwind label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i382

bb.ps:                                            ; preds = %bb.pq, %bb.pp, %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !2745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !2745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !2745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !2745
  store i64 -9223372036854775807, ptr %i.eo, align 8, !alias.scope !2755, !noalias !2745
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 -9223372036854775807, ptr %i.aqi, align 8, !alias.scope !2755, !noalias !2745
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  store i64 -9223372036854775807, ptr %i.aqj, align 8, !alias.scope !2755, !noalias !2745
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ep, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.eo, ptr noalias noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 31)
          to label %bb.pw unwind label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.aqk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !2745
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  %i.aqm = load ptr, ptr %i.aql, align 8, !alias.scope !2764, !noalias !2745, !noundef !4 ; 2 uses
  %i.aqn = icmp eq ptr %i.aqm, null
  br i1 %i.aqn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.aqo = atomicrmw sub ptr %i.aqm, i64 1 release, align 8, !noalias !2765
  %i.aqp = icmp eq i64 %i.aqo, 1
  br i1 %i.aqp, label %bb.pv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384

bb.pv:                                            ; preds = %bb.pu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aql) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 unwind label %bb.re

bb.pw:                                            ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !2745
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.eq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ep, ptr noalias noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 27)
          to label %bb.qa unwind label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.aqq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !2745
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.aqs = load ptr, ptr %i.aqr, align 8, !alias.scope !2776, !noalias !2745, !noundef !4 ; 2 uses
  %i.aqt = icmp eq ptr %i.aqs, null
  br i1 %i.aqt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.aqu = atomicrmw sub ptr %i.aqs, i64 1 release, align 8, !noalias !2777
  %i.aqv = icmp eq i64 %i.aqu, 1
  br i1 %i.aqv, label %bb.pz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384

bb.pz:                                            ; preds = %bb.py
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aqr) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384 unwind label %bb.re

bb.qa:                                            ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !2745
  %i.aqw = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 5 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validatebNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueNvB1i_10parse_boolECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.er, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aqw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.aqa)
          to label %bb.qc unwind label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.aqx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !2745
  br label %.body.i388

bb.qc:                                            ; preds = %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !2745
  call void @llvm.experimental.noalias.scope.decl(metadata !2782)
  %i.aqy = load i64, ptr %i.er, align 8, !range !20, !alias.scope !2782, !noalias !2745, !noundef !4
  %.not.i19.i390 = icmp eq i64 %i.aqy, -9223372036854775808
  br i1 %.not.i19.i390, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider27disable_request_compression36disable_request_compression_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !2785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.er, i64 48, i1 false), !noalias !2745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !2785
  %i.aqz = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2786
  %i.ara = icmp ult i64 %i.aqz, 4
  br i1 %i.ara, label %bb.qf, label %bb.qp

bb.qe:                                            ; preds = %bb.qu, %bb.qs, %bb.qr, %bb.qn, %.noexc20.i.i.i404, %bb.qm, %bb.qk, %bb.qh, %bb.qg
  %i.arb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.en) #22
          to label %.body.i388 unwind label %bb.qw, !noalias !2782

bb.qf:                                            ; preds = %bb.qd
  %i.arc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !2786 ; 3 uses
  switch i8 %i.arc, label %bb.qg [
    i8 0, label %bb.qp
    i8 1, label %bb.qh
    i8 2, label %bb.qh
  ], !prof !2452

bb.qg:                                            ; preds = %bb.qf
  %i.ard = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE)
          to label %bb.qi unwind label %bb.qe, !noalias !2789 ; 2 uses

bb.qh:                                            ; preds = %bb.qf, %bb.qi, %bb.qf
  %.sroa.06.0.i.i.i397 = phi i8 [ %i.ard, %bb.qi ], [ %i.arc, %bb.qf ], [ %i.arc, %bb.qf ]
  %i.are = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !2786, !nonnull !4, !align !19, !noundef !4
  %i.arf = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.are, i8 noundef %.sroa.06.0.i.i.i397)
          to label %bb.qj unwind label %bb.qe, !noalias !2789

bb.qi:                                            ; preds = %bb.qg
  %i.arg = icmp eq i8 %i.ard, 0
  br i1 %i.arg, label %bb.qp, label %bb.qh

bb.qj:                                            ; preds = %bb.qh
  br i1 %i.arf, label %bb.qk, label %bb.qp

bb.qk:                                            ; preds = %bb.qj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !2786
  %i.arh = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !2786, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !2786
  store ptr @20, ptr %i.ek, align 8, !noalias !2786
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr inttoptr (i64 111 to ptr), ptr %i.arj, align 8, !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !2786
  store ptr %i.en, ptr %i.ei, align 8, !noalias !2786
  store ptr %i.ei, ptr %i.ej, align 8, !noalias !2786
  store ptr %i.ek, ptr %i.el, align 8, !noalias !2786
  %i.ark = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr @7, ptr %i.ark, align 8, !noalias !2786
  %i.arl = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %i.ej, ptr %i.arl, align 8, !noalias !2786
  %i.arm = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr @15, ptr %i.arm, align 8, !noalias !2786
  store i64 1, ptr %i.em, align 8, !noalias !2786
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i398 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.el, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i398, align 8, !noalias !2786
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i399 = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i399, align 8, !noalias !2786
  %.sroa.4.0..sroa_idx.i.i.i400 = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store ptr %i.ari, ptr %.sroa.4.0..sroa_idx.i.i.i400, align 8, !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !2786
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.arh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.em)
          to label %.noexc.i.i.i401 unwind label %bb.qe, !noalias !2782

.noexc.i.i.i401:                                  ; preds = %bb.qk
  %i.arn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2790
  %i.aro = icmp eq i8 %i.arn, 0
  br i1 %i.aro, label %bb.ql, label %bb.qo

bb.ql:                                            ; preds = %.noexc.i.i.i401
  %i.arp = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2790 ; 2 uses
  %i.arq = icmp ult i64 %i.arp, 6
  call void @llvm.assume(i1 %i.arq)
  %i.arr = icmp samesign ugt i64 %i.arp, 1
  br i1 %i.arr, label %bb.qm, label %bb.qo

bb.qm:                                            ; preds = %bb.ql
  %i.ars = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !2790, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 32
  %i.aru = load ptr, ptr %i.art, align 8, !noalias !2782, !nonnull !4, !noundef !4
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ars, i64 40
  %i.arw = load i64, ptr %i.arv, align 8, !noalias !2782, !noundef !4
  store i64 2, ptr %i.eb, align 8, !noalias !2790
  %.sroa.3.0..sroa_idx.i.i.i.i402 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.aru, ptr %.sroa.3.0..sroa_idx.i.i.i.i402, align 8, !noalias !2790
  %.sroa.5.0..sroa_idx.i.i.i.i403 = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 %i.arw, ptr %.sroa.5.0..sroa_idx.i.i.i.i403, align 8, !noalias !2790
  %i.arx = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i404 unwind label %bb.qe, !noalias !2782 ; 2 uses

.noexc20.i.i.i404:                                ; preds = %bb.qm
  %i.ary = extractvalue { ptr, ptr } %i.arx, 0    ; 2 uses
  %i.arz = extractvalue { ptr, ptr } %i.arx, 1    ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 24
  %i.asb = load ptr, ptr %i.asa, align 8, !invariant.load !4, !noalias !2782, !nonnull !4
  %i.asc = invoke noundef zeroext i1 %i.asb(ptr noundef %i.ary, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb) #25
          to label %.noexc21.i.i.i405 unwind label %bb.qe, !noalias !2782, !inline_history !2793

.noexc21.i.i.i405:                                ; preds = %.noexc20.i.i.i404
  br i1 %i.asc, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %.noexc21.i.i.i405
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ars, ptr noundef nonnull %i.ary, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.arz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.em)
          to label %bb.qo unwind label %bb.qe, !noalias !2782

bb.qo:                                            ; preds = %bb.qn, %.noexc21.i.i.i405, %bb.ql, %.noexc.i.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !2786
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qp:                                            ; preds = %bb.qj, %bb.qi, %bb.qf, %bb.qd
  %i.asd = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2786
  %i.ase = icmp eq i8 %i.asd, 0
  br i1 %i.ase, label %bb.qq, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qq:                                            ; preds = %bb.qp
  %i.asf = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2786 ; 2 uses
  %i.asg = icmp ult i64 %i.asf, 6
  call void @llvm.assume(i1 %i.asg)
  %i.ash = icmp samesign ugt i64 %i.asf, 1
  br i1 %i.ash, label %bb.qr, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qr:                                            ; preds = %bb.qq
  %i.asi = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !2786, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 32
  %i.ask = load ptr, ptr %i.asj, align 8, !noalias !2789, !nonnull !4, !noundef !4
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asi, i64 40
  %i.asm = load i64, ptr %i.asl, align 8, !noalias !2789, !noundef !4
  store i64 2, ptr %i.eh, align 8, !noalias !2786
  %.sroa.3.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ask, ptr %.sroa.3.0..sroa_idx.i.i.i393, align 8, !noalias !2786
  %.sroa.513.0..sroa_idx.i.i.i394 = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 %i.asm, ptr %.sroa.513.0..sroa_idx.i.i.i394, align 8, !noalias !2786
  %i.asn = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.qs unwind label %bb.qe, !noalias !2789 ; 2 uses

bb.qs:                                            ; preds = %bb.qr
  %i.aso = extractvalue { ptr, ptr } %i.asn, 0    ; 2 uses
  %i.asp = extractvalue { ptr, ptr } %i.asn, 1    ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 24
  %i.asr = load ptr, ptr %i.asq, align 8, !invariant.load !4, !noalias !2789, !nonnull !4
  %i.ass = invoke noundef zeroext i1 %i.asr(ptr noundef %i.aso, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh)
          to label %bb.qt unwind label %bb.qe, !noalias !2789

bb.qt:                                            ; preds = %bb.qs
  br i1 %i.ass, label %bb.qu, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qu:                                            ; preds = %bb.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !2786
  %i.ast = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider0010___CALLSITE, align 8, !noalias !2786, !nonnull !4, !align !19, !noundef !4
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !2786
  store ptr @20, ptr %i.ee, align 8, !noalias !2786
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr inttoptr (i64 111 to ptr), ptr %i.asv, align 8, !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !2786
  store ptr %i.en, ptr %i.ec, align 8, !noalias !2786
  store ptr %i.ec, ptr %i.ed, align 8, !noalias !2786
  store ptr %i.ee, ptr %i.ef, align 8, !noalias !2786
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr @7, ptr %i.asw, align 8, !noalias !2786
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.ed, ptr %i.asx, align 8, !noalias !2786
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr @15, ptr %i.asy, align 8, !noalias !2786
  store i64 1, ptr %i.eg, align 8, !noalias !2786
  %.sroa.415.0..sroa_idx.i.i.i395 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ef, ptr %.sroa.415.0..sroa_idx.i.i.i395, align 8, !noalias !2786
  %.sroa.516.0..sroa_idx.i.i.i396 = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i396, align 8, !noalias !2786
  %i.asz = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.asu, ptr %i.asz, align 8, !noalias !2786
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.asi, ptr noundef nonnull %i.aso, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.asp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg)
          to label %bb.qv unwind label %bb.qe, !noalias !2782

bb.qv:                                            ; preds = %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !2786
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.qw:                                            ; preds = %bb.qe
  %i.ata = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2782
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.qv, %bb.qt, %bb.qq, %bb.qp, %bb.qo
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.en)
          to label %bb.qy unwind label %bb.qx

.body.i388:                                       ; preds = %bb.qx, %bb.qe, %bb.qb
  %.pn10.i389 = phi { ptr, i32 } [ %i.aqx, %bb.qb ], [ %i.atd, %bb.qx ], [ %i.arb, %bb.qe ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !2745
  call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  %i.atb = load ptr, ptr %i.aqw, align 8, !alias.scope !2800, !noalias !2745, !noundef !4 ; 2 uses
  %i.atc = icmp eq ptr %i.atb, null
  br i1 %i.atc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i384, label %bb.rc

bb.qx:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider27disable_request_compression36disable_request_compression_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.atd = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.auk = phi ptr [ %i.aub, %.thread1283 ], [ %i.auh, %bb.ro ] ; 2 uses
  %i.aul = load ptr, ptr %i.auk, align 8, !noalias !2824, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.aum = getelementptr i8, ptr %i.aul, i64 136
  %.val.i442 = load ptr, ptr %i.aum, align 8, !noundef !4 ; 3 uses
  %.not.i.i443 = icmp eq ptr %.val.i442, null
  br i1 %.not.i.i443, label %bb.rt, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.aun = atomicrmw add ptr %.val.i442, i64 1 monotonic, align 8
  %i.auo = icmp slt i64 %i.aun, 0
  br i1 %i.auo, label %bb.rr, label %bb.rt

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423: ; preds = %bb.tr, %bb.tq, %bb.to, %bb.tn, %.body.i425, %bb.sk, %bb.sj, %bb.si, %bb.sg, %bb.sf, %bb.se, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i, %bb.rs
  %.pn15.i = phi { ptr, i32 } [ %i.aup, %bb.rs ], [ %i.avt, %bb.sj ], [ %i.avn, %bb.sf ], [ %.pn11.i, %bb.tn ], [ %i.avn, %bb.sg ], [ %i.avn, %bb.se ], [ %i.avt, %bb.sk ], [ %i.avt, %bb.si ], [ %.pn11.i, %bb.to ], [ %.pn11.i, %.body.i425 ], [ %.pn7.i, %bb.tr ], [ %.pn7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i ], [ %.pn7.i, %bb.tq ]
  store i8 2, ptr %i.auv, align 8, !noalias !2824
  br label %.body446

bb.rs:                                            ; preds = %bb.tm
  %i.aup = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423

bb.rt:                                            ; preds = %bb.rq, %bb.rp
  %i.auq = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i442, ptr %i.auq, align 8, !noalias !2824
  %i.aur = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.aul, ptr %i.aur, align 8, !noalias !2824
  %.sroa.8.0..sroa_idx.i444 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i444, align 8, !noalias !2824
  br label %bb.rw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i: ; preds = %bb.tt, %bb.ts, %bb.sc, %bb.rx
  %.pn7.i = phi { ptr, i32 } [ %i.avk, %bb.sc ], [ %i.auz, %bb.ts ], [ %i.auz, %bb.tt ], [ %i.auz, %bb.rx ] ; 3 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  %i.aut = load ptr, ptr %i.aus, align 8, !alias.scope !2833, !noalias !2824, !noundef !4 ; 2 uses
  %i.auu = icmp eq ptr %i.aut, null
  br i1 %i.auu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.tq

bb.ru:                                            ; preds = %bb.ro
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #26
          to label %.noexc448 unwind label %bb.tu

.noexc448:                                        ; preds = %bb.ru
  unreachable

bb.rv:                                            ; preds = %bb.ro
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #26
          to label %.noexc449 unwind label %bb.tu

.noexc449:                                        ; preds = %bb.rv
  unreachable

bb.rw:                                            ; preds = %bb.rt, %bb.ro
  %i.auv = phi ptr [ %i.auj, %bb.rt ], [ %i.aui, %bb.ro ] ; 3 uses
  %i.auw = phi ptr [ %i.auk, %bb.rt ], [ %i.auh, %bb.ro ]
  %i.aux = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.auy = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aux, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ry unwind label %bb.rx     ; 2 uses

bb.rx:                                            ; preds = %bb.rw
  %i.auz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.avb = load i8, ptr %i.ava, align 8, !range !102, !noalias !2824, !noundef !4
  %cond.i28.i = icmp eq i8 %i.avb, 3
  br i1 %cond.i28.i, label %bb.ts, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i

bb.ry:                                            ; preds = %bb.rw
  %i.avc = extractvalue { i64, ptr } %i.auy, 0
  %i.avd = extractvalue { i64, ptr } %i.auy, 1
  %i.ave = trunc nuw i64 %i.avc to i1
  br i1 %i.ave, label %bb.tv, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.avf = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.avg = load i8, ptr %i.avf, align 8, !range !102, !noalias !2824, !noundef !4
  %cond.i.i424 = icmp eq i8 %i.avg, 3
  br i1 %cond.i.i424, label %bb.sa, label %bb.sd

bb.sa:                                            ; preds = %bb.rz
  %i.avh = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.avi = load i8, ptr %i.avh, align 8, !range !102, !noalias !2824, !noundef !4
  %cond.i.i.i441 = icmp eq i8 %i.avi, 3
  br i1 %cond.i.i.i441, label %bb.sb, label %bb.sd

bb.sb:                                            ; preds = %bb.sa
  %i.avj = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.avj)
          to label %bb.sd unwind label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.avk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i

bb.sd:                                            ; preds = %bb.sb, %bb.sa, %bb.rz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !2824
  store i64 -9223372036854775807, ptr %i.dx, align 8, !alias.scope !2834, !noalias !2824
  %i.avl = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 -9223372036854775807, ptr %i.avl, align 8, !alias.scope !2834, !noalias !2824
  %i.avm = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store i64 -9223372036854775807, ptr %i.avm, align 8, !alias.scope !2834, !noalias !2824
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dx, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 38)
          to label %bb.sh unwind label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.avn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !2824
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  call void @llvm.experimental.noalias.scope.decl(metadata !2840)
  %i.avp = load ptr, ptr %i.avo, align 8, !alias.scope !2843, !noalias !2824, !noundef !4 ; 2 uses
  %i.avq = icmp eq ptr %i.avp, null
  br i1 %i.avq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.avr = atomicrmw sub ptr %i.avp, i64 1 release, align 8, !noalias !2844
  %i.avs = icmp eq i64 %i.avr, 1
  br i1 %i.avs, label %bb.sg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423

bb.sg:                                            ; preds = %bb.sf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.avo) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423 unwind label %bb.tp

bb.sh:                                            ; preds = %bb.sd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !2824
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dy, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 34)
          to label %bb.sl unwind label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.avt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !2824
  %i.avu = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  call void @llvm.experimental.noalias.scope.decl(metadata !2852)
  %i.avv = load ptr, ptr %i.avu, align 8, !alias.scope !2855, !noalias !2824, !noundef !4 ; 2 uses
  %i.avw = icmp eq ptr %i.avv, null
  br i1 %i.avw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.avx = atomicrmw sub ptr %i.avv, i64 1 release, align 8, !noalias !2856
  %i.avy = icmp eq i64 %i.avx, 1
  br i1 %i.avy, label %bb.sk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423

bb.sk:                                            ; preds = %bb.sj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.avu) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i423 unwind label %bb.tp

bb.sl:                                            ; preds = %bb.sh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !2824
  %i.avz = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 5 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validatemNtNtCsaB04DkjCm5a_10aws_config11environment16InvalidUintValueNvB1i_10parse_uintECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ea, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.avz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.avd)
          to label %bb.sn unwind label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.awa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !2824
  br label %.body.i425

bb.sn:                                            ; preds = %bb.sl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !2824
  call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  %i.awb = load i64, ptr %i.ea, align 8, !range !20, !alias.scope !2861, !noalias !2824, !noundef !4
  %.not.i20.i = icmp eq i64 %i.awb, -9223372036854775808
  br i1 %.not.i20.i, label %bb.ti, label %bb.so

bb.so:                                            ; preds = %bb.sn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !2864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ea, i64 48, i1 false), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !2864
  %i.awc = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2865
  %i.awd = icmp ult i64 %i.awc, 4
  br i1 %i.awd, label %bb.sq, label %bb.ta

bb.sp:                                            ; preds = %bb.tf, %bb.td, %bb.tc, %bb.sy, %.noexc20.i.i.i439, %bb.sx, %bb.sv, %bb.ss, %bb.sr
  %i.awe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment16InvalidUintValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dw) #22
          to label %.body.i425 unwind label %bb.th, !noalias !2861

bb.sq:                                            ; preds = %bb.so
  %i.awf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !2865 ; 3 uses
  switch i8 %i.awf, label %bb.sr [
    i8 0, label %bb.ta
    i8 1, label %bb.ss
    i8 2, label %bb.ss
  ], !prof !2452

bb.sr:                                            ; preds = %bb.sq
  %i.awg = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider0010___CALLSITE)
          to label %bb.st unwind label %bb.sp, !noalias !2868 ; 2 uses

bb.ss:                                            ; preds = %bb.sq, %bb.st, %bb.sq
  %.sroa.06.0.i.i.i432 = phi i8 [ %i.awg, %bb.st ], [ %i.awf, %bb.sq ], [ %i.awf, %bb.sq ]
  %i.awh = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider0010___CALLSITE, align 8, !noalias !2865, !nonnull !4, !align !19, !noundef !4
  %i.awi = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awh, i8 noundef %.sroa.06.0.i.i.i432)
          to label %bb.su unwind label %bb.sp, !noalias !2868

bb.st:                                            ; preds = %bb.sr
  %i.awj = icmp eq i8 %i.awg, 0
  br i1 %i.awj, label %bb.ta, label %bb.ss

bb.su:                                            ; preds = %bb.ss
  br i1 %i.awi, label %bb.sv, label %bb.ta

bb.sv:                                            ; preds = %bb.su
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !2865
  %i.awk = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider0010___CALLSITE, align 8, !noalias !2865, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !2865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !2865
  store ptr @22, ptr %i.dt, align 8, !noalias !2865
  %i.awm = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr inttoptr (i64 133 to ptr), ptr %i.awm, align 8, !noalias !2865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !2865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !2865
  store ptr %i.dw, ptr %i.dr, align 8, !noalias !2865
  store ptr %i.dr, ptr %i.ds, align 8, !noalias !2865
  store ptr %i.dt, ptr %i.du, align 8, !noalias !2865
  %i.awn = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr @7, ptr %i.awn, align 8, !noalias !2865
  %i.awo = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.ds, ptr %i.awo, align 8, !noalias !2865
  %i.awp = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr @23, ptr %i.awp, align 8, !noalias !2865
  store i64 1, ptr %i.dv, align 8, !noalias !2865
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i433 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.du, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i433, align 8, !noalias !2865
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i434 = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i434, align 8, !noalias !2865
  %.sroa.4.0..sroa_idx.i.i.i435 = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %i.awl, ptr %.sroa.4.0..sroa_idx.i.i.i435, align 8, !noalias !2865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !2865
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dv)
          to label %.noexc.i.i.i436 unwind label %bb.sp, !noalias !2861

.noexc.i.i.i436:                                  ; preds = %bb.sv
  %i.awq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2869
  %i.awr = icmp eq i8 %i.awq, 0
  br i1 %i.awr, label %bb.sw, label %bb.sz

bb.sw:                                            ; preds = %.noexc.i.i.i436
  %i.aws = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2869 ; 2 uses
  %i.awt = icmp ult i64 %i.aws, 6
  call void @llvm.assume(i1 %i.awt)
  %i.awu = icmp samesign ugt i64 %i.aws, 1
  br i1 %i.awu, label %bb.sx, label %bb.sz

bb.sx:                                            ; preds = %bb.sw
  %i.awv = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider0010___CALLSITE, align 8, !noalias !2869, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 32
  %i.awx = load ptr, ptr %i.aww, align 8, !noalias !2861, !nonnull !4, !noundef !4
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awv, i64 40
  %i.awz = load i64, ptr %i.awy, align 8, !noalias !2861, !noundef !4
  store i64 2, ptr %i.dk, align 8, !noalias !2869
  %.sroa.3.0..sroa_idx.i.i.i.i437 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.awx, ptr %.sroa.3.0..sroa_idx.i.i.i.i437, align 8, !noalias !2869
  %.sroa.5.0..sroa_idx.i.i.i.i438 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 %i.awz, ptr %.sroa.5.0..sroa_idx.i.i.i.i438, align 8, !noalias !2869
  %i.axa = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i439 unwind label %bb.sp, !noalias !2861 ; 2 uses

.noexc20.i.i.i439:                                ; preds = %bb.sx
  %i.axb = extractvalue { ptr, ptr } %i.axa, 0    ; 2 uses
  %i.axc = extractvalue { ptr, ptr } %i.axa, 1    ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 24
  %i.axe = load ptr, ptr %i.axd, align 8, !invariant.load !4, !noalias !2861, !nonnull !4
  %i.axf = invoke noundef zeroext i1 %i.axe(ptr noundef %i.axb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk) #25
          to label %.noexc21.i.i.i440 unwind label %bb.sp, !noalias !2861, !inline_history !2872

.noexc21.i.i.i440:                                ; preds = %.noexc20.i.i.i439
  br i1 %i.axf, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %.noexc21.i.i.i440
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awv, ptr noundef nonnull %i.axb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.axc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dv)
          to label %bb.sz unwind label %bb.sp, !noalias !2861

bb.sz:                                            ; preds = %bb.sy, %.noexc21.i.i.i440, %bb.sw, %.noexc.i.i.i436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !2865
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ta:                                            ; preds = %bb.su, %bb.st, %bb.sq, %bb.so
  %i.axg = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2865
  %i.axh = icmp eq i8 %i.axg, 0
  br i1 %i.axh, label %bb.tb, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.tb:                                            ; preds = %bb.ta
  %i.axi = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2865 ; 2 uses
  %i.axj = icmp ult i64 %i.axi, 6
  call void @llvm.assume(i1 %i.axj)
  %i.axk = icmp samesign ugt i64 %i.axi, 1
  br i1 %i.axk, label %bb.tc, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.tc:                                            ; preds = %bb.tb
  %i.axl = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider0010___CALLSITE, align 8, !noalias !2865, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 32
  %i.axn = load ptr, ptr %i.axm, align 8, !noalias !2868, !nonnull !4, !noundef !4
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axl, i64 40
  %i.axp = load i64, ptr %i.axo, align 8, !noalias !2868, !noundef !4
  store i64 2, ptr %i.dq, align 8, !noalias !2865
  %.sroa.3.0..sroa_idx.i.i.i428 = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.axn, ptr %.sroa.3.0..sroa_idx.i.i.i428, align 8, !noalias !2865
  %.sroa.513.0..sroa_idx.i.i.i429 = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %i.axp, ptr %.sroa.513.0..sroa_idx.i.i.i429, align 8, !noalias !2865
  %i.axq = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.td unwind label %bb.sp, !noalias !2868 ; 2 uses

bb.td:                                            ; preds = %bb.tc
  %i.axr = extractvalue { ptr, ptr } %i.axq, 0    ; 2 uses
  %i.axs = extractvalue { ptr, ptr } %i.axq, 1    ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 24
  %i.axu = load ptr, ptr %i.axt, align 8, !invariant.load !4, !noalias !2868, !nonnull !4
  %i.axv = invoke noundef zeroext i1 %i.axu(ptr noundef %i.axr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %bb.te unwind label %bb.sp, !noalias !2868

bb.te:                                            ; preds = %bb.td
  br i1 %i.axv, label %bb.tf, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.tf:                                            ; preds = %bb.te
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !2865
  %i.axw = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider0010___CALLSITE, align 8, !noalias !2865, !nonnull !4, !align !19, !noundef !4
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !2865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !2865
  store ptr @22, ptr %i.dn, align 8, !noalias !2865
  %i.axy = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr inttoptr (i64 133 to ptr), ptr %i.axy, align 8, !noalias !2865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !2865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !2865
  store ptr %i.dw, ptr %i.dl, align 8, !noalias !2865
  store ptr %i.dl, ptr %i.dm, align 8, !noalias !2865
  store ptr %i.dn, ptr %i.do, align 8, !noalias !2865
  %i.axz = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr @7, ptr %i.axz, align 8, !noalias !2865
  %i.aya = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr %i.dm, ptr %i.aya, align 8, !noalias !2865
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr @23, ptr %i.ayb, align 8, !noalias !2865
  store i64 1, ptr %i.dp, align 8, !noalias !2865
  %.sroa.415.0..sroa_idx.i.i.i430 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.do, ptr %.sroa.415.0..sroa_idx.i.i.i430, align 8, !noalias !2865
  %.sroa.516.0..sroa_idx.i.i.i431 = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i431, align 8, !noalias !2865
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store ptr %i.axx, ptr %i.ayc, align 8, !noalias !2865
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.axl, ptr noundef nonnull %i.axr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.axs, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dp)
          to label %bb.tg unwind label %bb.sp, !noalias !2861

bb.tg:                                            ; preds = %bb.tf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !2865
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.th:                                            ; preds = %bb.sp
  %i.ayd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2861
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.tg, %bb.te, %bb.tb, %bb.ta, %bb.sz
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment16InvalidUintValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dw)
          to label %.noexc21.i unwind label %bb.tj

.noexc21.i:                                       ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider34request_min_compression_size_bytes43request_min_compression_size_bytes_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !2864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !2864
  br label %bb.tk

bb.ti:                                            ; preds = %bb.sn
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ayf = load i32, ptr %i.aye, align 8, !range !2823, !alias.scope !2861, !noalias !2824, !noundef !4
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ayh = load i32, ptr %i.ayg, align 4, !alias.scope !2861, !noalias !2824
  br label %bb.tk
end_hunk_4
begin_hunk_5_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.bdu = phi ptr [ %i.bcy, %.thread1286 ], [ %i.bdr, %bb.wq ] ; 2 uses
  %i.bdv = load ptr, ptr %i.bdu, align 8, !noalias !2959, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.bdw = getelementptr i8, ptr %i.bdv, i64 136
  %.val.i508 = load ptr, ptr %i.bdw, align 8, !noundef !4 ; 3 uses
  %.not.i.i509 = icmp eq ptr %.val.i508, null
  br i1 %.not.i.i509, label %bb.wv, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bdx = atomicrmw add ptr %.val.i508, i64 1 monotonic, align 8
  %i.bdy = icmp slt i64 %i.bdx, 0
  br i1 %i.bdy, label %bb.wt, label %bb.wv

bb.wt:                                            ; preds = %bb.ws
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485: ; preds = %bb.yt, %bb.ys, %bb.yq, %bb.yp, %.body.i489, %bb.xm, %bb.xl, %bb.xk, %bb.xi, %bb.xh, %bb.xg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i483, %bb.wu
  %.pn14.i486 = phi { ptr, i32 } [ %i.bdz, %bb.wu ], [ %i.bfd, %bb.xl ], [ %i.bex, %bb.xh ], [ %.pn10.i490, %bb.yp ], [ %i.bex, %bb.xi ], [ %i.bex, %bb.xg ], [ %i.bfd, %bb.xm ], [ %i.bfd, %bb.xk ], [ %.pn10.i490, %bb.yq ], [ %.pn10.i490, %.body.i489 ], [ %.pn6.i484, %bb.yt ], [ %.pn6.i484, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i483 ], [ %.pn6.i484, %bb.ys ]
  store i8 2, ptr %i.bef, align 8, !noalias !2959
  br label %.body512

bb.wu:                                            ; preds = %bb.yo
  %i.bdz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485

bb.wv:                                            ; preds = %bb.ws, %bb.wr
  %i.bea = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i508, ptr %i.bea, align 8, !noalias !2959
  %i.beb = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.bdv, ptr %i.beb, align 8, !noalias !2959
  %.sroa.8.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i510, align 8, !noalias !2959
  br label %bb.wy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i483: ; preds = %bb.yv, %bb.yu, %bb.xe, %bb.wz
  %.pn6.i484 = phi { ptr, i32 } [ %i.beu, %bb.xe ], [ %i.bej, %bb.yu ], [ %i.bej, %bb.yv ], [ %i.bej, %bb.wz ] ; 3 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2962)
  call void @llvm.experimental.noalias.scope.decl(metadata !2965)
  %i.bed = load ptr, ptr %i.bec, align 8, !alias.scope !2968, !noalias !2959, !noundef !4 ; 2 uses
  %i.bee = icmp eq ptr %i.bed, null
  br i1 %i.bee, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485, label %bb.ys

bb.ww:                                            ; preds = %bb.wq
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #26
          to label %.noexc514 unwind label %bb.yw

.noexc514:                                        ; preds = %bb.ww
  unreachable

bb.wx:                                            ; preds = %bb.wq
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #26
          to label %.noexc515 unwind label %bb.yw

.noexc515:                                        ; preds = %bb.wx
  unreachable

bb.wy:                                            ; preds = %bb.wv, %bb.wq
  %i.bef = phi ptr [ %i.bdt, %bb.wv ], [ %i.bds, %bb.wq ] ; 4 uses
  %i.beg = phi ptr [ %i.bdu, %bb.wv ], [ %i.bdr, %bb.wq ] ; 3 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.bei = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.beh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.xa unwind label %bb.wz     ; 2 uses

bb.wz:                                            ; preds = %bb.wy
  %i.bej = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.bel = load i8, ptr %i.bek, align 8, !range !102, !noalias !2959, !noundef !4
  %cond.i27.i482 = icmp eq i8 %i.bel, 3
  br i1 %cond.i27.i482, label %bb.yu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i483

bb.xa:                                            ; preds = %bb.wy
  %i.bem = extractvalue { i64, ptr } %i.bei, 0
  %i.ben = extractvalue { i64, ptr } %i.bei, 1
  %i.beo = trunc nuw i64 %i.bem to i1
  br i1 %i.beo, label %bb.yx, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.bep = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.beq = load i8, ptr %i.bep, align 8, !range !102, !noalias !2959, !noundef !4
  %cond.i.i488 = icmp eq i8 %i.beq, 3
  br i1 %cond.i.i488, label %bb.xc, label %bb.xf

bb.xc:                                            ; preds = %bb.xb
  %i.ber = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.bes = load i8, ptr %i.ber, align 8, !range !102, !noalias !2959, !noundef !4
  %cond.i.i.i507 = icmp eq i8 %i.bes, 3
  br i1 %cond.i.i.i507, label %bb.xd, label %bb.xf

bb.xd:                                            ; preds = %bb.xc
  %i.bet = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bet)
          to label %bb.xf unwind label %bb.xe

bb.xe:                                            ; preds = %bb.xd
  %i.beu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i483

bb.xf:                                            ; preds = %bb.xd, %bb.xc, %bb.xb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !2959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !2959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !2959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !2959
  store i64 -9223372036854775807, ptr %i.dg, align 8, !alias.scope !2969, !noalias !2959
  %i.bev = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i64 -9223372036854775807, ptr %i.bev, align 8, !alias.scope !2969, !noalias !2959
  %i.bew = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  store i64 -9223372036854775807, ptr %i.bew, align 8, !alias.scope !2969, !noalias !2959
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 35)
          to label %bb.xj unwind label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  %i.bex = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !2959
  %i.bey = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2972)
  call void @llvm.experimental.noalias.scope.decl(metadata !2975)
  %i.bez = load ptr, ptr %i.bey, align 8, !alias.scope !2978, !noalias !2959, !noundef !4 ; 2 uses
  %i.bfa = icmp eq ptr %i.bez, null
  br i1 %i.bfa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.bfb = atomicrmw sub ptr %i.bez, i64 1 release, align 8, !noalias !2979
  %i.bfc = icmp eq i64 %i.bfb, 1
  br i1 %i.bfc, label %bb.xi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485

bb.xi:                                            ; preds = %bb.xh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bey) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485 unwind label %bb.yr

bb.xj:                                            ; preds = %bb.xf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !2959
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.di, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.dh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 31)
          to label %bb.xn unwind label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.bfd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !2959
  %i.bfe = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  %i.bff = load ptr, ptr %i.bfe, align 8, !alias.scope !2990, !noalias !2959, !noundef !4 ; 2 uses
  %i.bfg = icmp eq ptr %i.bff, null
  br i1 %i.bfg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485, label %bb.xl

bb.xl:                                            ; preds = %bb.xk
  %i.bfh = atomicrmw sub ptr %i.bff, i64 1 release, align 8, !noalias !2991
  %i.bfi = icmp eq i64 %i.bfh, 1
  br i1 %i.bfi, label %bb.xm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485

bb.xm:                                            ; preds = %bb.xl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bfe) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485 unwind label %bb.yr

bb.xn:                                            ; preds = %bb.xj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !2959
  %i.bfj = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 5 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validatebNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueNvB1i_10parse_boolECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.dj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bfj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.ben)
          to label %bb.xp unwind label %bb.xo

bb.xo:                                            ; preds = %bb.xn
  %i.bfk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !2959
  br label %.body.i489

bb.xp:                                            ; preds = %bb.xn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !2959
  call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  %i.bfl = load i64, ptr %i.dj, align 8, !range !20, !alias.scope !2996, !noalias !2959, !noundef !4
  %.not.i19.i491 = icmp eq i64 %i.bfl, -9223372036854775808
  br i1 %.not.i19.i491, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionbEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEE7map_erruNCNCNvNtNtB28_16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !2999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.dj, i64 48, i1 false), !noalias !2959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !2999
  %i.bfm = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3000
  %i.bfn = icmp ult i64 %i.bfm, 4
  br i1 %i.bfn, label %bb.xs, label %bb.yc

bb.xr:                                            ; preds = %bb.yh, %bb.yf, %bb.ye, %bb.ya, %.noexc20.i.i.i505, %bb.xz, %bb.xx, %bb.xu, %bb.xt
  %i.bfo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df) #22
          to label %.body.i489 unwind label %bb.yj, !noalias !2996

bb.xs:                                            ; preds = %bb.xq
  %i.bfp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3000 ; 3 uses
  switch i8 %i.bfp, label %bb.xt [
    i8 0, label %bb.yc
    i8 1, label %bb.xu
    i8 2, label %bb.xu
  ], !prof !2452

bb.xt:                                            ; preds = %bb.xs
  %i.bfq = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE)
          to label %bb.xv unwind label %bb.xr, !noalias !3003 ; 2 uses

bb.xu:                                            ; preds = %bb.xs, %bb.xv, %bb.xs
  %.sroa.06.0.i.i.i498 = phi i8 [ %i.bfq, %bb.xv ], [ %i.bfp, %bb.xs ], [ %i.bfp, %bb.xs ]
  %i.bfr = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3000, !nonnull !4, !align !19, !noundef !4
  %i.bfs = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bfr, i8 noundef %.sroa.06.0.i.i.i498)
          to label %bb.xw unwind label %bb.xr, !noalias !3003

bb.xv:                                            ; preds = %bb.xt
  %i.bft = icmp eq i8 %i.bfq, 0
  br i1 %i.bft, label %bb.yc, label %bb.xu

bb.xw:                                            ; preds = %bb.xu
  br i1 %i.bfs, label %bb.xx, label %bb.yc

bb.xx:                                            ; preds = %bb.xw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !3000
  %i.bfu = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3000, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !3000
  store ptr @21, ptr %i.dc, align 8, !noalias !3000
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr inttoptr (i64 119 to ptr), ptr %i.bfw, align 8, !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !3000
  store ptr %i.df, ptr %i.da, align 8, !noalias !3000
  store ptr %i.da, ptr %i.db, align 8, !noalias !3000
  store ptr %i.dc, ptr %i.dd, align 8, !noalias !3000
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr @7, ptr %i.bfx, align 8, !noalias !3000
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.db, ptr %i.bfy, align 8, !noalias !3000
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr @15, ptr %i.bfz, align 8, !noalias !3000
  store i64 1, ptr %i.de, align 8, !noalias !3000
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i499 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i499, align 8, !noalias !3000
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i500 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i500, align 8, !noalias !3000
  %.sroa.4.0..sroa_idx.i.i.i501 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.bfv, ptr %.sroa.4.0..sroa_idx.i.i.i501, align 8, !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !3000
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bfu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de)
          to label %.noexc.i.i.i502 unwind label %bb.xr, !noalias !2996

.noexc.i.i.i502:                                  ; preds = %bb.xx
  %i.bga = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3004
  %i.bgb = icmp eq i8 %i.bga, 0
  br i1 %i.bgb, label %bb.xy, label %bb.yb

bb.xy:                                            ; preds = %.noexc.i.i.i502
  %i.bgc = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3004 ; 2 uses
  %i.bgd = icmp ult i64 %i.bgc, 6
  call void @llvm.assume(i1 %i.bgd)
  %i.bge = icmp samesign ugt i64 %i.bgc, 1
  br i1 %i.bge, label %bb.xz, label %bb.yb

bb.xz:                                            ; preds = %bb.xy
  %i.bgf = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3004, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 32
  %i.bgh = load ptr, ptr %i.bgg, align 8, !noalias !2996, !nonnull !4, !noundef !4
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgf, i64 40
  %i.bgj = load i64, ptr %i.bgi, align 8, !noalias !2996, !noundef !4
  store i64 2, ptr %i.ct, align 8, !noalias !3004
  %.sroa.3.0..sroa_idx.i.i.i.i503 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.bgh, ptr %.sroa.3.0..sroa_idx.i.i.i.i503, align 8, !noalias !3004
  %.sroa.5.0..sroa_idx.i.i.i.i504 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %i.bgj, ptr %.sroa.5.0..sroa_idx.i.i.i.i504, align 8, !noalias !3004
  %i.bgk = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i505 unwind label %bb.xr, !noalias !2996 ; 2 uses

.noexc20.i.i.i505:                                ; preds = %bb.xz
  %i.bgl = extractvalue { ptr, ptr } %i.bgk, 0    ; 2 uses
  %i.bgm = extractvalue { ptr, ptr } %i.bgk, 1    ; 2 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 24
  %i.bgo = load ptr, ptr %i.bgn, align 8, !invariant.load !4, !noalias !2996, !nonnull !4
  %i.bgp = invoke noundef zeroext i1 %i.bgo(ptr noundef %i.bgl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #25
          to label %.noexc21.i.i.i506 unwind label %bb.xr, !noalias !2996, !inline_history !3007

.noexc21.i.i.i506:                                ; preds = %.noexc20.i.i.i505
  br i1 %i.bgp, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %.noexc21.i.i.i506
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bgf, ptr noundef nonnull %i.bgl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bgm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de)
          to label %bb.yb unwind label %bb.xr, !noalias !2996

bb.yb:                                            ; preds = %bb.ya, %.noexc21.i.i.i506, %bb.xy, %.noexc.i.i.i502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !3000
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.yc:                                            ; preds = %bb.xw, %bb.xv, %bb.xs, %bb.xq
  %i.bgq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3000
  %i.bgr = icmp eq i8 %i.bgq, 0
  br i1 %i.bgr, label %bb.yd, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.yd:                                            ; preds = %bb.yc
  %i.bgs = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3000 ; 2 uses
  %i.bgt = icmp ult i64 %i.bgs, 6
  call void @llvm.assume(i1 %i.bgt)
  %i.bgu = icmp samesign ugt i64 %i.bgs, 1
  br i1 %i.bgu, label %bb.ye, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ye:                                            ; preds = %bb.yd
  %i.bgv = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3000, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgv, i64 32
  %i.bgx = load ptr, ptr %i.bgw, align 8, !noalias !3003, !nonnull !4, !noundef !4
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgv, i64 40
  %i.bgz = load i64, ptr %i.bgy, align 8, !noalias !3003, !noundef !4
  store i64 2, ptr %i.cz, align 8, !noalias !3000
  %.sroa.3.0..sroa_idx.i.i.i494 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.bgx, ptr %.sroa.3.0..sroa_idx.i.i.i494, align 8, !noalias !3000
  %.sroa.513.0..sroa_idx.i.i.i495 = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.bgz, ptr %.sroa.513.0..sroa_idx.i.i.i495, align 8, !noalias !3000
  %i.bha = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.yf unwind label %bb.xr, !noalias !3003 ; 2 uses

bb.yf:                                            ; preds = %bb.ye
  %i.bhb = extractvalue { ptr, ptr } %i.bha, 0    ; 2 uses
  %i.bhc = extractvalue { ptr, ptr } %i.bha, 1    ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 24
  %i.bhe = load ptr, ptr %i.bhd, align 8, !invariant.load !4, !noalias !3003, !nonnull !4
  %i.bhf = invoke noundef zeroext i1 %i.bhe(ptr noundef %i.bhb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.yg unwind label %bb.xr, !noalias !3003

bb.yg:                                            ; preds = %bb.yf
  br i1 %i.bhf, label %bb.yh, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !3000
  %i.bhg = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider0010___CALLSITE, align 8, !noalias !3000, !nonnull !4, !align !19, !noundef !4
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !3000
  store ptr @21, ptr %i.cw, align 8, !noalias !3000
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr inttoptr (i64 119 to ptr), ptr %i.bhi, align 8, !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !3000
  store ptr %i.df, ptr %i.cu, align 8, !noalias !3000
  store ptr %i.cu, ptr %i.cv, align 8, !noalias !3000
  store ptr %i.cw, ptr %i.cx, align 8, !noalias !3000
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr @7, ptr %i.bhj, align 8, !noalias !3000
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.cv, ptr %i.bhk, align 8, !noalias !3000
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr @15, ptr %i.bhl, align 8, !noalias !3000
  store i64 1, ptr %i.cy, align 8, !noalias !3000
  %.sroa.415.0..sroa_idx.i.i.i496 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cx, ptr %.sroa.415.0..sroa_idx.i.i.i496, align 8, !noalias !3000
  %.sroa.516.0..sroa_idx.i.i.i497 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i497, align 8, !noalias !3000
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.bhh, ptr %i.bhm, align 8, !noalias !3000
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bgv, ptr noundef nonnull %i.bhb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bhc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cy)
          to label %bb.yi unwind label %bb.xr, !noalias !2996

bb.yi:                                            ; preds = %bb.yh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !3000
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.yj:                                            ; preds = %bb.xr
  %i.bhn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2996
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.yi, %bb.yg, %bb.yd, %bb.yc, %bb.yb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.df)
          to label %bb.yl unwind label %bb.yk

.body.i489:                                       ; preds = %bb.yk, %bb.xr, %bb.xo
  %.pn10.i490 = phi { ptr, i32 } [ %i.bfk, %bb.xo ], [ %i.bhq, %bb.yk ], [ %i.bfo, %bb.xr ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !2959
  call void @llvm.experimental.noalias.scope.decl(metadata !3008)
  call void @llvm.experimental.noalias.scope.decl(metadata !3011)
  %i.bho = load ptr, ptr %i.bfj, align 8, !alias.scope !3014, !noalias !2959, !noundef !4 ; 2 uses
  %i.bhp = icmp eq ptr %i.bho, null
  br i1 %i.bhp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i485, label %bb.yp

bb.yk:                                            ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider31ignore_configured_endpoint_urls40ignore_configured_endpoint_urls_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.bhq = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %.not.i.i559 = icmp eq ptr %.val.i558, null
  br i1 %.not.i.i559, label %bb.aaa, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  %i.bkc = atomicrmw add ptr %.val.i558, i64 1 monotonic, align 8, !noalias !3051
  %i.bkd = icmp slt i64 %i.bkc, 0
  br i1 %i.bkd, label %bb.zy, label %bb.aaa

bb.zy:                                            ; preds = %bb.zx
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536: ; preds = %bb.abx, %bb.abw, %bb.abs, %bb.abr, %.body.i539, %bb.aar, %bb.aaq, %bb.aap, %bb.aan, %bb.aam, %bb.aal, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i535, %bb.zz
  %.pn12.i = phi { ptr, i32 } [ %i.bke, %bb.zz ], [ %i.bli, %bb.aaq ], [ %i.blc, %bb.aam ], [ %.pn8.i, %bb.abr ], [ %i.blc, %bb.aan ], [ %i.blc, %bb.aal ], [ %i.bli, %bb.aar ], [ %i.bli, %bb.aap ], [ %.pn8.i, %bb.abs ], [ %.pn8.i, %.body.i539 ], [ %.pn4.i, %bb.abx ], [ %.pn4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i535 ], [ %.pn4.i, %bb.abw ]
  store i8 2, ptr %i.bkk, align 8, !noalias !3047
  br label %.body561

bb.zz:                                            ; preds = %bb.abu
  %i.bke = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536

bb.aaa:                                           ; preds = %bb.zx, %bb.zw
  %i.bkf = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i558, ptr %i.bkf, align 8, !noalias !3047
  %i.bkg = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.bka, ptr %i.bkg, align 8, !noalias !3047
  %.sroa.8.0..sroa_idx.i560 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i560, align 8, !noalias !3047
  br label %bb.aad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i535: ; preds = %bb.abz, %bb.aby, %bb.aaj, %bb.aae
  %.pn4.i = phi { ptr, i32 } [ %i.bkz, %bb.aaj ], [ %i.bko, %bb.aby ], [ %i.bko, %bb.abz ], [ %i.bko, %bb.aae ] ; 3 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  %i.bki = load ptr, ptr %i.bkh, align 8, !alias.scope !3058, !noalias !3047, !noundef !4 ; 2 uses
  %i.bkj = icmp eq ptr %i.bki, null
  br i1 %i.bkj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536, label %bb.abw

bb.aab:                                           ; preds = %bb.zv
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #26
          to label %.noexc563 unwind label %bb.aca

.noexc563:                                        ; preds = %bb.aab
  unreachable

bb.aac:                                           ; preds = %bb.zv
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #26
          to label %.noexc564 unwind label %bb.aca

.noexc564:                                        ; preds = %bb.aac
  unreachable

bb.aad:                                           ; preds = %bb.aaa, %bb.zv
  %i.bkk = phi ptr [ %i.bjy, %bb.aaa ], [ %i.bjx, %bb.zv ] ; 3 uses
  %i.bkl = phi ptr [ %i.bjz, %bb.aaa ], [ %i.bjw, %bb.zv ] ; 2 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.bkn = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bkm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aaf unwind label %bb.aae, !noalias !3051 ; 2 uses

bb.aae:                                           ; preds = %bb.aad
  %i.bko = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.bkq = load i8, ptr %i.bkp, align 8, !range !102, !noalias !3047, !noundef !4
  %cond.i25.i534 = icmp eq i8 %i.bkq, 3
  br i1 %cond.i25.i534, label %bb.aby, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i535

bb.aaf:                                           ; preds = %bb.aad
  %i.bkr = extractvalue { i64, ptr } %i.bkn, 0
  %i.bks = extractvalue { i64, ptr } %i.bkn, 1
  %i.bkt = trunc nuw i64 %i.bkr to i1
  br i1 %i.bkt, label %bb.acb, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  %i.bku = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.bkv = load i8, ptr %i.bku, align 8, !range !102, !noalias !3047, !noundef !4
  %cond.i.i538 = icmp eq i8 %i.bkv, 3
  br i1 %cond.i.i538, label %bb.aah, label %bb.aak

bb.aah:                                           ; preds = %bb.aag
  %i.bkw = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.bkx = load i8, ptr %i.bkw, align 8, !range !102, !noalias !3047, !noundef !4
  %cond.i.i.i557 = icmp eq i8 %i.bkx, 3
  br i1 %cond.i.i.i557, label %bb.aai, label %bb.aak

bb.aai:                                           ; preds = %bb.aah
  %i.bky = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bky)
          to label %bb.aak unwind label %bb.aaj, !noalias !3051

bb.aaj:                                           ; preds = %bb.aai
  %i.bkz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit28.i535

bb.aak:                                           ; preds = %bb.aai, %bb.aah, %bb.aag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !3047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !3047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !3047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !3047
  store i64 -9223372036854775807, ptr %i.cp, align 8, !alias.scope !3059, !noalias !3047
  %i.bla = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 -9223372036854775807, ptr %i.bla, align 8, !alias.scope !3059, !noalias !3047
  %i.blb = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store i64 -9223372036854775807, ptr %i.blb, align 8, !alias.scope !3059, !noalias !3047
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.cp, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 16)
          to label %bb.aao unwind label %bb.aal, !noalias !3051

bb.aal:                                           ; preds = %bb.aak
  %i.blc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !3047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !3047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !3047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !3047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.0.i)
  %i.bld = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %i.ble = load ptr, ptr %i.bld, align 8, !alias.scope !3068, !noalias !3047, !noundef !4 ; 2 uses
  %i.blf = icmp eq ptr %i.ble, null
  br i1 %i.blf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536, label %bb.aam

bb.aam:                                           ; preds = %bb.aal
  %i.blg = atomicrmw sub ptr %i.ble, i64 1 release, align 8, !noalias !3069
  %i.blh = icmp eq i64 %i.blg, 1
  br i1 %i.blh, label %bb.aan, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536

bb.aan:                                           ; preds = %bb.aam
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bld) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536 unwind label %bb.abv, !noalias !3051

bb.aao:                                           ; preds = %bb.aak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !3047
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.cq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 12)
          to label %bb.aas unwind label %bb.aap, !noalias !3051

bb.aap:                                           ; preds = %bb.aao
  %i.bli = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !3047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !3047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !3047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.0.i)
  %i.blj = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3074)
  call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  %i.blk = load ptr, ptr %i.blj, align 8, !alias.scope !3080, !noalias !3047, !noundef !4 ; 2 uses
  %i.bll = icmp eq ptr %i.blk, null
  br i1 %i.bll, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536, label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap
  %i.blm = atomicrmw sub ptr %i.blk, i64 1 release, align 8, !noalias !3081
  %i.bln = icmp eq i64 %i.blm, 1
  br i1 %i.bln, label %bb.aar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536

bb.aar:                                           ; preds = %bb.aaq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.blj) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i536 unwind label %bb.abv, !noalias !3051

bb.aas:                                           ; preds = %bb.aao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !3047
  %i.blo = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 5 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue26validate_and_return_originNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueNvB2c_9parse_urlECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.blo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.bks)
          to label %bb.aau unwind label %bb.aat, !noalias !3051

bb.aat:                                           ; preds = %bb.aas
  %i.blp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !3047
  br label %.body.i539

bb.aau:                                           ; preds = %bb.aas
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !3047
  call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  %i.blq = load i64, ptr %i.cs, align 8, !range !20, !alias.scope !3089, !noalias !3091, !noundef !4
  %.not.i17.i = icmp eq i64 %i.blq, -9223372036854775808
  br i1 %.not.i17.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultTINtNtB5_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsjPG5xYjJYir_9aws_types6origin6OriginEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueEE7map_erruNCNCNvNtNtB3r_16default_provider12endpoint_url33endpoint_url_provider_with_origin00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !3092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cs, i64 48, i1 false), !noalias !3091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !3092
  %i.blr = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3093
  %i.bls = icmp ult i64 %i.blr, 4
  br i1 %i.bls, label %bb.aax, label %bb.abh

bb.aaw:                                           ; preds = %bb.abm, %bb.abk, %bb.abj, %bb.abf, %.noexc20.i.i.i555, %bb.abe, %bb.abc, %bb.aaz, %bb.aay
  %i.blt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co) #22
          to label %.body.i539 unwind label %bb.abo, !noalias !3096

bb.aax:                                           ; preds = %bb.aav
  %i.blu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3093 ; 3 uses
  switch i8 %i.blu, label %bb.aay [
    i8 0, label %bb.abh
    i8 1, label %bb.aaz
    i8 2, label %bb.aaz
  ], !prof !2452

bb.aay:                                           ; preds = %bb.aax
  %i.blv = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin0010___CALLSITE)
          to label %bb.aba unwind label %bb.aaw, !noalias !3097 ; 2 uses

bb.aaz:                                           ; preds = %bb.aax, %bb.aba, %bb.aax
  %.sroa.06.0.i.i.i548 = phi i8 [ %i.blv, %bb.aba ], [ %i.blu, %bb.aax ], [ %i.blu, %bb.aax ]
  %i.blw = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin0010___CALLSITE, align 8, !noalias !3093, !nonnull !4, !align !19, !noundef !4
  %i.blx = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.blw, i8 noundef %.sroa.06.0.i.i.i548)
          to label %bb.abb unwind label %bb.aaw, !noalias !3097

bb.aba:                                           ; preds = %bb.aay
  %i.bly = icmp eq i8 %i.blv, 0
  br i1 %i.bly, label %bb.abh, label %bb.aaz

bb.abb:                                           ; preds = %bb.aaz
  br i1 %i.blx, label %bb.abc, label %bb.abh

bb.abc:                                           ; preds = %bb.abb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !3093
  %i.blz = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin0010___CALLSITE, align 8, !noalias !3093, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !3093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !3093
  store ptr @12, ptr %i.cl, align 8, !noalias !3093
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr inttoptr (i64 77 to ptr), ptr %i.bmb, align 8, !noalias !3093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !3093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !3093
  store ptr %i.co, ptr %i.cj, align 8, !noalias !3093
  store ptr %i.cj, ptr %i.ck, align 8, !noalias !3093
  store ptr %i.cl, ptr %i.cm, align 8, !noalias !3093
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr @7, ptr %i.bmc, align 8, !noalias !3093
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.ck, ptr %i.bmd, align 8, !noalias !3093
  %i.bme = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr @13, ptr %i.bme, align 8, !noalias !3093
  store i64 1, ptr %i.cn, align 8, !noalias !3093
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i549 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cm, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i549, align 8, !noalias !3093
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i550 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i550, align 8, !noalias !3093
  %.sroa.4.0..sroa_idx.i.i.i551 = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.bma, ptr %.sroa.4.0..sroa_idx.i.i.i551, align 8, !noalias !3093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !3093
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.blz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn)
          to label %.noexc.i.i.i552 unwind label %bb.aaw, !noalias !3096

.noexc.i.i.i552:                                  ; preds = %bb.abc
  %i.bmf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3098
  %i.bmg = icmp eq i8 %i.bmf, 0
  br i1 %i.bmg, label %bb.abd, label %bb.abg

bb.abd:                                           ; preds = %.noexc.i.i.i552
  %i.bmh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3098 ; 2 uses
  %i.bmi = icmp ult i64 %i.bmh, 6
  call void @llvm.assume(i1 %i.bmi)
  %i.bmj = icmp samesign ugt i64 %i.bmh, 1
  br i1 %i.bmj, label %bb.abe, label %bb.abg

bb.abe:                                           ; preds = %bb.abd
  %i.bmk = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin0010___CALLSITE, align 8, !noalias !3098, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 32
  %i.bmm = load ptr, ptr %i.bml, align 8, !noalias !3096, !nonnull !4, !noundef !4
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmk, i64 40
  %i.bmo = load i64, ptr %i.bmn, align 8, !noalias !3096, !noundef !4
  store i64 2, ptr %i.cc, align 8, !noalias !3098
  %.sroa.3.0..sroa_idx.i.i.i.i553 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.bmm, ptr %.sroa.3.0..sroa_idx.i.i.i.i553, align 8, !noalias !3098
  %.sroa.5.0..sroa_idx.i.i.i.i554 = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %i.bmo, ptr %.sroa.5.0..sroa_idx.i.i.i.i554, align 8, !noalias !3098
  %i.bmp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i555 unwind label %bb.aaw, !noalias !3096 ; 2 uses

.noexc20.i.i.i555:                                ; preds = %bb.abe
  %i.bmq = extractvalue { ptr, ptr } %i.bmp, 0    ; 2 uses
  %i.bmr = extractvalue { ptr, ptr } %i.bmp, 1    ; 2 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 24
  %i.bmt = load ptr, ptr %i.bms, align 8, !invariant.load !4, !noalias !3096, !nonnull !4
  %i.bmu = invoke noundef zeroext i1 %i.bmt(ptr noundef %i.bmq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #25
          to label %.noexc21.i.i.i556 unwind label %bb.aaw, !noalias !3096, !inline_history !3101

.noexc21.i.i.i556:                                ; preds = %.noexc20.i.i.i555
  br i1 %i.bmu, label %bb.abf, label %bb.abg

bb.abf:                                           ; preds = %.noexc21.i.i.i556
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bmk, ptr noundef nonnull %i.bmq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bmr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn)
          to label %bb.abg unwind label %bb.aaw, !noalias !3096

bb.abg:                                           ; preds = %bb.abf, %.noexc21.i.i.i556, %bb.abd, %.noexc.i.i.i552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !3093
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.abh:                                           ; preds = %bb.abb, %bb.aba, %bb.aax, %bb.aav
  %i.bmv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3093
  %i.bmw = icmp eq i8 %i.bmv, 0
  br i1 %i.bmw, label %bb.abi, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.abi:                                           ; preds = %bb.abh
  %i.bmx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3093 ; 2 uses
  %i.bmy = icmp ult i64 %i.bmx, 6
  call void @llvm.assume(i1 %i.bmy)
  %i.bmz = icmp samesign ugt i64 %i.bmx, 1
  br i1 %i.bmz, label %bb.abj, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.abj:                                           ; preds = %bb.abi
  %i.bna = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin0010___CALLSITE, align 8, !noalias !3093, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 32
  %i.bnc = load ptr, ptr %i.bnb, align 8, !noalias !3097, !nonnull !4, !noundef !4
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bna, i64 40
  %i.bne = load i64, ptr %i.bnd, align 8, !noalias !3097, !noundef !4
  store i64 2, ptr %i.ci, align 8, !noalias !3093
  %.sroa.3.0..sroa_idx.i.i.i544 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bnc, ptr %.sroa.3.0..sroa_idx.i.i.i544, align 8, !noalias !3093
  %.sroa.513.0..sroa_idx.i.i.i545 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.bne, ptr %.sroa.513.0..sroa_idx.i.i.i545, align 8, !noalias !3093
  %i.bnf = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.abk unwind label %bb.aaw, !noalias !3097 ; 2 uses

bb.abk:                                           ; preds = %bb.abj
  %i.bng = extractvalue { ptr, ptr } %i.bnf, 0    ; 2 uses
  %i.bnh = extractvalue { ptr, ptr } %i.bnf, 1    ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 24
  %i.bnj = load ptr, ptr %i.bni, align 8, !invariant.load !4, !noalias !3097, !nonnull !4
  %i.bnk = invoke noundef zeroext i1 %i.bnj(ptr noundef %i.bng, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %bb.abl unwind label %bb.aaw, !noalias !3097

bb.abl:                                           ; preds = %bb.abk
  br i1 %i.bnk, label %bb.abm, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.abm:                                           ; preds = %bb.abl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !3093
  %i.bnl = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin0010___CALLSITE, align 8, !noalias !3093, !nonnull !4, !align !19, !noundef !4
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !3093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !3093
  store ptr @12, ptr %i.cf, align 8, !noalias !3093
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr inttoptr (i64 77 to ptr), ptr %i.bnn, align 8, !noalias !3093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !3093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !3093
  store ptr %i.co, ptr %i.cd, align 8, !noalias !3093
  store ptr %i.cd, ptr %i.ce, align 8, !noalias !3093
  store ptr %i.cf, ptr %i.cg, align 8, !noalias !3093
  %i.bno = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr @7, ptr %i.bno, align 8, !noalias !3093
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %i.ce, ptr %i.bnp, align 8, !noalias !3093
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr @13, ptr %i.bnq, align 8, !noalias !3093
  store i64 1, ptr %i.ch, align 8, !noalias !3093
  %.sroa.415.0..sroa_idx.i.i.i546 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cg, ptr %.sroa.415.0..sroa_idx.i.i.i546, align 8, !noalias !3093
  %.sroa.516.0..sroa_idx.i.i.i547 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i547, align 8, !noalias !3093
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.bnm, ptr %i.bnr, align 8, !noalias !3093
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bna, ptr noundef nonnull %i.bng, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bnh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ch)
          to label %bb.abn unwind label %bb.aaw, !noalias !3096

bb.abn:                                           ; preds = %bb.abm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !3093
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.abo:                                           ; preds = %bb.aaw
  %i.bns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !3096
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.abn, %bb.abl, %bb.abi, %bb.abh, %bb.abg
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultTINtNtB5_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsjPG5xYjJYir_9aws_types6origin6OriginEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueEE7map_erruNCNCNvNtNtB3r_16default_provider12endpoint_url33endpoint_url_provider_with_origin00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i unwind label %bb.abp, !noalias !3051

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultTINtNtB5_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsjPG5xYjJYir_9aws_types6origin6OriginEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueEE7map_erruNCNCNvNtNtB3r_16default_provider12endpoint_url33endpoint_url_provider_with_origin00ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i: ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider12endpoint_url33endpoint_url_provider_with_origin00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !3092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !3092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !3047
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultTINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsjPG5xYjJYir_9aws_types6origin6OriginEuE17unwrap_or_defaultCs9rVkZwOUgsI_13deltalake_aws.exit.i

.body.i539:                                       ; preds = %bb.abp, %bb.aaw, %bb.aat
  %.pn8.i = phi { ptr, i32 } [ %i.blp, %bb.aat ], [ %i.bnv, %bb.abp ], [ %i.blt, %bb.aaw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !3047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3102)
end_hunk_6
begin_hunk_7_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a

.thread1289:                                      ; preds = %bb.afx
  %i.bvs = getelementptr inbounds nuw i8, ptr %1, i64 1688
  store ptr %i.bvs, ptr %i.bpq, align 8
  %.sroa.8963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3096
  store i8 0, ptr %.sroa.8963.0..sroa_idx, align 8
  %i.bvt = getelementptr inbounds nuw i8, ptr %1, i64 2600
  %i.bvu = getelementptr inbounds nuw i8, ptr %1, i64 3096
  br label %bb.agb

bb.afz:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.afp, %bb.afn, %bb.afl
  %.pn187.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.buq, %bb.afp ], [ %i.bum, %bb.afn ], [ %i.buc, %bb.afl ] ; 4 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %1, i64 2583
  %i.bvw = load i8, ptr %i.bvv, align 1, !range !5, !noundef !4
  %i.bvx = trunc nuw i8 %i.bvw to i1
  br i1 %i.bvx, label %bb.aqv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

.body588:                                         ; preds = %bb.afd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.bvy = phi ptr [ %i.btf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.bpx, %bb.afd ]
  %.pn160 = phi { ptr, i32 } [ %.pn24.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaB04DkjCm5a_10aws_config15provider_config14ProviderConfigEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.btw, %bb.afd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9955)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCsaB04DkjCm5a_10aws_config16default_provider5tokenNtBO_7Builder5build0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bvy) #22
          to label %bb.afh unwind label %bb.bk

bb.aga:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.io)
  %.phi.trans.insert1171 = getelementptr inbounds nuw i8, ptr %1, i64 3096
  %.pre1172 = load i8, ptr %.phi.trans.insert1171, align 8, !range !102, !noalias !3173
  %i.bvz = getelementptr inbounds nuw i8, ptr %1, i64 2600 ; 3 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %1, i64 3096 ; 2 uses
  switch i8 %.pre1172, label %default.unreachable1278 [
    i8 0, label %bb.agb
    i8 1, label %bb.agg
    i8 2, label %bb.agh
    i8 3, label %bb.agi
  ]

bb.agb:                                           ; preds = %.thread1289, %bb.aga
  %i.bwb = phi ptr [ %i.bvu, %.thread1289 ], [ %i.bwa, %bb.aga ]
  %i.bwc = phi ptr [ %i.bvt, %.thread1289 ], [ %i.bvz, %bb.aga ] ; 2 uses
  %i.bwd = load ptr, ptr %i.bwc, align 8, !noalias !3173, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.bwe = getelementptr i8, ptr %i.bwd, i64 136
  %.val.i612 = load ptr, ptr %i.bwe, align 8, !noundef !4 ; 3 uses
  %.not.i.i613 = icmp eq ptr %.val.i612, null
  br i1 %.not.i.i613, label %bb.agf, label %bb.agc

bb.agc:                                           ; preds = %bb.agb
  %i.bwf = atomicrmw add ptr %.val.i612, i64 1 monotonic, align 8
  %i.bwg = icmp slt i64 %i.bwf, 0
  br i1 %i.bwg, label %bb.agd, label %bb.agf

bb.agd:                                           ; preds = %bb.agc
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit20.i: ; preds = %bb.ahx, %bb.ahw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i, %bb.age
  %.pn12.i591 = phi { ptr, i32 } [ %i.bwh, %bb.age ], [ %.pn10.i590, %bb.ahx ], [ %.pn10.i590, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i ], [ %.pn10.i590, %bb.ahw ]
  store i8 2, ptr %i.bwk, align 8, !noalias !3173
  br label %.body615

bb.age:                                           ; preds = %bb.ahv
  %i.bwh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit20.i

bb.agf:                                           ; preds = %bb.agc, %bb.agb
  %i.bwi = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i612, ptr %i.bwi, align 8, !noalias !3173
  %i.bwj = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.bwd, ptr %i.bwj, align 8, !noalias !3173
  %.sroa.8.0..sroa_idx.i614 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i614, align 8, !noalias !3173
  br label %bb.agi

bb.agg:                                           ; preds = %bb.aga
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #26
          to label %.noexc617 unwind label %bb.aib

.noexc617:                                        ; preds = %bb.agg
  unreachable

bb.agh:                                           ; preds = %bb.aga
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #26
          to label %.noexc618 unwind label %bb.aib

.noexc618:                                        ; preds = %bb.agh
  unreachable

bb.agi:                                           ; preds = %bb.agf, %bb.aga
  %i.bwk = phi ptr [ %i.bwb, %bb.agf ], [ %i.bwa, %bb.aga ] ; 3 uses
  %i.bwl = phi ptr [ %i.bwc, %bb.agf ], [ %i.bvz, %bb.aga ]
  %i.bwm = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.bwn = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bwm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.agk unwind label %bb.agj   ; 2 uses

bb.agj:                                           ; preds = %bb.agi
  %i.bwo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.bwq = load i8, ptr %i.bwp, align 8, !range !102, !noalias !3173, !noundef !4
  %cond.i21.i = icmp eq i8 %i.bwq, 3
  br i1 %cond.i21.i, label %bb.ahy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i

bb.agk:                                           ; preds = %bb.agi
  %i.bwr = extractvalue { i64, ptr } %i.bwn, 0
  %i.bws = extractvalue { i64, ptr } %i.bwn, 1
  %i.bwt = trunc nuw i64 %i.bwr to i1
  br i1 %i.bwt, label %bb.aic, label %bb.agl

bb.agl:                                           ; preds = %bb.agk
  %i.bwu = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.bwv = load i8, ptr %i.bwu, align 8, !range !102, !noalias !3173, !noundef !4
  %cond.i.i592 = icmp eq i8 %i.bwv, 3
  br i1 %cond.i.i592, label %bb.agm, label %bb.agp

bb.agm:                                           ; preds = %bb.agl
  %i.bww = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.bwx = load i8, ptr %i.bww, align 8, !range !102, !noalias !3173, !noundef !4
  %cond.i.i.i611 = icmp eq i8 %i.bwx, 3
  br i1 %cond.i.i.i611, label %bb.agn, label %bb.agp

bb.agn:                                           ; preds = %bb.agm
  %i.bwy = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.bwy)
          to label %bb.agp unwind label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  %i.bwz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i

bb.agp:                                           ; preds = %bb.agn, %bb.agm, %bb.agl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !3173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !3173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !3173
  store i64 -9223372036854775807, ptr %i.bm, align 8, !alias.scope !3176, !noalias !3173
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 -9223372036854775807, ptr %i.bxa, align 8, !alias.scope !3176, !noalias !3173
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 -9223372036854775807, ptr %i.bxb, align 8, !alias.scope !3176, !noalias !3173
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 32)
          to label %bb.agr unwind label %bb.agq

bb.agq:                                           ; preds = %bb.agp
  %i.bxc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3173
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i

bb.agr:                                           ; preds = %bb.agp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3173
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bn, ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 28)
          to label %bb.agt unwind label %bb.ags

bb.ags:                                           ; preds = %bb.agr
  %i.bxd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3173
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i

bb.agt:                                           ; preds = %bb.agr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3173
  %i.bxe = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 3 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26RequestChecksumCalculationNtB1h_38UnknownRequestChecksumCalculationErrorNvYB1f_NtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bxe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.bws)
          to label %bb.agv unwind label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.bxf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3173
  br label %.body.i593

bb.agv:                                           ; preds = %bb.agt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3173
  call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  %i.bxg = load i64, ptr %i.bp, align 8, !range !20, !alias.scope !3179, !noalias !3173, !noundef !4
  %.not.i14.i = icmp eq i64 %i.bxg, -9223372036854775808
  br i1 %.not.i14.i, label %bb.ahr, label %bb.agw

bb.agw:                                           ; preds = %bb.agv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bp, i64 48, i1 false), !noalias !3173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3182
  %i.bxh = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3183
  %i.bxi = icmp ult i64 %i.bxh, 4
  br i1 %i.bxi, label %bb.agy, label %bb.ahi

bb.agx:                                           ; preds = %bb.ahn, %bb.ahl, %bb.ahk, %bb.ahg, %.noexc20.i.i.i609, %bb.ahf, %bb.ahd, %bb.aha, %bb.agz
  %i.bxj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config38UnknownRequestChecksumCalculationErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bl) #22
          to label %.body.i593 unwind label %bb.ahp, !noalias !3179

bb.agy:                                           ; preds = %bb.agw
  %i.bxk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3183 ; 3 uses
  switch i8 %i.bxk, label %bb.agz [
    i8 0, label %bb.ahi
    i8 1, label %bb.aha
    i8 2, label %bb.aha
  ], !prof !2452

bb.agz:                                           ; preds = %bb.agy
  %i.bxl = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0010___CALLSITE)
          to label %bb.ahb unwind label %bb.agx, !noalias !3186 ; 2 uses

bb.aha:                                           ; preds = %bb.agy, %bb.ahb, %bb.agy
  %.sroa.06.0.i.i.i602 = phi i8 [ %i.bxl, %bb.ahb ], [ %i.bxk, %bb.agy ], [ %i.bxk, %bb.agy ]
  %i.bxm = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0010___CALLSITE, align 8, !noalias !3183, !nonnull !4, !align !19, !noundef !4
  %i.bxn = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bxm, i8 noundef %.sroa.06.0.i.i.i602)
          to label %bb.ahc unwind label %bb.agx, !noalias !3186

bb.ahb:                                           ; preds = %bb.agz
  %i.bxo = icmp eq i8 %i.bxl, 0
  br i1 %i.bxo, label %bb.ahi, label %bb.aha

bb.ahc:                                           ; preds = %bb.aha
  br i1 %i.bxn, label %bb.ahd, label %bb.ahi

bb.ahd:                                           ; preds = %bb.ahc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !3183
  %i.bxp = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0010___CALLSITE, align 8, !noalias !3183, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !3183
  store ptr @25, ptr %i.bi, align 8, !noalias !3183
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr inttoptr (i64 109 to ptr), ptr %i.bxr, align 8, !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3183
  store ptr %i.bl, ptr %i.bg, align 8, !noalias !3183
  store ptr %i.bg, ptr %i.bh, align 8, !noalias !3183
  store ptr %i.bi, ptr %i.bj, align 8, !noalias !3183
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @7, ptr %i.bxs, align 8, !noalias !3183
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bh, ptr %i.bxt, align 8, !noalias !3183
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr @26, ptr %i.bxu, align 8, !noalias !3183
  store i64 1, ptr %i.bk, align 8, !noalias !3183
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i603 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i603, align 8, !noalias !3183
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i604 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i604, align 8, !noalias !3183
  %.sroa.4.0..sroa_idx.i.i.i605 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bxq, ptr %.sroa.4.0..sroa_idx.i.i.i605, align 8, !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3183
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bxp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %.noexc.i.i.i606 unwind label %bb.agx, !noalias !3179

.noexc.i.i.i606:                                  ; preds = %bb.ahd
  %i.bxv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3187
  %i.bxw = icmp eq i8 %i.bxv, 0
  br i1 %i.bxw, label %bb.ahe, label %bb.ahh

bb.ahe:                                           ; preds = %.noexc.i.i.i606
  %i.bxx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3187 ; 2 uses
  %i.bxy = icmp ult i64 %i.bxx, 6
  call void @llvm.assume(i1 %i.bxy)
  %i.bxz = icmp samesign ugt i64 %i.bxx, 1
  br i1 %i.bxz, label %bb.ahf, label %bb.ahh

bb.ahf:                                           ; preds = %bb.ahe
  %i.bya = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0010___CALLSITE, align 8, !noalias !3187, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bya, i64 32
  %i.byc = load ptr, ptr %i.byb, align 8, !noalias !3179, !nonnull !4, !noundef !4
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bya, i64 40
  %i.bye = load i64, ptr %i.byd, align 8, !noalias !3179, !noundef !4
  store i64 2, ptr %i.az, align 8, !noalias !3187
  %.sroa.3.0..sroa_idx.i.i.i.i607 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.byc, ptr %.sroa.3.0..sroa_idx.i.i.i.i607, align 8, !noalias !3187
  %.sroa.5.0..sroa_idx.i.i.i.i608 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.bye, ptr %.sroa.5.0..sroa_idx.i.i.i.i608, align 8, !noalias !3187
  %i.byf = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i609 unwind label %bb.agx, !noalias !3179 ; 2 uses

.noexc20.i.i.i609:                                ; preds = %bb.ahf
  %i.byg = extractvalue { ptr, ptr } %i.byf, 0    ; 2 uses
  %i.byh = extractvalue { ptr, ptr } %i.byf, 1    ; 2 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 24
  %i.byj = load ptr, ptr %i.byi, align 8, !invariant.load !4, !noalias !3179, !nonnull !4
  %i.byk = invoke noundef zeroext i1 %i.byj(ptr noundef %i.byg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az) #25
          to label %.noexc21.i.i.i610 unwind label %bb.agx, !noalias !3179, !inline_history !3190

.noexc21.i.i.i610:                                ; preds = %.noexc20.i.i.i609
  br i1 %i.byk, label %bb.ahg, label %bb.ahh

bb.ahg:                                           ; preds = %.noexc21.i.i.i610
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bya, ptr noundef nonnull %i.byg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.byh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %bb.ahh unwind label %bb.agx, !noalias !3179

bb.ahh:                                           ; preds = %bb.ahg, %.noexc21.i.i.i610, %bb.ahe, %.noexc.i.i.i606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3183
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ahi:                                           ; preds = %bb.ahc, %bb.ahb, %bb.agy, %bb.agw
  %i.byl = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3183
  %i.bym = icmp eq i8 %i.byl, 0
  br i1 %i.bym, label %bb.ahj, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ahj:                                           ; preds = %bb.ahi
  %i.byn = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3183 ; 2 uses
  %i.byo = icmp ult i64 %i.byn, 6
  call void @llvm.assume(i1 %i.byo)
  %i.byp = icmp samesign ugt i64 %i.byn, 1
  br i1 %i.byp, label %bb.ahk, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ahk:                                           ; preds = %bb.ahj
  %i.byq = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0010___CALLSITE, align 8, !noalias !3183, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 32
  %i.bys = load ptr, ptr %i.byr, align 8, !noalias !3186, !nonnull !4, !noundef !4
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byq, i64 40
  %i.byu = load i64, ptr %i.byt, align 8, !noalias !3186, !noundef !4
  store i64 2, ptr %i.bf, align 8, !noalias !3183
  %.sroa.3.0..sroa_idx.i.i.i598 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bys, ptr %.sroa.3.0..sroa_idx.i.i.i598, align 8, !noalias !3183
  %.sroa.513.0..sroa_idx.i.i.i599 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.byu, ptr %.sroa.513.0..sroa_idx.i.i.i599, align 8, !noalias !3183
  %i.byv = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ahl unwind label %bb.agx, !noalias !3186 ; 2 uses

bb.ahl:                                           ; preds = %bb.ahk
  %i.byw = extractvalue { ptr, ptr } %i.byv, 0    ; 2 uses
  %i.byx = extractvalue { ptr, ptr } %i.byv, 1    ; 2 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 24
  %i.byz = load ptr, ptr %i.byy, align 8, !invariant.load !4, !noalias !3186, !nonnull !4
  %i.bza = invoke noundef zeroext i1 %i.byz(ptr noundef %i.byw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.ahm unwind label %bb.agx, !noalias !3186

bb.ahm:                                           ; preds = %bb.ahl
  br i1 %i.bza, label %bb.ahn, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ahn:                                           ; preds = %bb.ahm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !3183
  %i.bzb = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0010___CALLSITE, align 8, !noalias !3183, !nonnull !4, !align !19, !noundef !4
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.bzb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !3183
  store ptr @25, ptr %i.bc, align 8, !noalias !3183
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr inttoptr (i64 109 to ptr), ptr %i.bzd, align 8, !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3183
  store ptr %i.bl, ptr %i.ba, align 8, !noalias !3183
  store ptr %i.ba, ptr %i.bb, align 8, !noalias !3183
  store ptr %i.bc, ptr %i.bd, align 8, !noalias !3183
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @7, ptr %i.bze, align 8, !noalias !3183
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bb, ptr %i.bzf, align 8, !noalias !3183
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr @26, ptr %i.bzg, align 8, !noalias !3183
  store i64 1, ptr %i.be, align 8, !noalias !3183
  %.sroa.415.0..sroa_idx.i.i.i600 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %.sroa.415.0..sroa_idx.i.i.i600, align 8, !noalias !3183
  %.sroa.516.0..sroa_idx.i.i.i601 = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i601, align 8, !noalias !3183
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bzc, ptr %i.bzh, align 8, !noalias !3183
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.byq, ptr noundef nonnull %i.byw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.byx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be)
          to label %bb.aho unwind label %bb.agx, !noalias !3179

bb.aho:                                           ; preds = %bb.ahn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3183
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ahp:                                           ; preds = %bb.agx
  %i.bzi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !3179
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.aho, %bb.ahm, %bb.ahj, %bb.ahi, %bb.ahh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config38UnknownRequestChecksumCalculationErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bl)
          to label %.thread.i595 unwind label %bb.ahq

.body.i593:                                       ; preds = %bb.ahq, %bb.agx, %bb.agu
  %.pn8.i594 = phi { ptr, i32 } [ %i.bxf, %bb.agu ], [ %i.bzj, %bb.ahq ], [ %i.bxj, %bb.agx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3173
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i

bb.ahq:                                           ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.bzj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i593

.thread.i595:                                     ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
end_hunk_7
begin_hunk_8_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a

.thread1290:                                      ; preds = %bb.afy
  %i.cae = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.caf = getelementptr inbounds nuw i8, ptr %1, i64 2600
  store ptr %i.cae, ptr %i.caf, align 8
  %.sroa.8971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3096
  store i8 0, ptr %.sroa.8971.0..sroa_idx, align 8
  %i.cag = getelementptr inbounds nuw i8, ptr %1, i64 2600
  %i.cah = getelementptr inbounds nuw i8, ptr %1, i64 3096
  br label %bb.aih

.body615:                                         ; preds = %bb.aib, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit20.i
  %i.cai = phi ptr [ %i.bwl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit20.i ], [ %i.bvz, %bb.aib ]
  %.pn168 = phi { ptr, i32 } [ %.pn12.i591, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit20.i ], [ %i.caa, %bb.aib ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37request_checksum_calculation_provider0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.cai) #22
          to label %bb.aif unwind label %bb.bk

bb.aif:                                           ; preds = %.body701, %.body659, %.body615, %bb.amy
  %.pn187.pn.pn = phi { ptr, i32 } [ %.pn187.pn, %bb.amy ], [ %.pn173, %.body659 ], [ %.pn168, %.body615 ], [ %.pn178, %.body701 ] ; 4 uses
  %i.caj = getelementptr inbounds nuw i8, ptr %1, i64 2582
  %i.cak = load i8, ptr %i.caj, align 2, !range !5, !noundef !4
  %i.cal = trunc nuw i8 %i.cak to i1
  br i1 %i.cal, label %bb.aqs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aig:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.io)
  %.phi.trans.insert1173 = getelementptr inbounds nuw i8, ptr %1, i64 3096
  %.pre1174 = load i8, ptr %.phi.trans.insert1173, align 8, !range !102, !noalias !3215
  %i.cam = getelementptr inbounds nuw i8, ptr %1, i64 2600 ; 3 uses
  %i.can = getelementptr inbounds nuw i8, ptr %1, i64 3096 ; 2 uses
  switch i8 %.pre1174, label %default.unreachable1278 [
    i8 0, label %bb.aih
    i8 1, label %bb.aim
    i8 2, label %bb.ain
    i8 3, label %bb.aio
  ]

bb.aih:                                           ; preds = %.thread1290, %bb.aig
  %i.cao = phi ptr [ %i.cah, %.thread1290 ], [ %i.can, %bb.aig ]
  %i.cap = phi ptr [ %i.cag, %.thread1290 ], [ %i.cam, %bb.aig ] ; 2 uses
  %i.caq = load ptr, ptr %i.cap, align 8, !noalias !3215, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.car = getelementptr i8, ptr %i.caq, i64 136
  %.val.i655 = load ptr, ptr %i.car, align 8, !noundef !4 ; 3 uses
  %.not.i.i656 = icmp eq ptr %.val.i655, null
  br i1 %.not.i.i656, label %bb.ail, label %bb.aii

bb.aii:                                           ; preds = %bb.aih
  %i.cas = atomicrmw add ptr %.val.i655, i64 1 monotonic, align 8
  %i.cat = icmp slt i64 %i.cas, 0
  br i1 %i.cat, label %bb.aij, label %bb.ail

bb.aij:                                           ; preds = %bb.aii
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit20.i630: ; preds = %bb.akd, %bb.akc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i628, %bb.aik
  %.pn12.i631 = phi { ptr, i32 } [ %i.cau, %bb.aik ], [ %.pn10.i629, %bb.akd ], [ %.pn10.i629, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i628 ], [ %.pn10.i629, %bb.akc ]
  store i8 2, ptr %i.cax, align 8, !noalias !3215
  br label %.body659

bb.aik:                                           ; preds = %bb.akb
  %i.cau = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit20.i630

bb.ail:                                           ; preds = %bb.aii, %bb.aih
  %i.cav = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i655, ptr %i.cav, align 8, !noalias !3215
  %i.caw = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.caq, ptr %i.caw, align 8, !noalias !3215
  %.sroa.8.0..sroa_idx.i657 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i657, align 8, !noalias !3215
  br label %bb.aio

bb.aim:                                           ; preds = %bb.aig
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #26
          to label %.noexc661 unwind label %bb.akh

.noexc661:                                        ; preds = %bb.aim
  unreachable

bb.ain:                                           ; preds = %bb.aig
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #26
          to label %.noexc662 unwind label %bb.akh

.noexc662:                                        ; preds = %bb.ain
  unreachable

bb.aio:                                           ; preds = %bb.ail, %bb.aig
  %i.cax = phi ptr [ %i.cao, %bb.ail ], [ %i.can, %bb.aig ] ; 3 uses
  %i.cay = phi ptr [ %i.cap, %bb.ail ], [ %i.cam, %bb.aig ]
  %i.caz = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.cba = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.caz, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aiq unwind label %bb.aip   ; 2 uses

bb.aip:                                           ; preds = %bb.aio
  %i.cbb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cbc = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.cbd = load i8, ptr %i.cbc, align 8, !range !102, !noalias !3215, !noundef !4
  %cond.i21.i627 = icmp eq i8 %i.cbd, 3
  br i1 %cond.i21.i627, label %bb.ake, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i628

bb.aiq:                                           ; preds = %bb.aio
  %i.cbe = extractvalue { i64, ptr } %i.cba, 0
  %i.cbf = extractvalue { i64, ptr } %i.cba, 1
  %i.cbg = trunc nuw i64 %i.cbe to i1
  br i1 %i.cbg, label %bb.aki, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.cbh = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.cbi = load i8, ptr %i.cbh, align 8, !range !102, !noalias !3215, !noundef !4
  %cond.i.i633 = icmp eq i8 %i.cbi, 3
  br i1 %cond.i.i633, label %bb.ais, label %bb.aiv

bb.ais:                                           ; preds = %bb.air
  %i.cbj = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.cbk = load i8, ptr %i.cbj, align 8, !range !102, !noalias !3215, !noundef !4
  %cond.i.i.i654 = icmp eq i8 %i.cbk, 3
  br i1 %cond.i.i.i654, label %bb.ait, label %bb.aiv

bb.ait:                                           ; preds = %bb.ais
  %i.cbl = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.cbl)
          to label %bb.aiv unwind label %bb.aiu

bb.aiu:                                           ; preds = %bb.ait
  %i.cbm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i628

bb.aiv:                                           ; preds = %bb.ait, %bb.ais, %bb.air
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !3215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !3215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3215
  store i64 -9223372036854775807, ptr %i.av, align 8, !alias.scope !3218, !noalias !3215
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 -9223372036854775807, ptr %i.cbn, align 8, !alias.scope !3218, !noalias !3215
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i64 -9223372036854775807, ptr %i.cbo, align 8, !alias.scope !3218, !noalias !3215
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 32)
          to label %bb.aix unwind label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  %i.cbp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3215
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i628

bb.aix:                                           ; preds = %bb.aiv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3215
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.aw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 28)
          to label %bb.aiz unwind label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix
  %i.cbq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3215
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i628

bb.aiz:                                           ; preds = %bb.aix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3215
  %i.cbr = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 3 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26ResponseChecksumValidationNtB1h_38UnknownResponseChecksumValidationErrorNvYB1f_NtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cbr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.cbf)
          to label %bb.ajb unwind label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.cbs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3215
  br label %.body.i634

bb.ajb:                                           ; preds = %bb.aiz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3215
  call void @llvm.experimental.noalias.scope.decl(metadata !3221)
  %i.cbt = load i64, ptr %i.ay, align 8, !range !20, !alias.scope !3221, !noalias !3215, !noundef !4
  %.not.i14.i636 = icmp eq i64 %i.cbt, -9223372036854775808
  br i1 %.not.i14.i636, label %bb.ajx, label %bb.ajc

bb.ajc:                                           ; preds = %bb.ajb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !3215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3224
  %i.cbu = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3225
  %i.cbv = icmp ult i64 %i.cbu, 4
  br i1 %i.cbv, label %bb.aje, label %bb.ajo

bb.ajd:                                           ; preds = %bb.ajt, %bb.ajr, %bb.ajq, %bb.ajm, %.noexc20.i.i.i651, %bb.ajl, %bb.ajj, %bb.ajg, %bb.ajf
  %i.cbw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config38UnknownResponseChecksumValidationErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.au) #22
          to label %.body.i634 unwind label %bb.ajv, !noalias !3221

bb.aje:                                           ; preds = %bb.ajc
  %i.cbx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3225 ; 3 uses
  switch i8 %i.cbx, label %bb.ajf [
    i8 0, label %bb.ajo
    i8 1, label %bb.ajg
    i8 2, label %bb.ajg
  ], !prof !2452

bb.ajf:                                           ; preds = %bb.aje
  %i.cby = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider0010___CALLSITE)
          to label %bb.ajh unwind label %bb.ajd, !noalias !3228 ; 2 uses

bb.ajg:                                           ; preds = %bb.aje, %bb.ajh, %bb.aje
  %.sroa.06.0.i.i.i644 = phi i8 [ %i.cby, %bb.ajh ], [ %i.cbx, %bb.aje ], [ %i.cbx, %bb.aje ]
  %i.cbz = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider0010___CALLSITE, align 8, !noalias !3225, !nonnull !4, !align !19, !noundef !4
  %i.cca = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cbz, i8 noundef %.sroa.06.0.i.i.i644)
          to label %bb.aji unwind label %bb.ajd, !noalias !3228

bb.ajh:                                           ; preds = %bb.ajf
  %i.ccb = icmp eq i8 %i.cby, 0
  br i1 %i.ccb, label %bb.ajo, label %bb.ajg

bb.aji:                                           ; preds = %bb.ajg
  br i1 %i.cca, label %bb.ajj, label %bb.ajo

bb.ajj:                                           ; preds = %bb.aji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3225
  %i.ccc = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider0010___CALLSITE, align 8, !noalias !3225, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3225
  store ptr @27, ptr %i.ar, align 8, !noalias !3225
  %i.cce = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr inttoptr (i64 109 to ptr), ptr %i.cce, align 8, !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3225
  store ptr %i.au, ptr %i.ap, align 8, !noalias !3225
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !3225
  store ptr %i.ar, ptr %i.as, align 8, !noalias !3225
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @7, ptr %i.ccf, align 8, !noalias !3225
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.aq, ptr %i.ccg, align 8, !noalias !3225
  %i.cch = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @28, ptr %i.cch, align 8, !noalias !3225
  store i64 1, ptr %i.at, align 8, !noalias !3225
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i645 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i645, align 8, !noalias !3225
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i646 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i646, align 8, !noalias !3225
  %.sroa.4.0..sroa_idx.i.i.i647 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.ccd, ptr %.sroa.4.0..sroa_idx.i.i.i647, align 8, !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3225
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ccc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc.i.i.i648 unwind label %bb.ajd, !noalias !3221

.noexc.i.i.i648:                                  ; preds = %bb.ajj
  %i.cci = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3229
  %i.ccj = icmp eq i8 %i.cci, 0
  br i1 %i.ccj, label %bb.ajk, label %bb.ajn

bb.ajk:                                           ; preds = %.noexc.i.i.i648
  %i.cck = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3229 ; 2 uses
  %i.ccl = icmp ult i64 %i.cck, 6
  call void @llvm.assume(i1 %i.ccl)
  %i.ccm = icmp samesign ugt i64 %i.cck, 1
  br i1 %i.ccm, label %bb.ajl, label %bb.ajn

bb.ajl:                                           ; preds = %bb.ajk
  %i.ccn = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider0010___CALLSITE, align 8, !noalias !3229, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 32
  %i.ccp = load ptr, ptr %i.cco, align 8, !noalias !3221, !nonnull !4, !noundef !4
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccn, i64 40
  %i.ccr = load i64, ptr %i.ccq, align 8, !noalias !3221, !noundef !4
  store i64 2, ptr %i.ai, align 8, !noalias !3229
  %.sroa.3.0..sroa_idx.i.i.i.i649 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ccp, ptr %.sroa.3.0..sroa_idx.i.i.i.i649, align 8, !noalias !3229
  %.sroa.5.0..sroa_idx.i.i.i.i650 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.ccr, ptr %.sroa.5.0..sroa_idx.i.i.i.i650, align 8, !noalias !3229
  %i.ccs = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i651 unwind label %bb.ajd, !noalias !3221 ; 2 uses

.noexc20.i.i.i651:                                ; preds = %bb.ajl
  %i.cct = extractvalue { ptr, ptr } %i.ccs, 0    ; 2 uses
  %i.ccu = extractvalue { ptr, ptr } %i.ccs, 1    ; 2 uses
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccu, i64 24
  %i.ccw = load ptr, ptr %i.ccv, align 8, !invariant.load !4, !noalias !3221, !nonnull !4
  %i.ccx = invoke noundef zeroext i1 %i.ccw(ptr noundef %i.cct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai) #25
          to label %.noexc21.i.i.i652 unwind label %bb.ajd, !noalias !3221, !inline_history !3232

.noexc21.i.i.i652:                                ; preds = %.noexc20.i.i.i651
  br i1 %i.ccx, label %bb.ajm, label %bb.ajn

bb.ajm:                                           ; preds = %.noexc21.i.i.i652
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ccn, ptr noundef nonnull %i.cct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ccu, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %bb.ajn unwind label %bb.ajd, !noalias !3221

bb.ajn:                                           ; preds = %bb.ajm, %.noexc21.i.i.i652, %bb.ajk, %.noexc.i.i.i648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3225
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ajo:                                           ; preds = %bb.aji, %bb.ajh, %bb.aje, %bb.ajc
  %i.ccy = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3225
  %i.ccz = icmp eq i8 %i.ccy, 0
  br i1 %i.ccz, label %bb.ajp, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ajp:                                           ; preds = %bb.ajo
  %i.cda = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3225 ; 2 uses
  %i.cdb = icmp ult i64 %i.cda, 6
  call void @llvm.assume(i1 %i.cdb)
  %i.cdc = icmp samesign ugt i64 %i.cda, 1
  br i1 %i.cdc, label %bb.ajq, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ajq:                                           ; preds = %bb.ajp
  %i.cdd = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider0010___CALLSITE, align 8, !noalias !3225, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 32
  %i.cdf = load ptr, ptr %i.cde, align 8, !noalias !3228, !nonnull !4, !noundef !4
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdd, i64 40
  %i.cdh = load i64, ptr %i.cdg, align 8, !noalias !3228, !noundef !4
  store i64 2, ptr %i.ao, align 8, !noalias !3225
  %.sroa.3.0..sroa_idx.i.i.i640 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.cdf, ptr %.sroa.3.0..sroa_idx.i.i.i640, align 8, !noalias !3225
  %.sroa.513.0..sroa_idx.i.i.i641 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.cdh, ptr %.sroa.513.0..sroa_idx.i.i.i641, align 8, !noalias !3225
  %i.cdi = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ajr unwind label %bb.ajd, !noalias !3228 ; 2 uses

bb.ajr:                                           ; preds = %bb.ajq
  %i.cdj = extractvalue { ptr, ptr } %i.cdi, 0    ; 2 uses
  %i.cdk = extractvalue { ptr, ptr } %i.cdi, 1    ; 2 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdk, i64 24
  %i.cdm = load ptr, ptr %i.cdl, align 8, !invariant.load !4, !noalias !3228, !nonnull !4
  %i.cdn = invoke noundef zeroext i1 %i.cdm(ptr noundef %i.cdj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %bb.ajs unwind label %bb.ajd, !noalias !3228

bb.ajs:                                           ; preds = %bb.ajr
  br i1 %i.cdn, label %bb.ajt, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ajt:                                           ; preds = %bb.ajs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3225
  %i.cdo = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider0010___CALLSITE, align 8, !noalias !3225, !nonnull !4, !align !19, !noundef !4
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3225
  store ptr @27, ptr %i.al, align 8, !noalias !3225
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 109 to ptr), ptr %i.cdq, align 8, !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3225
  store ptr %i.au, ptr %i.aj, align 8, !noalias !3225
  store ptr %i.aj, ptr %i.ak, align 8, !noalias !3225
  store ptr %i.al, ptr %i.am, align 8, !noalias !3225
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @7, ptr %i.cdr, align 8, !noalias !3225
  %i.cds = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ak, ptr %i.cds, align 8, !noalias !3225
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @28, ptr %i.cdt, align 8, !noalias !3225
  store i64 1, ptr %i.an, align 8, !noalias !3225
  %.sroa.415.0..sroa_idx.i.i.i642 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %.sroa.415.0..sroa_idx.i.i.i642, align 8, !noalias !3225
  %.sroa.516.0..sroa_idx.i.i.i643 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i643, align 8, !noalias !3225
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.cdp, ptr %i.cdu, align 8, !noalias !3225
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cdd, ptr noundef nonnull %i.cdj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cdk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
          to label %bb.aju unwind label %bb.ajd, !noalias !3221

bb.aju:                                           ; preds = %bb.ajt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3225
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ajv:                                           ; preds = %bb.ajd
  %i.cdv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !3221
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.aju, %bb.ajs, %bb.ajp, %bb.ajo, %bb.ajn
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config38UnknownResponseChecksumValidationErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %.thread.i637 unwind label %bb.ajw

.body.i634:                                       ; preds = %bb.ajw, %bb.ajd, %bb.aja
  %.pn8.i635 = phi { ptr, i32 } [ %i.cbs, %bb.aja ], [ %i.cdw, %bb.ajw ], [ %i.cbw, %bb.ajd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3215
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit24.i628

bb.ajw:                                           ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.cdw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i634

.thread.i637:                                     ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider9checksums37response_checksum_validation_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
end_hunk_8
begin_hunk_9_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.cez = phi ptr [ %i.cet, %.thread1291 ], [ %i.cew, %bb.akl ] ; 2 uses
  %i.cfa = load ptr, ptr %i.cez, align 8, !noalias !3257, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.cfb = getelementptr i8, ptr %i.cfa, i64 136
  %.val.i697 = load ptr, ptr %i.cfb, align 8, !noundef !4 ; 3 uses
  %.not.i.i698 = icmp eq ptr %.val.i697, null
  br i1 %.not.i.i698, label %bb.akq, label %bb.akn

bb.akn:                                           ; preds = %bb.akm
  %i.cfc = atomicrmw add ptr %.val.i697, i64 1 monotonic, align 8
  %i.cfd = icmp slt i64 %i.cfc, 0
  br i1 %i.cfd, label %bb.ako, label %bb.akq

bb.ako:                                           ; preds = %bb.akn
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674: ; preds = %bb.amo, %bb.amn, %bb.aml, %bb.amk, %.body.i678, %bb.alh, %bb.alg, %bb.alf, %bb.ald, %bb.alc, %bb.alb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i672, %bb.akp
  %.pn14.i675 = phi { ptr, i32 } [ %i.cfe, %bb.akp ], [ %i.cgi, %bb.alg ], [ %i.cgc, %bb.alc ], [ %.pn10.i679, %bb.amk ], [ %i.cgc, %bb.ald ], [ %i.cgc, %bb.alb ], [ %i.cgi, %bb.alh ], [ %i.cgi, %bb.alf ], [ %.pn10.i679, %bb.aml ], [ %.pn10.i679, %.body.i678 ], [ %.pn6.i673, %bb.amo ], [ %.pn6.i673, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i672 ], [ %.pn6.i673, %bb.amn ]
  store i8 2, ptr %i.cfk, align 8, !noalias !3257
  br label %.body701

bb.akp:                                           ; preds = %bb.amj
  %i.cfe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674

bb.akq:                                           ; preds = %bb.akn, %bb.akm
  %i.cff = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i697, ptr %i.cff, align 8, !noalias !3257
  %i.cfg = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.cfa, ptr %i.cfg, align 8, !noalias !3257
  %.sroa.8.0..sroa_idx.i699 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i699, align 8, !noalias !3257
  br label %bb.akt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i672: ; preds = %bb.amq, %bb.amp, %bb.akz, %bb.aku
  %.pn6.i673 = phi { ptr, i32 } [ %i.cfz, %bb.akz ], [ %i.cfo, %bb.amp ], [ %i.cfo, %bb.amq ], [ %i.cfo, %bb.aku ] ; 3 uses
  %i.cfh = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3260)
  call void @llvm.experimental.noalias.scope.decl(metadata !3263)
  %i.cfi = load ptr, ptr %i.cfh, align 8, !alias.scope !3266, !noalias !3257, !noundef !4 ; 2 uses
  %i.cfj = icmp eq ptr %i.cfi, null
  br i1 %i.cfj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674, label %bb.amn

bb.akr:                                           ; preds = %bb.akl
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #26
          to label %.noexc703 unwind label %bb.amr

.noexc703:                                        ; preds = %bb.akr
  unreachable

bb.aks:                                           ; preds = %bb.akl
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #26
          to label %.noexc704 unwind label %bb.amr

.noexc704:                                        ; preds = %bb.aks
  unreachable

bb.akt:                                           ; preds = %bb.akq, %bb.akl
  %i.cfk = phi ptr [ %i.cey, %bb.akq ], [ %i.cex, %bb.akl ] ; 3 uses
  %i.cfl = phi ptr [ %i.cez, %bb.akq ], [ %i.cew, %bb.akl ]
  %i.cfm = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.cfn = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.cfm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.akv unwind label %bb.aku   ; 2 uses

bb.aku:                                           ; preds = %bb.akt
  %i.cfo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cfp = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.cfq = load i8, ptr %i.cfp, align 8, !range !102, !noalias !3257, !noundef !4
  %cond.i27.i671 = icmp eq i8 %i.cfq, 3
  br i1 %cond.i27.i671, label %bb.amp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i672

bb.akv:                                           ; preds = %bb.akt
  %i.cfr = extractvalue { i64, ptr } %i.cfn, 0
  %i.cfs = extractvalue { i64, ptr } %i.cfn, 1
  %i.cft = trunc nuw i64 %i.cfr to i1
  br i1 %i.cft, label %bb.ams, label %bb.akw

bb.akw:                                           ; preds = %bb.akv
  %i.cfu = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.cfv = load i8, ptr %i.cfu, align 8, !range !102, !noalias !3257, !noundef !4
  %cond.i.i677 = icmp eq i8 %i.cfv, 3
  br i1 %cond.i.i677, label %bb.akx, label %bb.ala

bb.akx:                                           ; preds = %bb.akw
  %i.cfw = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.cfx = load i8, ptr %i.cfw, align 8, !range !102, !noalias !3257, !noundef !4
  %cond.i.i.i696 = icmp eq i8 %i.cfx, 3
  br i1 %cond.i.i.i696, label %bb.aky, label %bb.ala

bb.aky:                                           ; preds = %bb.akx
  %i.cfy = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.cfy)
          to label %bb.ala unwind label %bb.akz

bb.akz:                                           ; preds = %bb.aky
  %i.cfz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit30.i672

bb.ala:                                           ; preds = %bb.aky, %bb.akx, %bb.akw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3257
  store i64 -9223372036854775807, ptr %i.ae, align 8, !alias.scope !3267, !noalias !3257
  %i.cga = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 -9223372036854775807, ptr %i.cga, align 8, !alias.scope !3267, !noalias !3257
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 -9223372036854775807, ptr %i.cgb, align 8, !alias.scope !3267, !noalias !3257
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 28)
          to label %bb.ale unwind label %bb.alb

bb.alb:                                           ; preds = %bb.ala
  %i.cgc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3257
  %i.cgd = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  %i.cge = load ptr, ptr %i.cgd, align 8, !alias.scope !3276, !noalias !3257, !noundef !4 ; 2 uses
  %i.cgf = icmp eq ptr %i.cge, null
  br i1 %i.cgf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674, label %bb.alc

bb.alc:                                           ; preds = %bb.alb
  %i.cgg = atomicrmw sub ptr %i.cge, i64 1 release, align 8, !noalias !3277
  %i.cgh = icmp eq i64 %i.cgg, 1
  br i1 %i.cgh, label %bb.ald, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674

bb.ald:                                           ; preds = %bb.alc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cgd) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674 unwind label %bb.amm

bb.ale:                                           ; preds = %bb.ala
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3257
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 24)
          to label %bb.ali unwind label %bb.alf

bb.alf:                                           ; preds = %bb.ale
  %i.cgi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3257
  %i.cgj = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  %i.cgk = load ptr, ptr %i.cgj, align 8, !alias.scope !3288, !noalias !3257, !noundef !4 ; 2 uses
  %i.cgl = icmp eq ptr %i.cgk, null
  br i1 %i.cgl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674, label %bb.alg

bb.alg:                                           ; preds = %bb.alf
  %i.cgm = atomicrmw sub ptr %i.cgk, i64 1 release, align 8, !noalias !3289
  %i.cgn = icmp eq i64 %i.cgm, 1
  br i1 %i.cgn, label %bb.alh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674

bb.alh:                                           ; preds = %bb.alg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cgj) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674 unwind label %bb.amm

bb.ali:                                           ; preds = %bb.ale
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3257
  %i.cgo = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 5 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCsjPG5xYjJYir_9aws_types15endpoint_config21AccountIdEndpointModeNtB1h_31AccountIdEndpointModeParseErrorNvYB1f_NtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cgo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.cfs)
          to label %bb.alk unwind label %bb.alj

bb.alj:                                           ; preds = %bb.ali
  %i.cgp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3257
  br label %.body.i678

bb.alk:                                           ; preds = %bb.ali
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3257
  call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.cgq = load i64, ptr %i.ah, align 8, !range !20, !alias.scope !3294, !noalias !3257, !noundef !4
  %.not.i19.i680 = icmp eq i64 %i.cgq, -9223372036854775808
  br i1 %.not.i19.i680, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtCsjPG5xYjJYir_9aws_types15endpoint_config21AccountIdEndpointModeEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtB16_31AccountIdEndpointModeParseErrorEE7map_erruNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.all

bb.all:                                           ; preds = %bb.alk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !3257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3297
  %i.cgr = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3298
  %i.cgs = icmp ult i64 %i.cgr, 4
  br i1 %i.cgs, label %bb.aln, label %bb.alx

bb.alm:                                           ; preds = %bb.amc, %bb.ama, %bb.alz, %bb.alv, %.noexc20.i.i.i694, %bb.alu, %bb.als, %bb.alp, %bb.alo
  %i.cgt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ad) #22
          to label %.body.i678 unwind label %bb.ame, !noalias !3294

bb.aln:                                           ; preds = %bb.all
  %i.cgu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3298 ; 3 uses
  switch i8 %i.cgu, label %bb.alo [
    i8 0, label %bb.alx
    i8 1, label %bb.alp
    i8 2, label %bb.alp
  ], !prof !2452

bb.alo:                                           ; preds = %bb.aln
  %i.cgv = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider0010___CALLSITE)
          to label %bb.alq unwind label %bb.alm, !noalias !3301 ; 2 uses

bb.alp:                                           ; preds = %bb.aln, %bb.alq, %bb.aln
  %.sroa.06.0.i.i.i687 = phi i8 [ %i.cgv, %bb.alq ], [ %i.cgu, %bb.aln ], [ %i.cgu, %bb.aln ]
  %i.cgw = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider0010___CALLSITE, align 8, !noalias !3298, !nonnull !4, !align !19, !noundef !4
  %i.cgx = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cgw, i8 noundef %.sroa.06.0.i.i.i687)
          to label %bb.alr unwind label %bb.alm, !noalias !3301

bb.alq:                                           ; preds = %bb.alo
  %i.cgy = icmp eq i8 %i.cgv, 0
  br i1 %i.cgy, label %bb.alx, label %bb.alp

bb.alr:                                           ; preds = %bb.alp
  br i1 %i.cgx, label %bb.als, label %bb.alx

bb.als:                                           ; preds = %bb.alr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3298
  %i.cgz = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider0010___CALLSITE, align 8, !noalias !3298, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3298
  store ptr @18, ptr %i.aa, align 8, !noalias !3298
  %i.chb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.chb, align 8, !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3298
  store ptr %i.ad, ptr %i.y, align 8, !noalias !3298
  store ptr %i.y, ptr %i.z, align 8, !noalias !3298
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !3298
  %i.chc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @7, ptr %i.chc, align 8, !noalias !3298
  %i.chd = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.z, ptr %i.chd, align 8, !noalias !3298
  %i.che = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @19, ptr %i.che, align 8, !noalias !3298
  store i64 1, ptr %i.ac, align 8, !noalias !3298
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i688 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i688, align 8, !noalias !3298
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i689 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i689, align 8, !noalias !3298
  %.sroa.4.0..sroa_idx.i.i.i690 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.cha, ptr %.sroa.4.0..sroa_idx.i.i.i690, align 8, !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3298
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cgz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %.noexc.i.i.i691 unwind label %bb.alm, !noalias !3294

.noexc.i.i.i691:                                  ; preds = %bb.als
  %i.chf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3302
  %i.chg = icmp eq i8 %i.chf, 0
  br i1 %i.chg, label %bb.alt, label %bb.alw

bb.alt:                                           ; preds = %.noexc.i.i.i691
  %i.chh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3302 ; 2 uses
  %i.chi = icmp ult i64 %i.chh, 6
  call void @llvm.assume(i1 %i.chi)
  %i.chj = icmp samesign ugt i64 %i.chh, 1
  br i1 %i.chj, label %bb.alu, label %bb.alw

bb.alu:                                           ; preds = %bb.alt
  %i.chk = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider0010___CALLSITE, align 8, !noalias !3302, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chk, i64 32
  %i.chm = load ptr, ptr %i.chl, align 8, !noalias !3294, !nonnull !4, !noundef !4
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chk, i64 40
  %i.cho = load i64, ptr %i.chn, align 8, !noalias !3294, !noundef !4
  store i64 2, ptr %i.r, align 8, !noalias !3302
  %.sroa.3.0..sroa_idx.i.i.i.i692 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.chm, ptr %.sroa.3.0..sroa_idx.i.i.i.i692, align 8, !noalias !3302
  %.sroa.5.0..sroa_idx.i.i.i.i693 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.cho, ptr %.sroa.5.0..sroa_idx.i.i.i.i693, align 8, !noalias !3302
  %i.chp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i694 unwind label %bb.alm, !noalias !3294 ; 2 uses

.noexc20.i.i.i694:                                ; preds = %bb.alu
  %i.chq = extractvalue { ptr, ptr } %i.chp, 0    ; 2 uses
  %i.chr = extractvalue { ptr, ptr } %i.chp, 1    ; 2 uses
  %i.chs = getelementptr inbounds nuw i8, ptr %i.chr, i64 24
  %i.cht = load ptr, ptr %i.chs, align 8, !invariant.load !4, !noalias !3294, !nonnull !4
  %i.chu = invoke noundef zeroext i1 %i.cht(ptr noundef %i.chq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) #25
          to label %.noexc21.i.i.i695 unwind label %bb.alm, !noalias !3294, !inline_history !3305

.noexc21.i.i.i695:                                ; preds = %.noexc20.i.i.i694
  br i1 %i.chu, label %bb.alv, label %bb.alw

bb.alv:                                           ; preds = %.noexc21.i.i.i695
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.chk, ptr noundef nonnull %i.chq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.chr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %bb.alw unwind label %bb.alm, !noalias !3294

bb.alw:                                           ; preds = %bb.alv, %.noexc21.i.i.i695, %bb.alt, %.noexc.i.i.i691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3298
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.alx:                                           ; preds = %bb.alr, %bb.alq, %bb.aln, %bb.all
  %i.chv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3298
  %i.chw = icmp eq i8 %i.chv, 0
  br i1 %i.chw, label %bb.aly, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aly:                                           ; preds = %bb.alx
  %i.chx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3298 ; 2 uses
  %i.chy = icmp ult i64 %i.chx, 6
  call void @llvm.assume(i1 %i.chy)
  %i.chz = icmp samesign ugt i64 %i.chx, 1
  br i1 %i.chz, label %bb.alz, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.alz:                                           ; preds = %bb.aly
  %i.cia = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider0010___CALLSITE, align 8, !noalias !3298, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 32
  %i.cic = load ptr, ptr %i.cib, align 8, !noalias !3301, !nonnull !4, !noundef !4
  %i.cid = getelementptr inbounds nuw i8, ptr %i.cia, i64 40
  %i.cie = load i64, ptr %i.cid, align 8, !noalias !3301, !noundef !4
  store i64 2, ptr %i.x, align 8, !noalias !3298
  %.sroa.3.0..sroa_idx.i.i.i683 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.cic, ptr %.sroa.3.0..sroa_idx.i.i.i683, align 8, !noalias !3298
  %.sroa.513.0..sroa_idx.i.i.i684 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.cie, ptr %.sroa.513.0..sroa_idx.i.i.i684, align 8, !noalias !3298
  %i.cif = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ama unwind label %bb.alm, !noalias !3301 ; 2 uses

bb.ama:                                           ; preds = %bb.alz
  %i.cig = extractvalue { ptr, ptr } %i.cif, 0    ; 2 uses
  %i.cih = extractvalue { ptr, ptr } %i.cif, 1    ; 2 uses
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 24
  %i.cij = load ptr, ptr %i.cii, align 8, !invariant.load !4, !noalias !3301, !nonnull !4
  %i.cik = invoke noundef zeroext i1 %i.cij(ptr noundef %i.cig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.amb unwind label %bb.alm, !noalias !3301

bb.amb:                                           ; preds = %bb.ama
  br i1 %i.cik, label %bb.amc, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.amc:                                           ; preds = %bb.amb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3298
  %i.cil = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider0010___CALLSITE, align 8, !noalias !3298, !nonnull !4, !align !19, !noundef !4
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cil, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3298
  store ptr @18, ptr %i.u, align 8, !noalias !3298
  %i.cin = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.cin, align 8, !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3298
  store ptr %i.ad, ptr %i.s, align 8, !noalias !3298
  store ptr %i.s, ptr %i.t, align 8, !noalias !3298
  store ptr %i.u, ptr %i.v, align 8, !noalias !3298
  %i.cio = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @7, ptr %i.cio, align 8, !noalias !3298
  %i.cip = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.t, ptr %i.cip, align 8, !noalias !3298
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @19, ptr %i.ciq, align 8, !noalias !3298
  store i64 1, ptr %i.w, align 8, !noalias !3298
  %.sroa.415.0..sroa_idx.i.i.i685 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %.sroa.415.0..sroa_idx.i.i.i685, align 8, !noalias !3298
  %.sroa.516.0..sroa_idx.i.i.i686 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 2, ptr %.sroa.516.0..sroa_idx.i.i.i686, align 8, !noalias !3298
  %i.cir = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.cim, ptr %i.cir, align 8, !noalias !3298
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cia, ptr noundef nonnull %i.cig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cih, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %bb.amd unwind label %bb.alm, !noalias !3294

bb.amd:                                           ; preds = %bb.amc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3298
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ame:                                           ; preds = %bb.alm
  %i.cis = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !3294
  unreachable

_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.amd, %bb.amb, %bb.aly, %bb.alx, %bb.alw
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ad)
          to label %bb.amg unwind label %bb.amf

.body.i678:                                       ; preds = %bb.amf, %bb.alm, %bb.alj
  %.pn10.i679 = phi { ptr, i32 } [ %i.cgp, %bb.alj ], [ %i.civ, %bb.amf ], [ %i.cgt, %bb.alm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3257
  call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  %i.cit = load ptr, ptr %i.cgo, align 8, !alias.scope !3312, !noalias !3257, !noundef !4 ; 2 uses
  %i.ciu = icmp eq ptr %i.cit, null
  br i1 %i.ciu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i674, label %bb.amk

bb.amf:                                           ; preds = %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider24account_id_endpoint_mode33account_id_endpoint_mode_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.civ = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@_RNCNvMNtCsaB04DkjCm5a_10aws_config6loaderNtB4_12ConfigLoader4load0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %.not.i.i741 = icmp eq ptr %.val.i740, null
  br i1 %.not.i.i741, label %bb.ane, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.cka = atomicrmw add ptr %.val.i740, i64 1 monotonic, align 8, !noalias !3339
  %i.ckb = icmp slt i64 %i.cka, 0
  br i1 %i.ckb, label %bb.anc, label %bb.ane

bb.anc:                                           ; preds = %bb.anb
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717: ; preds = %bb.apc, %bb.apb, %bb.aoz, %bb.aoy, %bb.aox, %bb.anv, %bb.anu, %bb.ant, %bb.anr, %bb.anq, %bb.anp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715, %bb.and
  %.pn12.i718 = phi { ptr, i32 } [ %i.ckc, %bb.and ], [ %i.clg, %bb.anu ], [ %i.cla, %bb.anq ], [ %.pn8.i721, %bb.aoy ], [ %i.cla, %bb.anr ], [ %i.cla, %bb.anp ], [ %i.clg, %bb.anv ], [ %i.clg, %bb.ant ], [ %.pn8.i721, %bb.aoz ], [ %.pn8.i721, %bb.aox ], [ %.pn4.i716, %bb.apc ], [ %.pn4.i716, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715 ], [ %.pn4.i716, %bb.apb ]
  store i8 2, ptr %i.cki, align 8, !noalias !3335
  br label %.body743

bb.and:                                           ; preds = %bb.aow
  %i.ckc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717

bb.ane:                                           ; preds = %bb.anb, %bb.ana
  %i.ckd = getelementptr inbounds nuw i8, ptr %1, i64 2608
  store ptr %.val.i740, ptr %i.ckd, align 8, !noalias !3335
  %i.cke = getelementptr inbounds nuw i8, ptr %1, i64 2616
  store ptr %i.cjy, ptr %i.cke, align 8, !noalias !3335
  %.sroa.8.0..sroa_idx.i742 = getelementptr inbounds nuw i8, ptr %1, i64 3088
  store i8 0, ptr %.sroa.8.0..sroa_idx.i742, align 8, !noalias !3335
  br label %bb.anh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715: ; preds = %bb.ape, %bb.apd, %bb.ann, %bb.ani
  %.pn4.i716 = phi { ptr, i32 } [ %i.ckx, %bb.ann ], [ %i.ckm, %bb.apd ], [ %i.ckm, %bb.ape ], [ %i.ckm, %bb.ani ] ; 3 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  %i.ckg = load ptr, ptr %i.ckf, align 8, !alias.scope !3346, !noalias !3335, !noundef !4 ; 2 uses
  %i.ckh = icmp eq ptr %i.ckg, null
  br i1 %i.ckh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717, label %bb.apb

bb.anf:                                           ; preds = %bb.amz
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #26
          to label %.noexc745 unwind label %bb.apf

.noexc745:                                        ; preds = %bb.anf
  unreachable

bb.ang:                                           ; preds = %bb.amz
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #26
          to label %.noexc746 unwind label %bb.apf

.noexc746:                                        ; preds = %bb.ang
  unreachable

bb.anh:                                           ; preds = %bb.ane, %bb.amz
  %i.cki = phi ptr [ %i.cjw, %bb.ane ], [ %i.cjv, %bb.amz ] ; 3 uses
  %i.ckj = phi ptr [ %i.cjx, %bb.ane ], [ %i.cju, %bb.amz ]
  %i.ckk = getelementptr inbounds nuw i8, ptr %1, i64 2616
  %i.ckl = invoke fastcc { i64, ptr } @_RNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB7_14ProviderConfig7profile0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ckk, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.anj unwind label %bb.ani, !noalias !3339 ; 2 uses

bb.ani:                                           ; preds = %bb.anh
  %i.ckm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.cko = load i8, ptr %i.ckn, align 8, !range !102, !noalias !3335, !noundef !4
  %cond.i28.i714 = icmp eq i8 %i.cko, 3
  br i1 %cond.i28.i714, label %bb.apd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715

bb.anj:                                           ; preds = %bb.anh
  %i.ckp = extractvalue { i64, ptr } %i.ckl, 0
  %i.ckq = extractvalue { i64, ptr } %i.ckl, 1
  %i.ckr = trunc nuw i64 %i.ckp to i1
  br i1 %i.ckr, label %bb.apg, label %bb.ank

bb.ank:                                           ; preds = %bb.anj
  %i.cks = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.ckt = load i8, ptr %i.cks, align 8, !range !102, !noalias !3335, !noundef !4
  %cond.i.i720 = icmp eq i8 %i.ckt, 3
  br i1 %cond.i.i720, label %bb.anl, label %bb.ano

bb.anl:                                           ; preds = %bb.ank
  %i.cku = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %i.ckv = load i8, ptr %i.cku, align 8, !range !102, !noalias !3335, !noundef !4
  %cond.i.i.i739 = icmp eq i8 %i.ckv, 3
  br i1 %cond.i.i.i739, label %bb.anm, label %bb.ano

bb.anm:                                           ; preds = %bb.anl
  %i.ckw = getelementptr inbounds nuw i8, ptr %1, i64 2632
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_NtNtCskQDtHcQtBkN_5tokio4sync9once_cellINtBP_8OnceCellINtNtB4_6result6ResultNtNtNtCsat9blWvDIpa_11aws_runtime10env_config7section17EnvConfigSectionsNtNtB27_5error22EnvConfigFileLoadErrorEE11get_or_initNCNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtB4e_14ProviderConfig11try_profile00NCNCB46_00E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ckw)
          to label %bb.ano unwind label %bb.ann, !noalias !3339

bb.ann:                                           ; preds = %bb.anm
  %i.ckx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCsaB04DkjCm5a_10aws_config15provider_configNtBO_14ProviderConfig7profile0ECs9rVkZwOUgsI_13deltalake_aws.exit31.i715

bb.ano:                                           ; preds = %bb.anm, %bb.anl, %bb.ank
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3335
  store i64 -9223372036854775807, ptr %i.n, align 8, !alias.scope !3347, !noalias !3335
  %i.cky = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 -9223372036854775807, ptr %i.cky, align 8, !alias.scope !3347, !noalias !3335
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 -9223372036854775807, ptr %i.ckz, align 8, !alias.scope !3347, !noalias !3335
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue3env(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 26)
          to label %bb.ans unwind label %bb.anp, !noalias !3339

bb.anp:                                           ; preds = %bb.ano
  %i.cla = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %i.clb = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3350)
  call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  %i.clc = load ptr, ptr %i.clb, align 8, !alias.scope !3356, !noalias !3335, !noundef !4 ; 2 uses
  %i.cld = icmp eq ptr %i.clc, null
  br i1 %i.cld, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717, label %bb.anq

bb.anq:                                           ; preds = %bb.anp
  %i.cle = atomicrmw sub ptr %i.clc, i64 1 release, align 8, !noalias !3357
  %i.clf = icmp eq i64 %i.cle, 1
  br i1 %i.clf, label %bb.anr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717

bb.anr:                                           ; preds = %bb.anq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.clb) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 unwind label %bb.apa, !noalias !3339

bb.ans:                                           ; preds = %bb.ano
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3335
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue7profile(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 22)
          to label %bb.anw unwind label %bb.ant, !noalias !3339

bb.ant:                                           ; preds = %bb.ans
  %i.clg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3335
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %i.clh = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  %i.cli = load ptr, ptr %i.clh, align 8, !alias.scope !3368, !noalias !3335, !noundef !4 ; 2 uses
  %i.clj = icmp eq ptr %i.cli, null
  br i1 %i.clj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717, label %bb.anu

bb.anu:                                           ; preds = %bb.ant
  %i.clk = atomicrmw sub ptr %i.cli, i64 1 release, align 8, !noalias !3369
  %i.cll = icmp eq i64 %i.clk, 1
  br i1 %i.cll, label %bb.anv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717

bb.anv:                                           ; preds = %bb.anu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EE9drop_slowCsat9blWvDIpa_11aws_runtime(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.clh) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3EnvECs9rVkZwOUgsI_13deltalake_aws.exit.i717 unwind label %bb.apa, !noalias !3339

bb.anw:                                           ; preds = %bb.ans
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3335
  %i.clm = getelementptr inbounds nuw i8, ptr %1, i64 2608 ; 5 uses
  invoke void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvNvB2w_23parse_auth_scheme_namesECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.clm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %i.ckq)
          to label %bb.any unwind label %bb.anx, !noalias !3339

bb.anx:                                           ; preds = %bb.anw
  %i.cln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3335
  br label %bb.aox

bb.any:                                           ; preds = %bb.anw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3335
  call void @llvm.experimental.noalias.scope.decl(metadata !3374)
  call void @llvm.experimental.noalias.scope.decl(metadata !3377)
  %i.clo = load i64, ptr %i.q, align 8, !range !20, !alias.scope !3377, !noalias !3379, !noundef !4
  %.not.i17.i722 = icmp eq i64 %i.clo, -9223372036854775808
  br i1 %.not.i17.i722, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEE7map_erruNCNCNvB3k_31auth_scheme_preference_provider00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.anz

bb.anz:                                           ; preds = %bb.any
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !3379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3380
  %i.clp = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3381
  %i.clq = icmp ult i64 %i.clp, 4
  br i1 %i.clq, label %bb.aob, label %bb.aol

bb.aoa:                                           ; preds = %bb.aoq, %bb.aoo, %bb.aon, %bb.aoj, %.noexc20.i.i.i736, %bb.aoi, %bb.aog, %bb.aod, %bb.aoc
  %i.clr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigErrorNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m) #22
          to label %bb.aox unwind label %bb.aos, !noalias !3384

bb.aob:                                           ; preds = %bb.anz
  %i.cls = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3381 ; 3 uses
  switch i8 %i.cls, label %bb.aoc [
    i8 0, label %bb.aol
    i8 1, label %bb.aod
    i8 2, label %bb.aod
  ], !prof !2452

bb.aoc:                                           ; preds = %bb.aob
  %i.clt = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE)
          to label %bb.aoe unwind label %bb.aoa, !noalias !3385 ; 2 uses

bb.aod:                                           ; preds = %bb.aob, %bb.aoe, %bb.aob
  %.sroa.06.0.i.i.i729 = phi i8 [ %i.clt, %bb.aoe ], [ %i.cls, %bb.aob ], [ %i.cls, %bb.aob ]
  %i.clu = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE, align 8, !noalias !3381, !nonnull !4, !align !19, !noundef !4
  %i.clv = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.clu, i8 noundef %.sroa.06.0.i.i.i729)
          to label %bb.aof unwind label %bb.aoa, !noalias !3385

bb.aoe:                                           ; preds = %bb.aoc
  %i.clw = icmp eq i8 %i.clt, 0
  br i1 %i.clw, label %bb.aol, label %bb.aod

bb.aof:                                           ; preds = %bb.aod
  br i1 %i.clv, label %bb.aog, label %bb.aol

bb.aog:                                           ; preds = %bb.aof
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3381
  %i.clx = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE, align 8, !noalias !3381, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3381
  store ptr @16, ptr %i.j, align 8, !noalias !3381
  %i.clz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 81 to ptr), ptr %i.clz, align 8, !noalias !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3381
  store ptr %i.m, ptr %i.h, align 8, !noalias !3381
  store ptr %i.h, ptr %i.i, align 8, !noalias !3381
  store ptr %i.j, ptr %i.k, align 8, !noalias !3381
  %i.cma = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @7, ptr %i.cma, align 8, !noalias !3381
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.cmb, align 8, !noalias !3381
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @17, ptr %i.cmc, align 8, !noalias !3381
  store i64 1, ptr %i.l, align 8, !noalias !3381
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i730 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i730, align 8, !noalias !3381
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i731 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 2, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i731, align 8, !noalias !3381
  %.sroa.4.0..sroa_idx.i.i.i732 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.cly, ptr %.sroa.4.0..sroa_idx.i.i.i732, align 8, !noalias !3381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3381
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.clx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc.i.i.i733 unwind label %bb.aoa, !noalias !3384

.noexc.i.i.i733:                                  ; preds = %bb.aog
  %i.cmd = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3386
  %i.cme = icmp eq i8 %i.cmd, 0
  br i1 %i.cme, label %bb.aoh, label %bb.aok

bb.aoh:                                           ; preds = %.noexc.i.i.i733
  %i.cmf = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3386 ; 2 uses
  %i.cmg = icmp ult i64 %i.cmf, 6
  call void @llvm.assume(i1 %i.cmg)
  %i.cmh = icmp samesign ugt i64 %i.cmf, 1
  br i1 %i.cmh, label %bb.aoi, label %bb.aok

bb.aoi:                                           ; preds = %bb.aoh
  %i.cmi = load ptr, ptr @_RNvNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider0010___CALLSITE, align 8, !noalias !3386, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cmi, i64 32
  %i.cmk = load ptr, ptr %i.cmj, align 8, !noalias !3384, !nonnull !4, !noundef !4
  %i.cml = getelementptr inbounds nuw i8, ptr %i.cmi, i64 40
  %i.cmm = load i64, ptr %i.cml, align 8, !noalias !3384, !noundef !4
  store i64 2, ptr %i.a, align 8, !noalias !3386
  %.sroa.3.0..sroa_idx.i.i.i.i734 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cmk, ptr %.sroa.3.0..sroa_idx.i.i.i.i734, align 8, !noalias !3386
  %.sroa.5.0..sroa_idx.i.i.i.i735 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.cmm, ptr %.sroa.5.0..sroa_idx.i.i.i.i735, align 8, !noalias !3386
  %i.cmn = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc20.i.i.i736 unwind label %bb.aoa, !noalias !3384 ; 2 uses

.noexc20.i.i.i736:                                ; preds = %bb.aoi
  %i.cmo = extractvalue { ptr, ptr } %i.cmn, 0    ; 2 uses
  %i.cmp = extractvalue { ptr, ptr } %i.cmn, 1    ; 2 uses
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.cmp, i64 24
  %i.cmr = load ptr, ptr %i.cmq, align 8, !invariant.load !4, !noalias !3384, !nonnull !4
  %i.cms = invoke noundef zeroext i1 %i.cmr(ptr noundef %i.cmo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #25
          to label %.noexc21.i.i.i737 unwind label %bb.aoa, !noalias !3384, !inline_history !3389

.noexc21.i.i.i737:                                ; preds = %.noexc20.i.i.i736
  br i1 %i.cms, label %bb.aoj, label %bb.aok

bb.aoj:                                           ; preds = %.noexc21.i.i.i737
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cmi, ptr noundef nonnull %i.cmo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cmp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.aok unwind label %bb.aoa, !noalias !3384

bb.aok:                                           ; preds = %bb.aoj, %.noexc21.i.i.i737, %bb.aoh, %.noexc.i.i.i733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3381
  br label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aol:                                           ; preds = %bb.aof, %bb.aoe, %bb.aob, %bb.anz
  %i.cmt = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3381
  %i.cmu = icmp eq i8 %i.cmt, 0
  br i1 %i.cmu, label %bb.aom, label %_RNCNCNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference31auth_scheme_preference_provider00Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aom:                                           ; preds = %bb.aol
  %i.cmv = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3381 ; 2 uses
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

end_hunk_10
