Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.15?download=true
inline.NumInlined: 5570
inline.NumDeleted: 2226
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 48
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvXNvNtNtCsEhZmuQNqkz_11ruff_linter7message5sarifsd_1__NtB5_11SarifRegionNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB27_15PrettyFormatterEEB9_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer16serialize_structCsEhZmuQNqkz_11ruff_linter.exit, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.u, %bb.f ], [ %i.j, %bb.b ], [ %i.p, %bb.d ], [ %i.l, %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer16serialize_structCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.n, %bb.c ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCsEhZmuQNqkz_11ruff_linter7message5sarifse_1__NtB5_15SarifPropertiesNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2b_15PrettyFormatterEEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(48) initializes((40, 41)) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3854)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !3855, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10.i.i = load ptr, ptr %i.b, align 8, !alias.scope !3855, !nonnull !13, !align !27, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3856)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3857, !noundef !13
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !3857
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.f, align 8, !alias.scope !3857
  %i.g = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !13, !noalias !3858, !nonnull !13
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 1), !noalias !3859, !inline_history !1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer16serialize_structCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.i), !noalias !3860
  br label %bb.g

_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer16serialize_structCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.k, align 8
  %i.l = call noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer16serialize_structCsEhZmuQNqkz_11ruff_linter.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = call noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m) ; 2 uses
  %.not17 = icmp eq ptr %i.n, null
  br i1 %.not17, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = call noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o) ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = call noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif10SarifLevelEB2S_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.q) ; 2 uses
  %.not19 = icmp eq ptr %i.r, null
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !nonnull !13, !align !27, !noundef !13
  %i.t = load i8, ptr %i.k, align 8, !range !17, !noundef !13
  %i.u = call fastcc noundef align 8 ptr @_RNvXs7_NtCscvBHLZPbXnS_10serde_json3serINtB5_8CompoundQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser15SerializeStruct3endCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(48) %i.s, i8 noundef %i.t)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer16serialize_structCsEhZmuQNqkz_11ruff_linter.exit, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.u, %bb.f ], [ %i.j, %bb.b ], [ %i.p, %bb.d ], [ %i.l, %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer16serialize_structCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.n, %bb.c ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCsEhZmuQNqkz_11ruff_linter7message5sarifsf_1__NtB5_10SarifLevelNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB26_15PrettyFormatterEEB9_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !17, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  switch i8 %i.a, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2_15PrettyFormatterECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 4) ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit.sink.split, !prof !26

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2_15PrettyFormatterECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 7) ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit.sink.split, !prof !26

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvNtCscvBHLZPbXnS_10serde_json3ser18format_escaped_strQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB2_15PrettyFormatterECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 5) ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.e, null
  br i1 %.not.i.i4, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit.sink.split, !prof !26

_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit.sink.split: ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi ptr [ %i.d, %bb.c ], [ %i.c, %bb.b ], [ %i.e, %bb.d ]
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink)
  br label %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit.sink.split, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.d ], [ %i.f, %_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQDNtNtCs2AWtUsOyxgP_3std2io5WriteEL_NtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer22serialize_unit_variantCsEhZmuQNqkz_11ruff_linter.exit.sink.split ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs0_NtCs5e9M2GLoJMY_8indexmap5serdeINtNtB8_3map8IndexMapNtNtCscdodAO9FK5_5alloc6string6StringBW_ENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeINtNtB1D_5value18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !3865
  call fastcc void @_RINvYINtNtCs5e9M2GLoJMY_8indexmap5serde15IndexMapVisitorNtNtCscdodAO9FK5_5alloc6string6StringBS_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs6nZeqdiIoCH_10serde_core2de7Visitor12visit_stringNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !3866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3864
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCs5e9M2GLoJMY_8indexmap5serdeINtNtB8_3map8IndexMapNtNtCscdodAO9FK5_5alloc6string6StringBW_ENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNtCs5e9M2GLoJMY_8indexmap5serde15IndexMapVisitorNtNtCscdodAO9FK5_5alloc6string6StringB37_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCs5e9M2GLoJMY_8indexmap5serdeINtNtB8_3map8IndexMapNtNtCscdodAO9FK5_5alloc6string6StringIBC_BW_BW_EENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNtCs5e9M2GLoJMY_8indexmap5serde15IndexMapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3map8IndexMapB37_B37_ENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCs5e9M2GLoJMY_8indexmap5serdeINtNtB8_3map8IndexMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB10_3vec3VecNtCsaaRuwTSDeTG_9pep508_rs11RequirementEENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNtCs5e9M2GLoJMY_8indexmap5serde15IndexMapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB3b_3vec3VecNtCsaaRuwTSDeTG_9pep508_rs11RequirementENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCsEhZmuQNqkz_11ruff_linter8settings10rule_tableNtB6_9RuleTableINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtNtBa_5codes4RuleE9from_iterAB2a_j1_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 256)) %0, i16 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 20 uses
  %i.b = alloca [128 x i8], align 8               ; 3 uses
  %.not.i = icmp eq i16 %1, -1
  br i1 %.not.i, label %_RINvXs1_NtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB6_7RuleSetINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtNtBa_5codes4RuleE9from_iterAB25_j1_EBa_.exit, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i: ; preds = %bb.a
  %.sroa.1855.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.1754.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.1653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.1552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.1451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.1350.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.1249.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.1148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.1047.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.946.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.845.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.744.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.643.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i16 %1, 6
  %i.d = zext nneg i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.f = and i16 %1, 63
  %i.g = zext nneg i16 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3871
  call void @_RNvXsL_NtCs4NRVxsYgnAr_4core5arrayAyj10_NtNtB7_7default7Default7defaultCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b), !noalias !3872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3871
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !noalias !3871
  store i64 %i.h, ptr %i.e, align 8, !noalias !3871
  %.sroa.040.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !3871
  %.sroa.441.0.copyload.i.i = load i64, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.542.0.copyload.i.i = load i64, ptr %.sroa.542.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.643.0.copyload.i.i = load i64, ptr %.sroa.643.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.744.0.copyload.i.i = load i64, ptr %.sroa.744.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.845.0.copyload.i.i = load i64, ptr %.sroa.845.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.946.0.copyload.i.i = load i64, ptr %.sroa.946.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1047.0.copyload.i.i = load i64, ptr %.sroa.1047.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1148.0.copyload.i.i = load i64, ptr %.sroa.1148.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1249.0.copyload.i.i = load i64, ptr %.sroa.1249.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1350.0.copyload.i.i = load i64, ptr %.sroa.1350.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1451.0.copyload.i.i = load i64, ptr %.sroa.1451.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1552.0.copyload.i.i = load i64, ptr %.sroa.1552.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1653.0.copyload.i.i = load i64, ptr %.sroa.1653.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1754.0.copyload.i.i = load i64, ptr %.sroa.1754.0..sroa_idx.i.i, align 8, !noalias !3871
  %.sroa.1855.0.copyload.i.i = load i64, ptr %.sroa.1855.0..sroa_idx.i.i, align 8, !noalias !3871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3871
  br label %_RINvXs1_NtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB6_7RuleSetINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtNtBa_5codes4RuleE9from_iterAB25_j1_EBa_.exit

_RINvXs1_NtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB6_7RuleSetINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtNtBa_5codes4RuleE9from_iterAB25_j1_EBa_.exit: ; preds = %bb.a, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i
  %.us-phi.i = phi i64 [ %.sroa.1855.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi46.i = phi i64 [ %.sroa.1754.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi47.i = phi i64 [ %.sroa.1653.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi48.i = phi i64 [ %.sroa.1552.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi49.i = phi i64 [ %.sroa.1451.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi50.i = phi i64 [ %.sroa.1350.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi51.i = phi i64 [ %.sroa.1249.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi52.i = phi i64 [ %.sroa.1148.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi53.i = phi i64 [ %.sroa.1047.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi54.i = phi i64 [ %.sroa.946.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi55.i = phi i64 [ %.sroa.845.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi56.i = phi i64 [ %.sroa.744.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi57.i = phi i64 [ %.sroa.643.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi58.i = phi i64 [ %.sroa.542.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi59.i = phi i64 [ %.sroa.441.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.us-phi60.i = phi i64 [ %.sroa.040.0.copyload.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_.exit.i ], [ 0, %bb.a ] ; 2 uses
  store i64 %.us-phi60.i, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi59.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.us-phi58.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.us-phi57.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.us-phi56.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.us-phi55.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.us-phi54.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.us-phi53.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.us-phi52.i, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.us-phi51.i, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.us-phi50.i, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.us-phi49.i, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.us-phi48.i, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.us-phi47.i, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.us-phi46.i, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.us-phi.i, ptr %.sroa.19.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.us-phi60.i, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.us-phi59.i, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.us-phi58.i, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.us-phi57.i, ptr %.sroa.7.0..sroa_idx9, align 8
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.us-phi56.i, ptr %.sroa.8.0..sroa_idx11, align 8
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.us-phi55.i, ptr %.sroa.9.0..sroa_idx13, align 8
  %.sroa.10.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.us-phi54.i, ptr %.sroa.10.0..sroa_idx15, align 8
  %.sroa.11.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.us-phi53.i, ptr %.sroa.11.0..sroa_idx17, align 8
  %.sroa.12.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.us-phi52.i, ptr %.sroa.12.0..sroa_idx19, align 8
  %.sroa.13.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.us-phi51.i, ptr %.sroa.13.0..sroa_idx21, align 8
  %.sroa.14.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.us-phi50.i, ptr %.sroa.14.0..sroa_idx23, align 8
  %.sroa.15.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.us-phi49.i, ptr %.sroa.15.0..sroa_idx25, align 8
  %.sroa.16.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.us-phi48.i, ptr %.sroa.16.0..sroa_idx27, align 8
  %.sroa.17.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.us-phi47.i, ptr %.sroa.17.0..sroa_idx29, align 8
  %.sroa.18.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.us-phi46.i, ptr %.sroa.18.0..sroa_idx31, align 8
  %.sroa.19.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %.us-phi.i, ptr %.sroa.19.0..sroa_idx33, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCsEhZmuQNqkz_11ruff_linter8settings10rule_tableNtB6_9RuleTableINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorNtNtBa_5codes4RuleE9from_iterINtNtNtB1h_8adapters7flatten7FlatMapINtNtNtB1j_5slice4iter4IterNtNtBa_13rule_selector12RuleSelectorEINtNtB2I_6filter6FilterNtB3G_16RuleSelectorIterNCNvMs8_B3G_B3E_5rules0ENCNvMs_B8_NtB8_14LinterSettings3new0EEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(192) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [128 x i8], align 8               ; 20 uses
  %i.f = alloca [128 x i8], align 8               ; 3 uses
  %i.g = alloca [2 x i8], align 1                 ; 5 uses
  %i.h = alloca [88 x i8], align 8                ; 7 uses
  %i.i = alloca [192 x i8], align 8               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(192) %1, i64 192, i1 false), !noalias !3968
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.643.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.744.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.845.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.946.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.1047.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.1148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.1249.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.1350.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.1451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.1552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.1653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.1754.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.1855.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i, %bb.a
  %.sroa.34.0.i = phi i64 [ 0, %bb.a ], [ %i.cc, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.32.0.i = phi i64 [ 0, %bb.a ], [ %i.cb, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.30.0.i = phi i64 [ 0, %bb.a ], [ %i.ca, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.28.0.i = phi i64 [ 0, %bb.a ], [ %i.bz, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.26.0.i = phi i64 [ 0, %bb.a ], [ %i.by, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.24.0.i = phi i64 [ 0, %bb.a ], [ %i.bx, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.22.0.i = phi i64 [ 0, %bb.a ], [ %i.bw, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.20.0.i = phi i64 [ 0, %bb.a ], [ %i.bv, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.18.0.i = phi i64 [ 0, %bb.a ], [ %i.bu, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.16.0.i = phi i64 [ 0, %bb.a ], [ %i.bt, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.14.0.i = phi i64 [ 0, %bb.a ], [ %i.bs, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.12.0.i = phi i64 [ 0, %bb.a ], [ %i.br, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.10.0.i = phi i64 [ 0, %bb.a ], [ %i.bq, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.8.0.i = phi i64 [ 0, %bb.a ], [ %i.bp, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.6.0.i = phi i64 [ 0, %bb.a ], [ %i.bo, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.bn, %_RNvMNtNtCsEhZmuQNqkz_11ruff_linter8registry8rule_setNtB2_7RuleSet6insert.exit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3969)
  call void @llvm.experimental.noalias.scope.decl(metadata !3970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3971
  call void @llvm.experimental.noalias.scope.decl(metadata !3972)
  %i.q = load i16, ptr %i.i, align 8, !range !37, !alias.scope !3972, !noalias !3967, !noundef !13
  %.not.i1 = icmp eq i16 %i.q, -1
  br i1 %.not.i1, label %.lr.ph.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3973
  store ptr %i.o, ptr %i.b, align 8, !noalias !3974
  br label %bb.d

bb.d:                                             ; preds = %.noexc5, %bb.c
  %i.r = invoke noundef i16 @_RNvXs9_NtCsEhZmuQNqkz_11ruff_linter13rule_selectorNtB5_16RuleSelectorIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq i16 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3974
  store i16 %i.r, ptr %i.a, align 2, !noalias !3975
  %i.s = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs8_NtCsEhZmuQNqkz_11ruff_linter13rule_selectorNtBW_12RuleSelector5rules0INtB7_5FnMutTRNtNtBY_5codes4RuleEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3974
  br i1 %i.s, label %.noexc.i, label %bb.d

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3973
  %i.t = load i16, ptr %i.i, align 8, !range !37, !alias.scope !3976, !noalias !3967, !noundef !13
  switch i16 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector16RuleSelectorIterNCNvMs8_B1D_NtB1D_12RuleSelector5rules0EEEB1F_.exit.i [
    i16 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEB1d_EEB24_.exit.sink.split.i.i.i.i
    i16 1, label %bb.g
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEB1d_EEB24_.exit.sink.split.i.i.i.i: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEEEB1O_.exit.i.i.i.i.i
  %.sink.i.i.i.i = phi ptr [ %i.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEEEB1O_.exit.i.i.i.i.i ], [ %i.m, %bb.f ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sink.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector16RuleSelectorIterNCNvMs8_B1D_NtB1D_12RuleSelector5rules0EEEB1F_.exit.i unwind label %bb.l, !noalias !3967

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.m, align 8, !alias.scope !3977, !noalias !3967, !noundef !13
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEEEB1O_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEEEB1O_.exit.i.i.i.i.i unwind label %bb.i, !noalias !3967

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %i.n, align 8, !alias.scope !3978, !noalias !3967, !noundef !13
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.body.i3, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.body.i3 unwind label %bb.k, !noalias !3967

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEEEB1O_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %i.n, align 8, !alias.scope !3979, !noalias !3967, !noundef !13
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector16RuleSelectorIterNCNvMs8_B1D_NtB1D_12RuleSelector5rules0EEEB1F_.exit.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEB1d_EEB24_.exit.sink.split.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !3967
  unreachable

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEB1d_EEB24_.exit.sink.split.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i3
end_hunk_0
