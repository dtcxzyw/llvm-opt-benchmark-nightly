Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/stdio_fixture.stdio_fixture.8f70a030548dc77a-cgu.0?download=true
inline.NumInlined: 654
inline.NumDeleted: 466
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCscjwHxV1jUiA_13stdio_fixture4main:bb.a
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx.i349, align 8, !alias.scope !845
  %.sroa.558.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.ai, i64 456
  %.sroa.659.sroa.4.0..sroa.659.0..sroa_idx.sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.ai, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.558.0..sroa_idx.i350, i8 0, i64 16, i1 false), !alias.scope !845
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.659.sroa.4.0..sroa.659.0..sroa_idx.sroa_idx.i351, align 8, !alias.scope !845
  %.sroa.659.sroa.5.0..sroa.659.0..sroa_idx.sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.ai, i64 480
  store i64 0, ptr %.sroa.659.sroa.5.0..sroa.659.0..sroa_idx.sroa_idx.i352, align 8, !alias.scope !845
  store ptr @48, ptr %i.ka, align 8
  store i64 6, ptr %i.kb, align 8
  store i32 102, ptr %i.ki, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  call fastcc void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr) #21, !noalias !848
  %.sroa.21029.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ai, i64 344
  %.sroa.21029.0.copyload.pre = load i64, ptr %.sroa.21029.0..sroa_idx.phi.trans.insert, align 8, !alias.scope !856 ; 2 uses
  %.sroa.41031.0.copyload.pre = load ptr, ptr %.sroa.435.0..sroa_idx.i341, align 8, !alias.scope !856 ; 2 uses
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
  br i1 %i.lq, label %bb.ar, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i.i.i, align 8, !noalias !1013 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !1006
  %i.ls = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64 ; 3 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub nuw i64 %i.ls, %i.lt                ; 2 uses
  %i.lv = udiv exact i64 %i.lu, 24
  %i.lw = call i64 @llvm.umax.i64(i64 %i.lv, i64 3) ; 2 uses
  %..i.i.i.i.i.i = add nuw nsw i64 %i.lw, 1       ; 2 uses
  %i.lx = mul i64 %..i.i.i.i.i.i, 24              ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.lu, 9223372036854775776
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.am, label %bb.al, !prof !1021

bb.al:                                            ; preds = %bb.ak
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.al
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1022
  %i.lz = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lx, i64 noundef range(i64 1, 9) 8) #19, !noalias !1022 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.am, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

bb.am:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.ak
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %bb.ak ]
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.lx, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ undef, %bb.ak ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i) #22, !noalias !1006
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.al
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.al ], [ %..i.i.i.i.i.i, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.al ], [ %i.lz, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.mb = icmp samesign ult i64 %i.lw, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.mb)
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i, i64 16, i1 false), !noalias !1006
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i.i, align 8, !noalias !1006
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !1006
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1006
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1006
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.mc = icmp eq ptr %i.lr, %.sroa.611.0.copyload.i.i.i
  br i1 %i.mc, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, %bb.aq
  %i.md = phi ptr [ %i.mv, %bb.aq ], [ %.sroa.10.0.i.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %i.me = phi i64 [ %i.mx, %bb.aq ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 6 uses
  %.val1011.i.i.i.i.i.i.i = phi ptr [ %i.mf, %bb.aq ], [ %i.lr, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i.i, i64 24 ; 5 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %.val1011.i.i.i.i.i.i.i, align 8, !noalias !1031 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val1011.i.i.i.i.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1041
  %i.mg = icmp samesign ult i64 %i.me, 384307168202282326
  call void @llvm.assume(i1 %i.mg)
  %i.mh = load i64, ptr %i.e, align 8, !range !9, !alias.scope !1042, !noalias !1043, !noundef !10
  %i.mi = icmp eq i64 %i.me, %i.mh
  br i1 %i.mi, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i, label %bb.aq

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i: ; preds = %bb.aq, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i
  %.sroa.6.0.copyload512.i.i.i = phi i64 [ %i.mx, %bb.aq ], [ %i.me, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i ]
  %.pre17.i.i.i.i.i = ptrtoint ptr %i.mf to i64
  %.pre18.i.i.i.i.i = sub nuw i64 %i.ls, %.pre17.i.i.i.i.i
  %.pre20.i.i.i.i.i = udiv exact i64 %.pre18.i.i.i.i.i, 24
  br label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i

_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i: ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.sroa.6.0.copyload5.i.i.i = phi i64 [ %.sroa.6.0.copyload512.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %.pre-phi21.i.i.i.i.i = phi i64 [ %.pre20.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mf, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i ], [ %i.lr, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.mj = icmp eq ptr %.sroa.611.0.copyload.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.mj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ml, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ml = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mk, align 8, !range !9, !alias.scope !1044, !noalias !1047, !noundef !10 ; 2 uses
  %i.mm = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mn = getelementptr i8, ptr %i.mk, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mn, align 8, !alias.scope !1044, !noalias !1047, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1058
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mo = icmp eq i64 %i.ml, %.pre-phi21.i.i.i.i.i
  br i1 %i.mo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.i.i.i.i.i
  %i.mp = icmp eq i64 %.sroa.510.0.copyload.i.i.i, 0
  br i1 %i.mp, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i.i) ]
  %i.mq = mul nuw i64 %.sroa.510.0.copyload.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i.i, i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1047
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i: ; preds = %bb.an
  %i.mr = ptrtoint ptr %i.mf to i64
  %i.ms = sub nuw i64 %i.ls, %i.mr
  %i.mt = udiv exact i64 %i.ms, 24
  %i.mu = add nuw nsw i64 %i.mt, 1
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.me, i64 noundef %i.mu, i64 noundef 24) #19
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1042, !noalias !1043
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i, %bb.an
  %i.mv = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i ], [ %i.md, %bb.an ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [24 x i8], ptr %i.mv, i64 %i.me ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1041
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, ptr %i.mw, align 8, !noalias !1041
  %i.mx = add nuw nsw i64 %i.me, 1                ; 3 uses
  store i64 %i.mx, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1042, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  %i.my = icmp eq ptr %i.mf, %.sroa.611.0.copyload.i.i.i
  br i1 %i.my, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i.loopexit.i.i.i.i.i, label %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %bb.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.e, align 8, !noalias !1059
  %.sroa.5.0.copyload3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1006
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i

bb.ar:                                            ; preds = %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lr, %_RNvXsi_NtCsaKJjC64KgbL_3std3envNtB5_6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_7styling6StylesECscjwHxV1jUiA_13stdio_fixture.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1006
  %i.mz = ptrtoint ptr %.sroa.611.0.copyload.i.i.i to i64
  %i.na = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i to i64
  %i.nb = sub nuw i64 %i.mz, %i.na
  %i.nc = udiv exact i64 %i.nb, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.nd = icmp eq ptr %.sroa.611.0.copyload.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i
  br i1 %i.nd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.nf = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ne, align 8, !range !9, !alias.scope !1060, !noalias !1063, !noundef !10 ; 2 uses
  %i.ng = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ng, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.nh = getelementptr i8, ptr %i.ne, i64 8
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nh, align 8, !alias.scope !1060, !noalias !1063, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1074
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = icmp eq i64 %i.nf, %i.nc
  br i1 %i.ni, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  %i.nj = icmp eq i64 %.sroa.510.0.copyload.i.i.i, 0
  br i1 %i.nj, label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.i.i) ]
  %i.nk = mul nuw i64 %.sroa.510.0.copyload.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i.i.i, i64 noundef %i.nk, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1063
  br label %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i

_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i: ; preds = %bb.at, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.sroa.6.0.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.at ], [ %.sroa.6.0.copyload5.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.at ], [ %.sroa.5.0.copyload3.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.at ], [ %.sroa.0.0.copyload1.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCNvXs_Cs3RZUOUhPFQ6_8clap_lexNtB38_7RawArgsINtNtB24_7convert4FromB2J_E4from0EE11spec_extendCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.h, align 8, !alias.scope !996, !noalias !1075
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !996, !noalias !1075
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 9 uses
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !996, !noalias !1075
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ah, i64 700
  %.val47.i.i = load i32, ptr %i.nl, align 4, !alias.scope !1076, !noalias !1077, !noundef !10 ; 2 uses
  %i.nm = and i32 %.val47.i.i, 2048
  %.not101.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not101.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i
  %.not.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %.not.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.ax, %bb.aw, %bb.au, %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i
  %i.nn = phi i64 [ 0, %_RINvMCs3RZUOUhPFQ6_8clap_lexNtB3_7RawArgs3newNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECscjwHxV1jUiA_13stdio_fixture.exit.i.i ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.au ] ; 5 uses
  %i.no = and i32 %.val47.i.i, 67108864
  %.not102.i.i = icmp eq i32 %i.no, 0
  br i1 %.not102.i.i, label %bb.by, label %bb.cb

bb.aw:                                            ; preds = %bb.au
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !noalias !994, !nonnull !10, !noundef !10
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i, i64 16
  %i.ns = load i64, ptr %i.nr, align 8, !noalias !994, !noundef !10
  %i.nt = call { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nq, i64 noundef %i.ns) #19, !noalias !994 ; 2 uses
  %i.nu = extractvalue { ptr, i64 } %i.nt, 0      ; 2 uses
  %.not41.i.i = icmp eq ptr %i.nu, null
  br i1 %.not41.i.i, label %bb.av, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nv = extractvalue { ptr, i64 } %i.nt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1078
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nu, i64 noundef %i.nv) #19, !noalias !994
  %i.nw = load i64, ptr %i.d, align 8, !range !262, !noalias !1078, !noundef !10
  %i.nx = trunc nuw i64 %i.nw to i1
  %i.ny = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !noalias !1078, !nonnull !10
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ob = load i64, ptr %i.oa, align 8, !noalias !1078 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1078
  br i1 %i.nx, label %bb.av, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !994
  %.not.i.i.i = icmp slt i64 %i.ob, 0
  br i1 %.not.i.i.i, label %bb.ba, label %bb.az, !prof !1021

bb.az:                                            ; preds = %bb.ay
  %i.oc = icmp eq i64 %i.ob, 0
  br i1 %i.oc, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.az
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
  %i.od = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ob, i64 noundef range(i64 1, 9) 1) #19, !noalias !1081 ; 3 uses
  %i.oe = icmp eq ptr %i.od, null
  br i1 %i.oe, label %bb.ba, label %bb.bx

bb.ba:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.ay
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.ay ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ob) #22, !noalias !994
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i: ; preds = %bb.bx, %bb.az
  %i.of = phi ptr [ %i.od, %bb.bx ], [ inttoptr (i64 1 to ptr), %bb.az ] ; 2 uses
  store i64 %i.ob, ptr %i.g, align 8, !noalias !994
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.of, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !994
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %i.ob, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !noalias !994
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1087
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.og = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1098, !noalias !1099, !noundef !10 ; 6 uses
  %i.oh = icmp ult i64 %i.og, 384307168202282326
  call void @llvm.assume(i1 %i.oh)
  %i.oi = icmp eq i64 %i.og, 0
  br i1 %i.oi, label %bb.bb, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i, !prof !273

bb.bb:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef range(i64 0, 384307168202282326) 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #23, !noalias !1101
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscjwHxV1jUiA_13stdio_fixture.exit.thread84.i.i
  %i.oj = ptrtoint ptr %i.g to i64
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1098, !noalias !1099
  %i.ok = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1098, !noalias !1099, !nonnull !10, !noundef !10 ; 3 uses
  %i.ol = add nsw i64 %i.og, -1                   ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1088, !noalias !1104
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 7 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1088, !noalias !1104
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.ol, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1088, !noalias !1104
  %i.om = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  store i64 0, ptr %i.om, align 8, !alias.scope !1105, !noalias !1106
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 1, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !1105, !noalias !1106
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.oj, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !1105, !noalias !1106
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !1113, !noalias !1087
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1113, !noalias !1087
  %i.on = icmp eq i64 %i.og, 1
  br i1 %i.on, label %bb.bc, label %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i

bb.bc:                                            ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i
  call fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_10SpecExtendBT_QINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3h_INtNtB27_7convert4IntoBT_E4intoEE11spec_extendCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 dereferenceable(24) %i.om) #19, !noalias !994
  br label %_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i

bb.bd:                                            ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1114
  br label %bb.bf

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1114
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1121
  %i.oo = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #19, !noalias !1121 ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 24) #22, !noalias !1124
  unreachable

_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.oq = load i64, ptr %i.h, align 8, !range !9, !alias.scope !1084, !noalias !1128, !noundef !10
  %i.or = icmp eq i64 %i.oq, %i.og
  br i1 %i.or, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i, !prof !273

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i: ; preds = %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  %i.ou = mul nuw nsw i64 %i.ol, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ot, ptr nonnull align 8 %i.os, i64 %i.ou, i1 false), !noalias !1128
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1129, !noalias !1087
  br label %.lr.ph.i29.i.i.i.i.i

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.og, i64 noundef 1, i64 noundef 24) #19
  %.pre.i.i.i383 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1084, !noalias !1128 ; 3 uses
  %.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1084, !noalias !1130 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.pre.i.i.i383, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %.pre.i.i.i383, i64 48
  %i.ox = mul nuw nsw i64 %i.ol, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ow, ptr nonnull align 8 %i.ov, i64 %i.ox, i1 false), !noalias !1128
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1129, !noalias !1087
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %.not19.i27.i.i.not.not.i.i.i = icmp ugt i64 %.pre.i.i, 1
  br i1 %.not19.i27.i.i.not.not.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i, label %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i

_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i: ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i.i
  %.val.i.peel.i32.i.i.i.i.pre.i = load ptr, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !alias.scope !1134, !noalias !1137
  %.val2.i.peel.i33.i.i.i.i.pre.i = load i64, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !alias.scope !1134, !noalias !1137
  br label %.lr.ph.i29.i.i.i.i.i

.lr.ph.i29.i.i.i.i.i:                             ; preds = %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i
  %.val2.i.peel.i33.i.i.i.i.i = phi i64 [ %i.ob, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i ], [ %.val2.i.peel.i33.i.i.i.i.pre.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i ] ; 7 uses
  %.val.i.peel.i32.i.i.i.i.i = phi ptr [ %i.of, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i ], [ %.val.i.peel.i32.i.i.i.i.pre.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i ]
  %i.oy = phi ptr [ %i.ok, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i ], [ %.pre.i.i.i383, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i ]
  %i.oz = phi i64 [ 1, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.thread.i.i ], [ %.pre.i.i, %_RNvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE9move_tailCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i..lr.ph.i29.i.i.i.i_crit_edge.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  store i64 1, ptr %i.om, align 8, !alias.scope !1145, !noalias !1150
  %i.pa = icmp eq i64 %.val2.i.peel.i33.i.i.i.i.i, 0
  br i1 %i.pa, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i.i: ; preds = %.lr.ph.i29.i.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1151
  %i.pb = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.peel.i33.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #19, !noalias !1151 ; 3 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %.loopexit.i44.i.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.peel.i34.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pb, ptr nonnull readonly align 1 %.val.i.peel.i32.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val2.i.peel.i33.i.i.i.i.i, i1 false), !noalias !1166
  %.not.peel.i36.i.i.i.i.i = icmp eq i64 %.val2.i.peel.i33.i.i.i.i.i, -1
  br i1 %.not.peel.i36.i.i.i.i.i, label %_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB10_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB2a_INtNtB10_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoEENtNtNtB10_3ops4drop4Drop4dropCscjwHxV1jUiA_13stdio_fixture.exit.i.i.i.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i.i.i
  %.pre107.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1084, !noalias !1130
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i, %.lr.ph.i29.i.i.i.i.i
  %i.pd = phi ptr [ %.pre107.i.i, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i ], [ %i.oy, %.lr.ph.i29.i.i.i.i.i ]
  %.sroa.7.112.peel.i38.i.i.i.i.i = phi ptr [ %i.pb, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.peel.i35.i.i.i._RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs4wP2HXfJTCR_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCscjwHxV1jUiA_13stdio_fixture.exit.thread6.peel.i37.i.i.i_crit_edge.i.i ], [ inttoptr (i64 1 to ptr), %.lr.ph.i29.i.i.i.i.i ]
  %i.pe = getelementptr inbounds nuw [24 x i8], ptr %i.pd, i64 %i.oz ; 3 uses
  store i64 %.val2.i.peel.i33.i.i.i.i.i, ptr %i.pe, align 8, !noalias !1130
  %.sroa.4.0..sroa_idx.peel.i39.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store ptr %.sroa.7.112.peel.i38.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.peel.i39.i.i.i.i.i, align 8, !noalias !1130
  %.sroa.5.0..sroa_idx.peel.i40.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store i64 %.val2.i.peel.i33.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.peel.i40.i.i.i.i.i, align 8, !noalias !1130
  %i.pf = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1084, !noalias !1130, !noundef !10
  %i.pg = add i64 %i.pf, 1
  store i64 %i.pg, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1084, !noalias !1130
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscjwHxV1jUiA_13stdio_fixture:bb.a
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
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

bb.e:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser15possible_valuesCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #19
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser7type_idCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9clone_anyCscjwHxV1jUiA_13stdio_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1370
  %i.f = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 9) 8) #19, !noalias !1370 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #22, !noalias !1378
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.val1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.054.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.l, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ] ; 8 uses
  %.sroa.10.053.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.7.052.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ] ; 2 uses
  %i.j = add nsw i64 %.sroa.10.053.i.i.i, -1      ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.054.i.i.i, %i.h
  br i1 %i.k, label %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
  %i.m = add nuw nsw i64 %.sroa.7.052.i.i.i, 1
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.7.052.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1378
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1382, !noalias !1383, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 56
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1382, !noalias !1383, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !20, !alias.scope !1382, !noalias !1383, !noundef !10
  %.not.i.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) #19, !noalias !1383
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !1385
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1382, !noalias !1383, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1382, !noalias !1383, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.w = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.w, label %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1389
  %i.y = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.x, i64 noundef range(i64 1, 9) 8) #19, !noalias !1389 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.x) #22, !noalias !1395
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %.val4.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.021.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %.val4.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.7.020.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ab = icmp eq ptr %.sroa.0.022.i.i.i.i.i.i, %i.aa
  br i1 %i.ab, label %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = add nsw i64 %.sroa.10.021.i.i.i.i.i.i, -1 ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.7.020.i.i.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.7.020.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !1386, !noalias !1396, !nonnull !10, !noundef !10
  %i.ag = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1386, !noalias !1396, !noundef !10
  store ptr %.val.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !1395
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !1395
  %i.ai = icmp eq i64 %i.ac, 0
  br i1 %i.ai, label %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.10.0.i31.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !range !1397, !alias.scope !1382, !noalias !1383, !noundef !10
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !1398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1378
  store i64 %.val4.i.i.i.i, ptr %i.n, align 8, !noalias !1398
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i31.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !1398
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !1398
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !1398
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !1398
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.r, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !1398
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 %i.ak, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !1398
  %i.al = icmp eq i64 %i.j, 0
  br i1 %i.al, label %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i66.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ], [ %i.f, %bb.c ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1399
  %i.am = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #19, !noalias !1399 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !273

bb.i:                                             ; preds = %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22, !noalias !1399
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1r_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB6_20PossibleValuesParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.10.0.i66.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ao = insertvalue { ptr, ptr } poison, ptr %i.am, 0
  %i.ap = insertvalue { ptr, ptr } %i.ao, ptr @60, 1
  ret { ptr, ptr } %i.ap
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_14AnyValueParser9parse_refCscjwHxV1jUiA_13stdio_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1402
  %i.g = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #19, !noalias !1402 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !273

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #22, !noalias !1402
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

bb.e:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command9__do_parse(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtCsaKJjC64KgbL_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(600)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsaKJjC64KgbL_3std3env7args_os(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsaKJjC64KgbL_3std7process4exit(i32 noundef) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtNtCsfu0rQaTkGUu_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder5errorNtB5_7Message9formatted(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(126)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCscjwHxV1jUiA_13stdio_fixture4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsaKJjC64KgbL_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, i64 noundef %i.b, ptr noundef %1, i8 noundef 0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

end_hunk_1
