Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_server-9f9a063b6d2572a4.ruff_server.250241f5eb4d154d-cgu.09?download=true
inline.NumInlined: 2382
inline.NumDeleted: 1041
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations11MessageTypeECs3aZOKTqqjPR_11ruff_server:bb.a

_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations11MessageTypeNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.b, %bb.f ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !3712
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3712
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3712
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssA_1__NtB5_14CodeActionKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors11GlobPatternECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orss1c_1__NtB5_11GlobPatternNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors7BaseUriECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orss0_1__NtB5_7BaseUriNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors7MessageECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orss1G_1__NtB5_7MessageNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8ContentsECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orsso_1__NtB5_8ContentsNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orss1K_1__NtB5_8NotebookNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8TextEditEECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3717, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvYNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8TextEditEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtB2_5ValueECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3720, !nonnull !22, !align !173, !noundef !22
  tail call fastcc void @_RINvXNtNtCscvBHLZPbXnS_10serde_json5value3serNtB5_5ValueNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtB3_10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3723)
  %.val.i = load ptr, ptr %1, align 8, !noalias !3723, !nonnull !22, !align !173, !noundef !22 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3726)
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !3729, !nonnull !22, !noundef !22
  %i.b = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i = load i64, ptr %i.b, align 8, !noalias !3729, !noundef !22 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3733)
  %i.c = icmp eq i64 %.val1.i.i, 0
  br i1 %i.c, label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRRNtNtCscdodAO9FK5_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !3736
  %i.d = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !3736 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i.i) #38, !noalias !3743
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i, i1 false), !noalias !3744
  br label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRRNtNtCscdodAO9FK5_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit

_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRRNtNtCscdodAO9FK5_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.a, %bb.d
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.d, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ]
  store i8 3, ptr %0, align 8, !alias.scope !3745, !noalias !3746
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val1.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3745, !noalias !3746
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3745, !noalias !3746
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3745, !noalias !3746
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3747, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress7o_1__NtB5_10DiagnosticNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures12RegistrationECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3750, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress76_1__NtB5_12RegistrationNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures16ChangeAnnotationECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3753, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress68_1__NtB5_16ChangeAnnotationNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures17FileSystemWatcherECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3756, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress7m_1__NtB5_17FileSystemWatcherNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures18ServerCapabilitiesECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3759, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress7c_1__NtB5_18ServerCapabilitiesNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1520) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures19FileOperationFilterECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3762, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress6a_1__NtB5_19FileOperationFilterNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3765, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress9E_1__NtB5_20NotebookCellLanguageNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures27CodeActionKindDocumentationECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3768, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress9y_1__NtB5_27CodeActionKindDocumentationNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3771, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress9o_1__NtB5_28DiagnosticRelatedInformationNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8TextEditECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3774, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress3c_1__NtB5_8TextEditNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations13CodeActionTagECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3777)
  %.val.i = load ptr, ptr %1, align 8, !noalias !3777, !nonnull !22, !align !3780, !noundef !22 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3781)
  %.val.i.i = load i32, ptr %.val.i, align 4, !range !3013, !noalias !3784, !noundef !22
  %i.a = getelementptr i8, ptr %.val.i, i64 4
  %.val1.i.i = load i32, ptr %i.a, align 4, !noalias !3784
  %i.b = trunc nuw i32 %.val.i.i to i1
  %.sroa.0.0.i.i.i = select i1 %i.b, i32 %.val1.i.i, i32 1
  %2 = zext i32 %.sroa.0.0.i.i.i to i64
  store i8 2, ptr %0, align 8, !alias.scope !3785
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3785
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3785
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations13DiagnosticTagECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3790)
  %.val.i = load ptr, ptr %1, align 8, !noalias !3790, !nonnull !22, !align !3780, !noundef !22 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  %.val.i.i = load i32, ptr %.val.i, align 4, !range !3796, !noalias !3797, !noundef !22
  switch i32 %.val.i.i, label %default.unreachable [
    i32 0, label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations13DiagnosticTagNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations13DiagnosticTagNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %.val.i, i64 4
  %.val1.i.i = load i32, ptr %i.a, align 4, !noalias !3797
  %i.b = zext i32 %.val1.i.i to i64
  br label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations13DiagnosticTagNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit

_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations13DiagnosticTagNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ %i.b, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !3798
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3798
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3798
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3803, !nonnull !22, !align !173, !noundef !22
  tail call fastcc void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssA_1__NtB5_14CodeActionKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors12MarkedStringECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3806, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orss1E_1__NtB5_12MarkedStringNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors14DocumentChangeECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3809, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orssI_1__NtB5_14DocumentChangeNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors14DocumentFilterECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3812, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orssO_1__NtB5_14DocumentFilterNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors15RelatedDocumentECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3815, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orss20_1__NtB5_15RelatedDocumentNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3818, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orss1Q_1__NtB5_16NotebookSelectorNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors18CodeActionResponseECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3821, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orssg_1__NtB5_18CodeActionResponseNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors4EditECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !noalias !3824, !nonnull !22, !align !173, !noundef !22
  tail call void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_orss14_1__NtB5_4EditNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRReECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3827)
  %.val.i = load ptr, ptr %1, align 8, !noalias !3827, !nonnull !22, !noundef !22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noalias !3827, !noundef !22 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3836)
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !3839
  %i.c = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !3839 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i) #38, !noalias !3847
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val1.i, i1 false), !noalias !3848
  br label %_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit

_RINvXs1J_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsRReNtB9_9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.a, %bb.d
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.c, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ]
  store i8 3, ptr %0, align 8, !alias.scope !3849, !noalias !3850
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val1.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3849, !noalias !3850
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3849, !noalias !3850
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3849, !noalias !3850
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRbECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 2)) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3851)
  %.val.i = load i8, ptr %1, align 1, !range !3854, !noalias !3851, !noundef !22
  store i8 1, ptr %0, align 8, !alias.scope !3855
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !alias.scope !3855
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueRmECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3860)
  %.val.i = load i32, ptr %1, align 4, !noalias !3860, !noundef !22
  %i.a = zext i32 %.val.i to i64
  store i8 2, ptr %0, align 8, !alias.scope !3863
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3863
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !3863
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueuECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  store i8 0, ptr %0, align 8, !alias.scope !3868
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsiXichZnxgbf_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEECs3aZOKTqqjPR_11ruff_server(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !296, !alias.scope !3873, !noundef !22
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs3aZOKTqqjPR_11ruff_server.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs3aZOKTqqjPR_11ruff_server.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f) #37
          to label %bb.k unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs3aZOKTqqjPR_11ruff_server.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs3aZOKTqqjPR_11ruff_server.exit.i.i
  %i.h = landingpad { ptr, i32 }
end_hunk_0
