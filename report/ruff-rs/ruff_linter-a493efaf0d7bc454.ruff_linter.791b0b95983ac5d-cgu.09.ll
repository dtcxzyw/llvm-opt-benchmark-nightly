Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.09?download=true
inline.NumInlined: 4098
inline.NumDeleted: 1980
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_RINvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB5_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter:bb.a
    i8 3, label %bb.v
    i8 4, label %bb.w
    i8 5, label %bb.x
    i8 6, label %bb.y
    i8 7, label %bb.z
    i8 8, label %bb.aa
    i8 9, label %bb.ab
    i8 10, label %bb.ac
    i8 11, label %bb.ad
    i8 12, label %bb.ae
    i8 13, label %bb.af
    i8 14, label %bb.ag
    i8 15, label %bb.ah
    i8 16, label %bb.ai
    i8 17, label %bb.aj
    i8 18, label %bb.ak
    i8 19, label %bb.al
    i8 20, label %bb.am
    i8 21, label %bb.an
  ]

default.unreachable:                              ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  unreachable

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !range !23, !alias.scope !3293, !noalias !3292, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3294
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !noalias !3294
  store i8 0, ptr %i.af, align 8, !noalias !3294
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.af, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc25 unwind label %bb.n

.noexc25:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3294
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !3293, !noalias !3292, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3295
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !noalias !3295
  store i8 1, ptr %i.ae, align 8, !noalias !3295
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc26 unwind label %bb.n

.noexc26:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3295
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !alias.scope !3293, !noalias !3292, !noundef !5
  %i.cb = zext i16 %i.ca to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3296
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !noalias !3296
  store i8 1, ptr %i.ad, align 8, !noalias !3296
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc27 unwind label %bb.n

.noexc27:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3296
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !alias.scope !3293, !noalias !3292, !noundef !5
  %i.cg = zext i32 %i.cf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3297
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !noalias !3297
  store i8 1, ptr %i.ac, align 8, !noalias !3297
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ac, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc28 unwind label %bb.n

.noexc28:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3297
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !3293, !noalias !3292, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3298
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !noalias !3298
  store i8 1, ptr %i.ab, align 8, !noalias !3298
  %i.cm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ab, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc29 unwind label %bb.n

.noexc29:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3298
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !3293, !noalias !3292, !noundef !5
  %i.cp = sext i8 %i.co to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3299
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !noalias !3299
  store i8 2, ptr %i.aa, align 8, !noalias !3299
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc30 unwind label %bb.n

.noexc30:                                         ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3299
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.ct = load i16, ptr %i.cs, align 2, !alias.scope !3293, !noalias !3292, !noundef !5
  %i.cu = sext i16 %i.ct to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3300
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !noalias !3300
  store i8 2, ptr %i.z, align 8, !noalias !3300
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc31 unwind label %bb.n

.noexc31:                                         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3300
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !alias.scope !3293, !noalias !3292, !noundef !5
  %i.cz = sext i32 %i.cy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3301
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !noalias !3301
  store i8 2, ptr %i.y, align 8, !noalias !3301
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.db, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc32 unwind label %bb.n

.noexc32:                                         ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3301
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !3293, !noalias !3292, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3302
  %i.de = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !noalias !3302
  store i8 2, ptr %i.x, align 8, !noalias !3302
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc33 unwind label %bb.n

.noexc33:                                         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3302
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !alias.scope !3293, !noalias !3292, !noundef !5
  %i.di = fpext float %i.dh to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3303
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store double %i.di, ptr %i.dj, align 8, !noalias !3303
  store i8 3, ptr %i.w, align 8, !noalias !3303
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3303
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dm = load double, ptr %i.dl, align 8, !alias.scope !3293, !noalias !3292, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3304
  %i.dn = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %i.dm, ptr %i.dn, align 8, !noalias !3304
  store i8 3, ptr %i.v, align 8, !noalias !3304
  %i.do = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.do, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc35 unwind label %bb.n

.noexc35:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3304
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !range !7, !alias.scope !3293, !noalias !3292, !noundef !5
  invoke fastcc void @_RINvYNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtBa_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1h_7Visitor10visit_charNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(216) %i.an, i32 noundef %i.dq)
          to label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.n

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !3293, !noalias !3292, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !3293, !noalias !3292, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3305
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ds, ptr %i.dv, align 8, !noalias !3305
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.du, ptr %i.dw, align 8, !noalias !3305
  store i8 5, ptr %i.u, align 8, !noalias !3305
  %i.dx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.dx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc37 unwind label %bb.n

.noexc37:                                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3305
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !3293, !noalias !3292, !nonnull !5, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !3293, !noalias !3292, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3306
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.dz, ptr %i.ec, align 8, !noalias !3306
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.eb, ptr %i.ed, align 8, !noalias !3306
  store i8 5, ptr %i.t, align 8, !noalias !3306
  %i.ee = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc38 unwind label %bb.n

.noexc38:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3306
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !3293, !noalias !3292, !nonnull !5, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !3293, !noalias !3292, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3307
  %i.ej = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.eg, ptr %i.ej, align 8, !noalias !3307
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.ei, ptr %i.ek, align 8, !noalias !3307
  store i8 6, ptr %i.s, align 8, !noalias !3307
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.el, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc39 unwind label %bb.n

.noexc39:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3307
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.em = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !3293, !noalias !3292, !nonnull !5, !noundef !5
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !3293, !noalias !3292, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3308
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.en, ptr %i.eq, align 8, !noalias !3308
  %i.er = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ep, ptr %i.er, align 8, !noalias !3308
  store i8 6, ptr %i.r, align 8, !noalias !3308
  %i.es = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc40 unwind label %bb.n

.noexc40:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3308
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3309
  store i8 8, ptr %i.q, align 8, !noalias !3309
  %i.et = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.et, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc41 unwind label %bb.n

.noexc41:                                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3309
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3310
  store i8 8, ptr %i.p, align 8, !noalias !3310
  %i.eu = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc42 unwind label %bb.n

.noexc42:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3310
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3311
  store i8 7, ptr %i.o, align 8, !noalias !3311
  %i.ev = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc43 unwind label %bb.n

.noexc43:                                         ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3311
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3312
  store i8 9, ptr %i.n, align 8, !noalias !3312
  %i.ew = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ew, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc44 unwind label %bb.n

.noexc44:                                         ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3312
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3313
  store i8 10, ptr %i.m, align 8, !noalias !3313
  %i.ex = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc45 unwind label %bb.n

.noexc45:                                         ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3313
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !3293, !noalias !3292, !nonnull !5, !noundef !5 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !3293, !noalias !3292, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3314)
  call void @llvm.experimental.noalias.scope.decl(metadata !3315)
  %.idx.i.i = shl nuw nsw i64 %i.fb, 6            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3316
  call void @llvm.experimental.noalias.scope.decl(metadata !3317)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3318
  store i64 -1, ptr %i.j, align 8, !noalias !3318
  %i.fd = icmp eq i64 %i.fb, 0
  br i1 %i.fd, label %.thread.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.an
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ff = add nsw i64 %.idx.i.i, -64
  %i.fg = lshr exact i64 %i.ff, 6
  %i.fh = add nuw nsw i64 %i.fg, 1
  br label %bb.ao

.thread.i.i.i:                                    ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.j, align 8, !range !11, !noalias !3318
  %i.fi = icmp eq i64 %.pre.i.i.i, -1
  br i1 %i.fi, label %.thread.thread.i.i.i, label %.thread.i

bb.ao:                                            ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %.lr.ph.i.i.i
  %i.fj = phi ptr [ %i.ez, %.lr.ph.i.i.i ], [ %i.fk, %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsEhZmuQNqkz_11ruff_linter.exit.i.i.i ] ; 14 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 64 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3319
  call void @llvm.experimental.noalias.scope.decl(metadata !3320)
  call void @llvm.experimental.noalias.scope.decl(metadata !3321)
  call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  %i.fm = load i8, ptr %i.fj, align 8, !range !38, !alias.scope !3323, !noalias !3324, !noundef !5
  switch i8 %i.fm, label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB1q_24DependencyGroupSpecifierNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i [
    i8 1, label %.split120.i.i.i
    i8 4, label %.split121.i.i.i
    i8 12, label %bb.ap
    i8 13, label %bb.aq
    i8 14, label %bb.ar
    i8 15, label %bb.be
  ], !prof !45

.split120.i.i.i:                                  ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !3323, !noalias !3324, !noundef !5
  %.not106.i.i.i = icmp eq i8 %i.fo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3319
  br i1 %.not106.i.i.i, label %bb.bu, label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsEhZmuQNqkz_11ruff_linter.exit.i.i.i

.split121.i.i.i:                                  ; preds = %bb.ao
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !3323, !noalias !3324, !noundef !5
  %.not105.i.i.i = icmp eq i64 %i.fq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3319
  br i1 %.not105.i.i.i, label %bb.bu, label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsEhZmuQNqkz_11ruff_linter.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !3323, !noalias !3324, !noundef !5
  %i.ft = icmp eq i64 %i.fs, 13
  br i1 %i.ft, label %.split122.i.i.i, label %.thread102.i.i.i

end_hunk_0
begin_hunk_1_@_RINvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB5_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter:bb.a
bb.bw:                                            ; preds = %bb.bv
  %i.kb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.kb, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false), !noalias !3331
  store i64 -2, ptr %i.an, align 8, !alias.scope !3332, !noalias !3331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3318
  br label %bb.ce

_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %_RINvYINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  %i.kc = load i64, ptr %i.h, align 8, !range !21, !noalias !3318, !noundef !5 ; 2 uses
  %.not65.i.i.i = icmp eq i64 %i.kc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false), !noalias !3318
  br i1 %.not65.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %.sroa.546.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.549.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.549.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.546.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !3331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3318
  %.sroa.448.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.448.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !noalias !3331
  %i.kd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.kc, ptr %i.kd, align 8, !alias.scope !3332, !noalias !3331
  store i64 -2, ptr %i.an, align 8, !alias.scope !3332, !noalias !3331
  br label %bb.ce

bb.by:                                            ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3318
  %i.ke = load i64, ptr %i.j, align 8, !range !11, !alias.scope !3333, !noalias !3318, !noundef !5
  %i.kf = icmp eq i64 %i.ke, -1
  br i1 %i.kf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.ca, !noalias !3329

bb.ca:                                            ; preds = %bb.bz
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i.i unwind label %bb.cb, !noalias !3329

bb.cb:                                            ; preds = %bb.ca
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !3329
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.cc, !noalias !3329

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cc, %bb.ca
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ki, %bb.cc ], [ %i.kg, %bb.ca ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !noalias !3318
  br label %bb.br

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !noalias !3318
  br label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsEhZmuQNqkz_11ruff_linter.exit.i.i.i

_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.bt, %.thread102.i.i.i, %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB1q_24DependencyGroupSpecifierNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit._RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB1q_24DependencyGroupSpecifierNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit.thread_crit_edge.i.i.i.i.i.i, %.split119.i.i.i, %.split.i.i.i, %.split122.i.i.i, %.split121.i.i.i, %.split120.i.i.i
  %i.kj = icmp eq ptr %i.fk, %i.fc
  br i1 %i.kj, label %.thread.i.i.i, label %bb.ao

.thread.i:                                        ; preds = %.thread.i.i.i
  store i64 -1, ptr %i.an, align 8, !alias.scope !3332, !noalias !3331
  %.sroa.428.0..sroa_idx.i.i4.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.428.0..sroa_idx.i.i4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !3293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3318
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3316
  br label %_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i

.thread.thread.i.i.i:                             ; preds = %.thread.i.i.i, %bb.an
  %.sroa.13.1.i.i = phi i64 [ %i.fh, %.thread.i.i.i ], [ 0, %bb.an ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %i.fc, %.thread.i.i.i ], [ %i.ez, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3318
  invoke fastcc void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error13missing_fieldCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 13)
          to label %_RINvXNvNtNtCsjjJOMqlcxxG_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtB26_5impls13StringVisitorECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3329

_RINvXNvNtNtCsjjJOMqlcxxG_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtB26_5impls13StringVisitorECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %.thread.thread.i.i.i
  %i.kk = load i64, ptr %i.g, align 8, !range !21, !noalias !3318, !noundef !5 ; 2 uses
  %.not63.i.i.i = icmp eq i64 %i.kk, 2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.kl, i64 24, i1 false), !noalias !3318
  br i1 %.not63.i.i.i, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %_RINvXNvNtNtCsjjJOMqlcxxG_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtB26_5impls13StringVisitorECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %.sroa.555.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.558.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.558.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.555.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !3331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3318
  %.sroa.457.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.457.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i.i.i, i64 24, i1 false), !noalias !3331
  %i.km = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.kk, ptr %i.km, align 8, !alias.scope !3332, !noalias !3331
  store i64 -2, ptr %i.an, align 8, !alias.scope !3332, !noalias !3331
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i.i.i)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bx, %bb.bw, %bb.bs
  %i.kn = load i64, ptr %i.j, align 8, !range !11, !noalias !3318, !noundef !5
  %.not69.i.i.i = icmp eq i64 %i.kn, -1
  br i1 %.not69.i.i.i, label %_RINvXs0_NvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtBb_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.cg, !noalias !3329

bb.cg:                                            ; preds = %bb.cf
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.ch, !noalias !3329

bb.ch:                                            ; preds = %bb.cg
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !3329
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.cf
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvXs0_NvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtBb_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.n

bb.ci:                                            ; preds = %bb.br
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #40
          to label %.body unwind label %bb.cj, !noalias !3329

bb.cj:                                            ; preds = %bb.ci
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !3329
  unreachable

_RINvXs0_NvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtBb_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3318
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %_RINvNtNtNtCsjjJOMqlcxxG_5serde7private2de7content21visit_content_map_refNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB1f_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter.exit.i

bb.ck:                                            ; preds = %_RINvXNvNtNtCsjjJOMqlcxxG_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtB26_5impls13StringVisitorECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3318
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.428.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.620.i.i.i, i64 24, i1 false), !noalias !3331
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i.i.i)
  store i64 -1, ptr %i.an, align 8, !alias.scope !3332, !noalias !3331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3318
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.l, ptr noundef nonnull align 8 dereferenceable(216) %i.an, i64 216, i1 false), !noalias !3334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3316
  %i.kr = icmp eq ptr %i.fc, %.sroa.0.1.i.i
  br i1 %i.kr, label %_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, label %bb.cl, !prof !3335

bb.cl:                                            ; preds = %bb.ck
  %i.ks = ptrtoint ptr %.sroa.0.1.i.i to i64
  %i.kt = ptrtoint ptr %i.fc to i64
  %i.ku = sub nuw i64 %i.kt, %i.ks
  %i.kv = lshr exact i64 %i.ku, 6
  %i.kw = add nuw nsw i64 %i.kv, %.sroa.13.1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3336
  store i64 %.sroa.13.1.i.i, ptr %i.e, align 8, !noalias !3336
  invoke void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error14invalid_lengthCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, i64 noundef %i.kw, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @354)
          to label %_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.cm, !noalias !3337

bb.cm:                                            ; preds = %bb.cl
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(216) %i.l) #40
          to label %.body unwind label %bb.co, !noalias !3337

_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3336
  %.pr7.i.i = load i64, ptr %i.k, align 8, !noalias !3316
  %.not.i.i = icmp eq i64 %.pr7.i.i, 2
  br i1 %.not.i.i, label %_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, label %bb.cn

bb.cn:                                            ; preds = %_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.428.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !3334
  store i64 -2, ptr %i.an, align 8, !alias.scope !3338, !noalias !3334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3316
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(216) %i.l)
          to label %_RINvNtNtNtCsjjJOMqlcxxG_5serde7private2de7content21visit_content_map_refNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB1f_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.n

_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i: ; preds = %_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.ck, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3316
  br label %_RINvNtNtNtCsjjJOMqlcxxG_5serde7private2de7content21visit_content_map_refNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB1f_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter.exit.i

bb.co:                                            ; preds = %bb.cm
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !3337
  unreachable

_RINvNtNtNtCsjjJOMqlcxxG_5serde7private2de7content21visit_content_map_refNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB1f_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.cn, %_RNvMse_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorE3endCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, %_RINvXs0_NvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtBb_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content18MapRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3316
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit

_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtNtNtCsjjJOMqlcxxG_5serde7private2de7content21visit_content_map_refNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB1f_24DependencyGroupSpecifierNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ad
  %.pr87 = load i64, ptr %i.an, align 8
  %i.kz = icmp eq i64 %.pr87, -2
  br i1 %i.kz, label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %i.an, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.q

_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split: ; preds = %.noexc45, %.noexc44, %.noexc43, %.noexc42, %.noexc41, %.noexc40, %.noexc39, %.noexc38, %.noexc37, %.noexc35, %.noexc34, %.noexc33, %.noexc32, %.noexc31, %.noexc30, %.noexc29, %.noexc28, %.noexc27, %.noexc26, %.noexc25
  store i64 -2, ptr %i.an, align 8, !alias.scope !3292, !noalias !3293
  br label %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread

_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread.sink.split, %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(88) %i.la)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit57 unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit57: ; preds = %_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsb8j7kd9PmgY_14pyproject_tomlsd_1__NtB37_24DependencyGroupSpecifierNtB20_11Deserialize11deserialize9___VisitorECsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3339
  call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  call void @llvm.experimental.noalias.scope.decl(metadata !3341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3342
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 72, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc58 unwind label %bb.n

.noexc58:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter.exit57
  %i.lb = load i64, ptr %i.b, align 8, !range !8, !noalias !3342, !noundef !5
  %i.lc = trunc nuw i64 %i.lb to i1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !range !9, !noalias !3342, !noundef !5 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.lc, label %bb.cq, label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsEhZmuQNqkz_11ruff_linter.exit.i, !prof !6

bb.cq:                                            ; preds = %.noexc58
  %i.lg = load i64, ptr %i.lf, align 8, !noalias !3342
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.le, i64 %i.lg) #41
          to label %.noexc59 unwind label %bb.n

.noexc59:                                         ; preds = %bb.cq
  unreachable

_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.noexc58
  %i.lh = load ptr, ptr %i.lf, align 8, !noalias !3342, !nonnull !5, !noundef !5 ; 2 uses
  %i.li = icmp ugt i64 %i.le, 71
  call void @llvm.assume(i1 %i.li)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.lh, ptr noundef nonnull readonly align 1 dereferenceable(72) @158, i64 range(i64 0, -9223372036854775808) 72, i1 false), !noalias !3343
  store i64 %i.le, ptr %i.d, align 8, !alias.scope !3344, !noalias !3339
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.lh, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3344, !noalias !3339
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 72, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3344, !noalias !3339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3339
  store i64 0, ptr %i.c, align 8, !noalias !3339
  invoke fastcc void @_RINvMNtNtCsd1Od0hvlDsw_4toml2de5errorNtB3_5Error6customNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(88) %i.am, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.cr unwind label %bb.n

bb.cr:                                            ; preds = %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3339
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.lj, ptr noundef nonnull align 8 dereferenceable(88) %i.am, i64 88, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.aq)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.b, %bb.q, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret void

bb.ct:                                            ; preds = %.body
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.cu:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCs9BeaGo73rC4_16ruff_source_file10line_index1__NtB5_10OneIndexedNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB25_15PrettyFormatterEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs20_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojENtB9_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB20_15PrettyFormatterEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsjjJOMqlcxxG_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB26_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB26_11Deserialize11deserialize10VecVisitorNtCsaaRuwTSDeTG_9pep508_rs11RequirementEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error13missing_fieldCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsjjJOMqlcxxG_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNtB26_5impls13StringVisitorECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error13missing_fieldCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvXNvCsb8j7kd9PmgY_14pyproject_tomls3_1__NtB8_7ProjectNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_strNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 9)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  switch i64 %2, label %bb.t [
    i64 4, label %bb.b
    i64 7, label %bb.c
    i64 11, label %bb.d
    i64 6, label %bb.e
    i64 15, label %bb.f
    i64 13, label %bb.h
    i64 8, label %bb.k
    i64 12, label %bb.n
    i64 21, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1701667182
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.u, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = xor i32 %i.e, 1936876918
  %i.g = getelementptr i8, ptr %1, i64 3
  %i.h = load i32, ptr %i.g, align 1
  %i.i = xor i32 %i.h, 1852795251
  %i.j = or i32 %i.f, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.u, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 1
  %i.o = xor i64 %i.n, 8390322045806929252
  %i.p = getelementptr i8, ptr %1, i64 3
  %i.q = load i64, ptr %i.p, align 1
  %i.r = xor i64 %i.q, 7957695015410037347
  %i.s = or i64 %i.o, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.u, label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.w = load i32, ptr %1, align 1
  %i.x = xor i32 %i.w, 1684104562
  %i.y = getelementptr i8, ptr %1, i64 4
  %i.z = load i16, ptr %i.y, align 1
  %i.aa = zext i16 %i.z to i32
  %i.ab = xor i32 %i.aa, 25965
  %i.ac = or i32 %i.x, %i.ab
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.u, label %bb.t

bb.f:                                             ; preds = %bb.a
  %i.ag = load i64, ptr %1, align 1
  %i.ah = xor i64 %i.ag, 8315178084276987250
  %i.ai = getelementptr i8, ptr %1, i64 7
  %i.aj = load i64, ptr %i.ai, align 1
  %i.ak = xor i64 %i.aj, 7957693916049845619
  %i.al = or i64 %i.ah, %i.ak
  %i.am = icmp ne i64 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.u, label %bb.t

bb.g:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %1, align 1
  %i.aq = xor i32 %i.ap, 1701013868
  %i.ar = getelementptr i8, ptr %1, i64 3
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = xor i32 %i.as, 1702063717
  %i.au = or i32 %i.aq, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ay = load i64, ptr %1, align 1
  %i.az = xor i64 %i.ay, 3271147622339144044
  %i.ba = getelementptr i8, ptr %1, i64 5
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = xor i64 %i.bb, 8315171486951105907
  %i.bd = or i64 %i.az, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %bb.t

bb.i:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules29camelcase_imported_as_acronym39is_ignored_because_of_import_convention:bb.a
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i = phi i16 [ %i.bj, %bb.i ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ax = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = add i64 %.sroa.01.0.i.i.i, %i.ay
  %i.ba = and i64 %i.az, %i.aq
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [48 x i8], ptr %i.ar, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -48
  %i.be = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bd)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %.lr.ph.i.i
  br i1 %i.be, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit, label %bb.i, !prof !15

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread, !prof !6

bb.i:                                             ; preds = %.noexc25
  %i.bi = add i16 %.sroa.06.0.i33.i.i, -1
  %i.bj = and i16 %i.bi, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bk = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bl = add i64 %.sroa.01.0.i.i.i, %i.bk
  br label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.e, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread
  %.sroa.0.1 = phi i1 [ %.sroa.0.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.0.2, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread ], [ false, %bb.b ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.1

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.c) #40
          to label %common.resume unwind label %bb.p

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.noexc25
  %i.bm = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5
  %i.bo = icmp eq i64 %i.bn, %1
  br i1 %i.bo, label %bb.o, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %._crit_edge.i.i, %bb.f, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit, %bb.o
  %.sroa.0.2 = phi i1 [ %i.bv, %bb.o ], [ false, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit ], [ false, %bb.f ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.bp = load i64, ptr %i.c, align 8, !range !11, !alias.scope !6293, !noundef !5
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l

bb.l:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.br, %bb.m ], [ %lpad.phi, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.l
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit
  %i.bt = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !5, !noundef !5
  %bcmp = call i32 @bcmp(ptr nonnull %i.bu, ptr nonnull %0, i64 %1)
  %i.bv = icmp eq i32 %bcmp, 0
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread

bb.p:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison15type_comparison(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 11 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 32
  %.val5 = load i64, ptr %i.e, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.val5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.h, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 %.val7
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.b, align 8
  %.sroa.014.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %.sroa.014.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val, ptr %.sroa.014.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.f, ptr %.sroa.014.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.014.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %.val6, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.n = call { ptr, ptr } @_RNvXs5_NtCs6Wt4yPw39th_9itertools10tuple_implINtB5_12TupleWindowsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB18_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtB1a_5slice4iter4IterB2n_EETB2m_B2m_EENtNtNtB18_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b), !noalias !6308 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.backedge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !6309, !noalias !6308, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !6309, !noalias !6308, !nonnull !5, !noundef !5
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !6309, !noalias !6308
  %i.u = load i8, ptr %i.q, align 1, !range !56, !noalias !6310, !noundef !5
  %switch.i.i.i.i = icmp samesign ult i8 %i.u, 2
  br i1 %switch.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtCs6Wt4yPw39th_9itertools10tuple_impl12TupleWindowsINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtBc_5slice4iter4IterB2x_EETB2w_B2w_EEIB3n_NtNtB2B_5nodes5CmpOpEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4u_4find5checkTB3S_RB48_EQNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison15type_comparison0E0INtNtNtBc_3ops12control_flow11ControlFlowB5y_EEB5W_.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.e
  br label %.backedge

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtCs6Wt4yPw39th_9itertools10tuple_impl12TupleWindowsINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtBc_5slice4iter4IterB2x_EETB2w_B2w_EEIB3n_NtNtB2B_5nodes5CmpOpEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4u_4find5checkTB3S_RB48_EQNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison15type_comparison0E0INtNtNtBc_3ops12control_flow11ControlFlowB5y_EEB5W_.exit: ; preds = %bb.c
  %i.v = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison7is_type(ptr noundef nonnull align 8 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.j)
  br i1 %i.v, label %bb.f, label %bb.e

bb.d:                                             ; preds = %.backedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtCs6Wt4yPw39th_9itertools10tuple_impl12TupleWindowsINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtBc_5slice4iter4IterB2x_EETB2w_B2w_EEIB3n_NtNtB2B_5nodes5CmpOpEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4u_4find5checkTB3S_RB48_EQNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison15type_comparison0E0INtNtNtBc_3ops12control_flow11ControlFlowB5y_EEB5W_.exit
  %i.w = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison7is_type(ptr noundef nonnull align 8 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.j)
  br i1 %i.w, label %bb.f, label %.backedge.backedge

bb.f:                                             ; preds = %bb.e, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtCs6Wt4yPw39th_9itertools10tuple_impl12TupleWindowsINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtNtBc_5slice4iter4IterB2x_EETB2w_B2w_EEIB3n_NtNtB2B_5nodes5CmpOpEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4u_4find5checkTB3S_RB48_EQNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison15type_comparison0E0INtNtNtBc_3ops12control_flow11ControlFlowB5y_EEB5W_.exit
  %i.x = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison8is_dtype(ptr noundef nonnull align 8 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.j)
  br i1 %i.x, label %.backedge.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison8is_dtype(ptr noundef nonnull align 8 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.j)
  br i1 %i.y, label %.backedge.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = load i32, ptr %i.k, align 8, !noundef !5
  %i.aa = load i32, ptr %i.l, align 4, !noundef !5
  %i.ab = load ptr, ptr %i.m, align 8, !nonnull !5, !align !17, !noundef !5
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pycodestyle5rules15type_comparison14TypeComparisonEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.ab, i32 noundef %i.z, i32 noundef %i.aa)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules15type_comparison7is_type(ptr nofree noundef nonnull readonly align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !20, !noundef !5
  switch i32 %i.a, label %bb.d [
    i32 16, label %bb.b
    i32 28, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18match_builtin_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @379, i64 noundef 4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.g = load i8, ptr %i.f, align 1, !range !51, !alias.scope !6313, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !6313, !noundef !5
  %i.j = and i64 %i.i, 72057594037927935
  %i.k = icmp ult i8 %i.g, -48
  %i.l = zext i8 %i.g to i64
  %i.m = add nsw i64 %i.l, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 16)
  %.sroa.0.0.i = select i1 %i.k, i64 %spec.store.select.i, i64 %i.j ; 2 uses
  %i.n = icmp ugt i8 %i.g, -49
  %i.o = load ptr, ptr %i.e, align 8, !alias.scope !6313
  %.sroa.01.0.i = select i1 %i.n, ptr %i.o, ptr %i.e ; 173 uses
  switch i64 %.sroa.0.0.i, label %bb.d [
    i64 4, label %bb.e
    i64 9, label %bb.f
    i64 5, label %bb.g
    i64 11, label %bb.h
    i64 7, label %bb.i
    i64 6, label %bb.l
    i64 3, label %bb.o
    i64 10, label %bb.r
    i64 8, label %bb.t
    i64 12, label %bb.y
    i64 15, label %bb.ae
    i64 14, label %bb.af
    i64 13, label %bb.ah
    i64 17, label %bb.am
    i64 22, label %bb.an
    i64 20, label %bb.aq
    i64 18, label %bb.ar
    i64 16, label %bb.as
    i64 19, label %bb.bl
    i64 25, label %bb.br
    i64 21, label %bb.cm
  ]

bb.d:                                             ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ch, %bb.cf, %bb.cc, %bb.bw, %bb.br, %bb.bo, %bb.be, %bb.aq, %bb.ap, %bb.ad, %bb.ac, %bb.s, %bb.cr, %bb.c, %bb.ab, %bb.ck, %bb.a, %bb.cs, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.aet, %bb.cs ], [ %i.d, %bb.b ], [ false, %bb.a ], [ false, %bb.ck ], [ false, %bb.ab ], [ false, %bb.cp ], [ false, %bb.cn ], [ false, %bb.cl ], [ false, %bb.ch ], [ false, %bb.cf ], [ false, %bb.be ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %bb.cm ], [ false, %bb.ad ], [ false, %bb.c ], [ false, %bb.br ], [ false, %bb.cc ], [ false, %bb.bo ], [ false, %bb.ac ], [ false, %bb.bw ], [ false, %bb.s ], [ false, %bb.co ], [ false, %bb.cr ], [ false, %bb.cq ]
  ret i1 %.sroa.0.0.shrunk

bb.e:                                             ; preds = %bb.c
  %i.p = load i32, ptr %.sroa.01.0.i, align 1
  %i.q = icmp ne i32 %i.p, 1819242338
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.cs, label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.t = load i64, ptr %.sroa.01.0.i, align 1
  %i.u = xor i64 %i.t, 7021800531663550818
  %i.v = getelementptr i8, ptr %.sroa.01.0.i, i64 8
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = xor i64 %i.x, 121
  %i.z = or i64 %i.u, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.cs, label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %.sroa.01.0.i, align 1
  %i.ae = xor i32 %i.ad, 1702132066
  %i.af = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = xor i32 %i.ah, 115
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.cs, label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.an = load i64, ptr %.sroa.01.0.i, align 1
  %i.ao = xor i64 %i.an, 8387230223671848035
  %i.ap = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = xor i64 %i.aq, 7237117975334843251
  %i.as = or i64 %i.ao, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.cs, label %bb.ak

bb.i:                                             ; preds = %bb.c
  %i.aw = load i32, ptr %.sroa.01.0.i, align 1
  %i.ax = xor i32 %i.aw, 1886220131
  %i.ay = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = xor i32 %i.az, 2019912816
  %i.bb = or i32 %i.ax, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.cs, label %bb.bf

bb.j:                                             ; preds = %bb.e
  %i.bf = load i32, ptr %.sroa.01.0.i, align 1
  %i.bg = icmp ne i32 %i.bf, 1952672100
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.cs, label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.bj = load i64, ptr %.sroa.01.0.i, align 1
  %i.bk = xor i64 %i.bj, 8386109761094250085
  %i.bl = getelementptr i8, ptr %.sroa.01.0.i, i64 8
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = xor i64 %i.bn, 101
  %i.bp = or i64 %i.bk, %i.bo
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.cs, label %bb.n

bb.l:                                             ; preds = %bb.c
  %i.bt = load i32, ptr %.sroa.01.0.i, align 1
  %i.bu = xor i32 %i.bt, 1953261926
  %i.bv = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i32
  %i.by = xor i32 %i.bx, 29285
  %i.bz = or i32 %i.bu, %i.by
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.cs, label %bb.s

bb.m:                                             ; preds = %bb.g
  %i.cd = load i32, ptr %.sroa.01.0.i, align 1
  %i.ce = xor i32 %i.cd, 1634692198
  %i.cf = getelementptr i8, ptr %.sroa.01.0.i, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = xor i32 %i.ch, 116
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.cs, label %bb.u

bb.n:                                             ; preds = %bb.k
  %i.cn = load i64, ptr %.sroa.01.0.i, align 1
  %i.co = xor i64 %i.cn, 7310308002277323366
  %i.cp = getelementptr i8, ptr %.sroa.01.0.i, i64 8
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i64
  %i.cs = xor i64 %i.cr, 116
  %i.ct = or i64 %i.co, %i.cs
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.cs, label %bb.au

bb.o:                                             ; preds = %bb.c
  %i.cx = load i16, ptr %.sroa.01.0.i, align 1
  %i.cy = xor i16 %i.cx, 28265
  %i.cz = getelementptr i8, ptr %.sroa.01.0.i, i64 2
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i16
  %i.dc = xor i16 %i.db, 116
  %i.dd = or i16 %i.cy, %i.dc
  %i.de = icmp ne i16 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.cs, label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.dh = load i32, ptr %.sroa.01.0.i, align 1
  %i.di = icmp ne i32 %i.dh, 1953720684
  %i.dj = zext i1 %i.di to i32
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.cs, label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.dl = load i16, ptr %.sroa.01.0.i, align 1
  %i.dm = xor i16 %i.dl, 24941
  %i.dn = getelementptr i8, ptr %.sroa.01.0.i, i64 2
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i16
  %i.dq = xor i16 %i.dp, 112
  %i.dr = or i16 %i.dm, %i.dq
end_hunk_2
