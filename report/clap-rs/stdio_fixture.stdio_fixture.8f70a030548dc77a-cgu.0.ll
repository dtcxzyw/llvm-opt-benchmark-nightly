Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/stdio_fixture.stdio_fixture.8f70a030548dc77a-cgu.0?download=true
inline.NumInlined: 654
inline.NumDeleted: 466
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCscjwHxV1jUiA_13stdio_fixture4main:bb.a
  %.sroa.71035.0.copyload.pre = load i64, ptr %i.kn, align 8, !alias.scope !856 ; 2 uses
  %.sroa.81036.0.copyload.pre = load ptr, ptr %.sroa.440.0..sroa_idx.i343, align 8, !alias.scope !856 ; 2 uses
  %.pre1098 = load ptr, ptr %.sroa.432.0..sroa_idx.i339, align 8, !alias.scope !857, !noalias !848 ; 2 uses
  store i32 98, ptr %.pre1098, align 4, !noalias !858
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre1098, i64 4
  store i8 1, ptr %i.ks, align 4, !noalias !858
  store i64 1, ptr %.sroa.533.0..sroa_idx.i340, align 8, !alias.scope !857, !noalias !848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.01028, ptr noundef nonnull align 8 dereferenceable(344) %i.ai, i64 344, i1 false)
  %.sroa.101038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038.0..sroa_idx, i64 96, i1 false)
  %.sroa.111039.0.copyload = load i64, ptr %i.kc, align 8, !alias.scope !856 ; 2 uses
  %.sroa.121040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 496
  %.sroa.121040.0.copyload = load ptr, ptr %.sroa.121040.0..sroa_idx, align 8, !alias.scope !856 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.sroa.131041.sroa.2, ptr noundef nonnull align 8 dereferenceable(84) %i.kd, i64 84, i1 false)
  %.sroa.151043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043.0..sroa_idx, i64 3, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !859
  %i.kt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #19, !noalias !859 ; 4 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.ac, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357

bb.ac:                                            ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #22, !noalias !872
  unreachable

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscjwHxV1jUiA_13stdio_fixture.exit
  store ptr @49, ptr %i.kt, align 8, !noalias !873
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i64 6, ptr %i.kv, align 8, !noalias !906
  %i.kw = icmp eq i64 %.sroa.21029.0.copyload.pre, 0
  br i1 %i.kw, label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361, label %bb.ad

bb.ad:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41031.0.copyload.pre) ]
  %i.kx = shl nuw i64 %.sroa.21029.0.copyload.pre, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41031.0.copyload.pre, i64 noundef %i.kx, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !907
  br label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361

_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCscjwHxV1jUiA_13stdio_fixture.exit.i357, %bb.ad
  call void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 14) #19
  %.sroa.01078.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.41079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.41079.0.copyload = load ptr, ptr %.sroa.41079.0..sroa_idx, align 8
  %.sroa.51080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.51080.0.copyload = load i64, ptr %.sroa.51080.0..sroa_idx, align 8
  %.0.val.off.i362 = add i64 %.sroa.111039.0.copyload, -1
  %switch.i363 = icmp ult i64 %.0.val.off.i362, -2
  br i1 %switch.i363, label %bb.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364

bb.ae:                                            ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121040.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.121040.0.copyload, i64 noundef %.sroa.111039.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !908
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364: ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECscjwHxV1jUiA_13stdio_fixture.exit361, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !916
  %i.ky = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #19, !noalias !916 ; 8 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.af, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 48) #22, !noalias !926
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEECscjwHxV1jUiA_13stdio_fixture.exit364
  store ptr @51, ptr %i.ky, align 8, !noalias !927
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 5, ptr %i.la, align 8, !noalias !960
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr @52, ptr %i.lb, align 8, !noalias !927
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store i64 6, ptr %i.lc, align 8, !noalias !960
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  store ptr @53, ptr %i.ld, align 8, !noalias !927
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  store i64 6, ptr %i.le, align 8, !noalias !960
  %i.lf = icmp eq i64 %.sroa.71035.0.copyload.pre, 0
  br i1 %i.lf, label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.81036.0.copyload.pre) ]
  %i.lg = shl nuw i64 %.sroa.71035.0.copyload.pre, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.81036.0.copyload.pre, i64 noundef %i.lg, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !961
  br label %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.aj, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.01028, i64 344, i1 false)
  %.sroa.01008.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 344
  store i64 1, ptr %.sroa.01008.sroa.4.0..sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.01008.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 352
  store ptr %i.kt, ptr %.sroa.01008.sroa.5.0..sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.01008.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  store i64 1, ptr %.sroa.01008.sroa.6.0..sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.41009.0..sroa_idx1010 = getelementptr inbounds nuw i8, ptr %i.aj, i64 368
  store i64 3, ptr %.sroa.41009.0..sroa_idx1010, align 8, !alias.scope !962, !noalias !963
  %.sroa.61012.0..sroa_idx1013 = getelementptr inbounds nuw i8, ptr %i.aj, i64 376
  store ptr %i.ky, ptr %.sroa.61012.0..sroa_idx1013, align 8, !alias.scope !962, !noalias !963
  %.sroa.81015.0..sroa_idx1016 = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  store i64 3, ptr %.sroa.81015.0..sroa_idx1016, align 8, !alias.scope !962, !noalias !963
  %.sroa.91018.0..sroa_idx1019 = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.91018.0..sroa_idx1019, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.101038, i64 96, i1 false)
  %.sroa.91018.sroa.4.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 488
  store i64 %.sroa.01078.0.copyload, ptr %.sroa.91018.sroa.4.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.91018.sroa.5.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 496
  store ptr %.sroa.41079.0.copyload, ptr %.sroa.91018.sroa.5.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 504
  store i64 %.sroa.51080.0.copyload, ptr %.sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx, align 8, !alias.scope !962, !noalias !963
  %.sroa.91018.sroa.6.sroa.0.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %.sroa.91018.sroa.6.sroa.0.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(84) %.sroa.131041.sroa.2, i64 84, i1 false)
  %.sroa.91018.sroa.6.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 596
  store i8 1, ptr %.sroa.91018.sroa.6.sroa.4.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, align 4, !alias.scope !962, !noalias !963
  %.sroa.91018.sroa.6.sroa.5.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.91018.sroa.6.sroa.5.0..sroa.91018.sroa.6.0..sroa.91018.0..sroa_idx1019.sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.151043, i64 3, i1 false)
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.bm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.aj) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ah, ptr noundef nonnull align 8 dereferenceable(712) %i.bm, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ag, ptr noundef nonnull align 8 dereferenceable(712) %i.ah, i64 712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !964
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !968
  %i.lh = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 144, i64 noundef 8) #19, !noalias !968 ; 5 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.ah, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379, !prof !273

bb.ah:                                            ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #22, !noalias !968
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379: ; preds = %_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14default_valuesReAB1c_j3_ECscjwHxV1jUiA_13stdio_fixture.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  store i64 1, ptr %i.lh, align 8, !noalias !964
  %.sroa.4.0..sroa_idx.i380 = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i380, align 8, !noalias !964
  %.sroa.5.0..sroa_idx.i381 = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %.sroa.5.0..sroa_idx.i381, ptr noundef nonnull align 2 dereferenceable(126) @54, i64 126, i1 false), !noalias !971
  store ptr %i.lh, ptr %i.m, align 8, !noalias !964
  %i.lk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @5, ptr %i.lk, align 8, !noalias !964
  %i.ll = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false), !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !964
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.lj, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) @4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.m) #19, !noalias !972
  %i.lm = load ptr, ptr %i.l, align 8, !noalias !964, !noundef !10 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.ai

bb.ai:                                            ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379
  %i.lo = atomicrmw sub ptr %i.lm, i64 1 release, align 8, !noalias !973
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.aj, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #21, !noalias !972
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i379, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ah, ptr noundef nonnull align 8 dereferenceable(712) %i.ag, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !987
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !994
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %.sroa.09.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1001, !noalias !1005 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1001, !noalias !1005, !nonnull !10, !noundef !10 ; 5 uses
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.510.0.copyload.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !alias.scope !1001, !noalias !1005 ; 4 uses
  %.sroa.611.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.611.0.copyload.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i, align 8, !alias.scope !1001, !noalias !1005, !nonnull !10, !noundef !10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1006
  %i.lq = icmp eq ptr %.sroa.4.0.copyload.i.i.i, %.sroa.611.0.copyload.i.i.i
  br i1 %i.lq, label %bb.aq, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i.i, align 8, !noalias !1013 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !1006
  %i.ls = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64 ; 3 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub nuw i64 %i.ls, %i.lt                ; 2 uses
  %i.lv = udiv exact i64 %i.lu, 24
  %i.lw = call i64 @llvm.umax.i64(i64 %i.lv, i64 3)
  %..i.i.i.i.i.i = add nuw nsw i64 %i.lw, 1       ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.lu, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.al, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, !prof !1021

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %0 = mul nuw i64 %..i.i.i.i.i.i, 24             ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1022
  %i.lx = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %0, i64 noundef range(i64 1, 9) 8) #19, !noalias !1022 ; 5 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.al, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

bb.al:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.ak
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ undef, %bb.ak ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %bb.ak ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i) #22, !noalias !1006
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, i64 16, i1 false), !noalias !1006
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.lx, align 8, !noalias !1006
  store i64 %..i.i.i.i.i.i, ptr %i.e, align 8, !noalias !1006
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.lx, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1006
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.lz = icmp eq ptr %i.lr, %.sroa.611.0.copyload.i.i.i
  br i1 %i.lz, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, %bb.ap
  %i.ma = phi ptr [ %i.ms, %bb.ap ], [ %i.lx, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %i.mb = phi i64 [ %i.mu, %bb.ap ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i.i.i = phi ptr [ %i.mc, %bb.ap ], [ %i.lr, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i.i.i, align 8, !noalias !1031 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1041
  %i.md = icmp samesign ult i64 %i.mb, 384307168202282326
  call void @llvm.assume(i1 %i.md)
  %i.me = load i64, ptr %i.e, align 8, !range !9, !alias.scope !1042, !noalias !1043, !noundef !10
  %i.mf = icmp eq i64 %i.mb, %i.me
  br i1 %i.mf, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i, label %bb.ap

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i: ; preds = %bb.ap, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0.copyload512.i.i.i = phi i64 [ %i.mu, %bb.ap ], [ %i.mb, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i ]
  %.pre17.i.i.i.i.i = ptrtoint ptr %i.mc to i64
  %.pre18.i.i.i.i.i = sub nuw i64 %i.ls, %.pre17.i.i.i.i.i
  %.pre20.i.i.i.i.i = udiv exact i64 %.pre18.i.i.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.sroa.6.0.copyload5.i.i.i = phi i64 [ %.sroa.6.0.copyload512.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %.pre-phi21.i.i.i.i.i = phi i64 [ %.pre20.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mc, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ %i.lr, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.mg = icmp eq ptr %.sroa.611.0.copyload.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.mg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.mi = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mh, align 8, !range !9, !alias.scope !1044, !noalias !1047, !noundef !10 ; 2 uses
  %i.mj = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mk = getelementptr i8, ptr %i.mh, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mk, align 8, !alias.scope !1044, !noalias !1047, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1058
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = icmp eq i64 %i.mi, %.pre-phi21.i.i.i.i.i
  br i1 %i.ml, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i
  %i.mm = icmp eq i64 %.sroa.510.0.copyload.i.i.i, 0
  br i1 %i.mm, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i.i) ]
  %i.mn = mul nuw i64 %.sroa.510.0.copyload.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i.i, i64 noundef %i.mn, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1047
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.mo = ptrtoint ptr %i.mc to i64
  %i.mp = sub nuw i64 %i.ls, %i.mo
  %i.mq = udiv exact i64 %i.mp, 24
  %i.mr = add nuw nsw i64 %i.mq, 1
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.mb, i64 noundef %i.mr, i64 noundef 24) #19
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1042, !noalias !1043
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i, %bb.am
  %i.ms = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i ], [ %i.ma, %bb.am ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %i.mb ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1041
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %i.mt, align 8, !noalias !1041
  %i.mu = add nuw nsw i64 %i.mb, 1                ; 3 uses
  store i64 %i.mu, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1042, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  %i.mv = icmp eq ptr %i.mc, %.sroa.611.0.copyload.i.i.i
  br i1 %i.mv, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %bb.ao, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.e, align 8, !noalias !1059
  %.sroa.5.0.copyload3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1006
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i

bb.aq:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lr, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1006
  %i.mw = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64
  %i.mx = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i to i64
  %i.my = sub nuw i64 %i.mw, %i.mx
  %i.mz = udiv exact i64 %i.my, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.na = icmp eq ptr %.sroa.611.0.copyload.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.na, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aq ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.nc = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nb, align 8, !range !9, !alias.scope !1060, !noalias !1063, !noundef !10 ; 2 uses
  %i.nd = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.nd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ne = getelementptr i8, ptr %i.nb, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ne, align 8, !alias.scope !1060, !noalias !1063, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1074
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.nf = icmp eq i64 %i.nc, %i.mz
  br i1 %i.nf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.aq
  %i.ng = icmp eq i64 %.sroa.510.0.copyload.i.i.i, 0
  br i1 %i.ng, label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i.i) ]
  %i.nh = mul nuw i64 %.sroa.510.0.copyload.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i.i, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1063
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i

_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i: ; preds = %bb.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.sroa.6.0.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.as ], [ %.sroa.6.0.copyload5.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.as ], [ %.sroa.5.0.copyload3.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.as ], [ %.sroa.0.0.copyload1.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.h, align 8, !alias.scope !996, !noalias !1075
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !996, !noalias !1075
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 9 uses
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !996, !noalias !1075
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ah, i64 700
  %.val47.i.i = load i32, ptr %i.ni, align 4, !alias.scope !1076, !noalias !1077, !noundef !10 ; 2 uses
  %i.nj = and i32 %.val47.i.i, 2048
  %.not101.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not101.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i
  %.not.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %.not.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.aw, %bb.av, %bb.at, %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i
  %i.nk = phi i64 [ 0, %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i ], [ 1, %bb.aw ], [ 1, %bb.av ], [ 1, %bb.at ] ; 5 uses
  %i.nl = and i32 %.val47.i.i, 67108864
  %.not102.i.i = icmp eq i32 %i.nl, 0
  br i1 %.not102.i.i, label %bb.bx, label %bb.ca

bb.av:                                            ; preds = %bb.at
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !noalias !994, !nonnull !10, !noundef !10
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i, i64 16
  %i.np = load i64, ptr %i.no, align 8, !noalias !994, !noundef !10
  %i.nq = call { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nn, i64 noundef %i.np) #19, !noalias !994 ; 2 uses
  %i.nr = extractvalue { ptr, i64 } %i.nq, 0      ; 2 uses
  %.not41.i.i = icmp eq ptr %i.nr, null
  br i1 %.not41.i.i, label %bb.au, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ns = extractvalue { ptr, i64 } %i.nq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1078
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nr, i64 noundef %i.ns) #19, !noalias !994
  %i.nt = load i64, ptr %i.d, align 8, !range !262, !noalias !1078, !noundef !10
  %i.nu = trunc nuw i64 %i.nt to i1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !noalias !1078, !nonnull !10
  %i.nx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ny = load i64, ptr %i.nx, align 8, !noalias !1078 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1078
  br i1 %i.nu, label %bb.au, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !994
  %.not.i.i.i = icmp slt i64 %i.ny, 0
  br i1 %.not.i.i.i, label %bb.az, label %bb.ay, !prof !1021

bb.ay:                                            ; preds = %bb.ax
  %i.nz = icmp eq i64 %i.ny, 0
  br i1 %i.nz, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.ay
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
  %i.oa = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ny, i64 noundef range(i64 1, 9) 1) #19, !noalias !1081 ; 3 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %bb.az, label %bb.bw

bb.az:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.ax
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.ax ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ny) #22, !noalias !994
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i: ; preds = %bb.bw, %bb.ay
  %i.oc = phi ptr [ %i.oa, %bb.bw ], [ inttoptr (i64 1 to ptr), %bb.ay ] ; 2 uses
  store i64 %i.ny, ptr %i.g, align 8, !noalias !994
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.oc, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !994
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error5printCscjwHxV1jUiA_13stdio_fixture:bb.a
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9formattedCscjwHxV1jUiA_13stdio_fixture.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9formattedCscjwHxV1jUiA_13stdio_fixture.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !10, !align !94, !noundef !10
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = call noundef ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) #19
  %.val = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1254, !noundef !10 ; 2 uses
  %i.s = icmp eq i64 %.val, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6output3fmt9ColorizerECscjwHxV1jUiA_13stdio_fixture.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val9 = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1257
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6output3fmt9ColorizerECscjwHxV1jUiA_13stdio_fixture.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6output3fmt9ColorizerECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.r
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 5 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.val6 = load i128, ptr %2, align 8
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 16 ; 2 uses
  %i.h = add i64 %.sroa.8.016, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.017 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.8.016 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val = load i128, ptr %.sroa.0.017, align 8
  %i.j = icmp eq i128 %.val, %.val6
  br i1 %i.j, label %bb.f, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.k = load i64, ptr %1, align 8, !range !9, !alias.scope !1260, !noalias !1263, !noundef !10
  %i.l = icmp eq i64 %i.d, %i.k
  br i1 %i.l, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit

bb.c:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #21, !noalias !1263
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !1260, !noalias !1263
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %._crit_edge, %bb.c
  %i.m = phi ptr [ %i.b, %._crit_edge ], [ %.pre, %bb.c ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.o = add i64 %i.d, 1
  store i64 %i.o, ptr %i.c, align 8, !alias.scope !1260, !noalias !1263
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1265, !noalias !1268, !noundef !10 ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !range !9, !alias.scope !1265, !noalias !1268, !noundef !10
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit

bb.d:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #21, !noalias !1268
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1265, !noalias !1268, !nonnull !10, !noundef !10
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.x = add i64 %i.r, 1
  store i64 %i.x, ptr %i.q, align 8, !alias.scope !1265, !noalias !1268
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueE8push_mutCscjwHxV1jUiA_13stdio_fixture.exit
  ret void

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !10 ; 2 uses
  %i.aa = icmp ult i64 %.sroa.8.016, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !10, !noundef !10
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %.sroa.8.016 ; 3 uses
  %i.ae = load <2 x i64>, ptr %3, align 8, !alias.scope !1270, !noalias !10
  %i.af = load <2 x i64>, ptr %i.ad, align 1, !alias.scope !1274, !noalias !10
  store <2 x i64> %i.ae, ptr %i.ad, align 1, !alias.scope !1274, !noalias !10
  store <2 x i64> %i.af, ptr %3, align 8, !alias.scope !1270, !noalias !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !1277, !noalias !10
  %i.aj = load <2 x i64>, ptr %i.ag, align 1, !alias.scope !1280, !noalias !10
  store <2 x i64> %i.ai, ptr %i.ag, align 1, !alias.scope !1280, !noalias !10
  store <2 x i64> %i.aj, ptr %i.ah, align 8, !alias.scope !1277, !noalias !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #23
  unreachable
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1283
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1283
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24) #19, !noalias !1283
  %i.f = load i64, ptr %i.a, align 8, !range !262, !noalias !1283, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !263, !noalias !1283, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1283
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1283, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1283
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1283
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1283
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1286
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1286
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8) #19, !noalias !1286
  %i.f = load i64, ptr %i.a, align 8, !range !262, !noalias !1286, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !263, !noalias !1286, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1286
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1286, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1286
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1286
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1286
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 8, 73) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1)
  %4 = mul nuw i64 %3, %1                         ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !1021
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !1021

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 0, 9223372036854775805) %4) #19
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.j = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 9) %2) #19
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB2_3Any7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command12MaxTermWidthNtB2_3Any7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command9TermWidthNtB2_3Any7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7styling6StylesNtB2_3Any7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 2 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !1292, !noalias !1294, !noundef !10 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !1292, !noalias !1294, !noundef !10 ; 4 uses
  %i.b = sub nuw i64 %.val1.i.i, %.val.i.i        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1297, !noalias !1292, !noundef !10 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !9, !alias.scope !1297, !noalias !1292, !noundef !10
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i, !prof !273

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 24) #19
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1289, !noalias !1292
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.d, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1289, !noalias !1292, !nonnull !10, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.k = icmp ule i64 %.val.i.i, %.val1.i.i
  tail call void @llvm.assume(i1 %i.k)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %.val.i.i, %.val1.i.i
  br i1 %.not2.i.i.i.i.i.i.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %1, align 8, !alias.scope !1318, !noalias !1319
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i, 1
  %i.m = icmp eq i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !1326, !noalias !1327, !nonnull !10, !align !94, !noundef !10 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i.i.us.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1330, !noalias !1333, !nonnull !10, !noundef !10
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val1.i.i.us.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1330, !noalias !1333, !noundef !10 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.i.i.i.i.i, label %.lr.ph.i.preheader3.i.i.i.i.i.i

.lr.ph.i.preheader3.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1337
  unreachable

.lr.ph.i.us.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.us.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1337
  %i.q = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #19, !noalias !1337 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.split.us.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %.val.i.i.us.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i, i1 false), !noalias !1354
  br label %_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i

_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.us.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ inttoptr (i64 1 to ptr), %.lr.ph.i.us.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 3 uses
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !1355
  %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !1355
  %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !1355
  %i.t = add i64 %i.h, 1
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i.i.us.i.i.i.i.i.i) #22, !noalias !1362
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedQINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1P_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB2Z_INtNtB1P_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i, %_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i = phi i64 [ %i.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i ], [ %i.t, %_RNCINvMs8_NtNtNtCsj6eKBz9Db1c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCs4wP2HXfJTCR_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4m_B4j_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7g_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB52_EE0E0E0E0B4j_E0CscjwHxV1jUiA_13stdio_fixture.exit.i.us.i.i.i.i.i.i ]
  store i64 %.val1.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !1289, !noalias !1363
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser10parse_ref_CscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #19
  %i.b = load i64, ptr %i.a, align 8, !range !20, !noundef !10
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !align !94, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1364
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #19, !noalias !1364 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !273

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #22, !noalias !1364
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @61, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  br label %bb.e

end_hunk_1
