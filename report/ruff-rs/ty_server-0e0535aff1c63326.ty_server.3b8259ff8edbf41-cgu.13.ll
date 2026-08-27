Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.13?download=true
inline.NumInlined: 1758
inline.NumDeleted: 744
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests16goto_declarationNtBV_29GotoDeclarationRequestHandlerNtNtBZ_6traits32BackgroundDocumentRequestHandler17run_with_snapshot0INtB7_5FnMutTNtCskEUeM34gmJU_6ty_ide16NavigationTargetEE8call_mutB13_:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2797, !noalias !2800, !nonnull !3, !align !29, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 149
  %i.i = load i8, ptr %i.h, align 1, !range !790, !noalias !2803, !noundef !3
  call void @_RNvXNtNtCsjNt1Wzngcv_9ty_server8document8locationNtCskEUeM34gmJU_6ty_ide16NavigationTargetNtB2_6ToLink7to_link(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) @79, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.a, i8 noundef %i.i), !noalias !2797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2803
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests16goto_declarationNtBV_29GotoDeclarationRequestHandlerNtNtBZ_6traits32BackgroundDocumentRequestHandler17run_with_snapshots_0INtB7_5FnMutTNtCskEUeM34gmJU_6ty_ide16NavigationTargetEE8call_mutB13_(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !align !29, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !align !29, !noundef !3
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !29, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 149
  %i.d = load i8, ptr %i.c, align 1, !range !790, !noalias !2805, !noundef !3
  tail call void @_RNvXNtNtCsjNt1Wzngcv_9ty_server8document8locationNtCskEUeM34gmJU_6ty_ide16NavigationTargetNtB2_6ToLink11to_location(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) @79, i8 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests19goto_implementationNtBV_32GotoImplementationRequestHandlerNtNtBZ_6traits32BackgroundDocumentRequestHandler17run_with_snapshot0INtB7_5FnMutTNtCskEUeM34gmJU_6ty_ide16NavigationTargetEE8call_mutB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !29, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2809, !noalias !2812, !nonnull !3, !align !29, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2815
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2809, !noalias !2812, !nonnull !3, !align !2804, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !2815
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2809, !noalias !2812, !nonnull !3, !align !29, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 149
  %i.i = load i8, ptr %i.h, align 1, !range !790, !noalias !2815, !noundef !3
  call void @_RNvXNtNtCsjNt1Wzngcv_9ty_server8document8locationNtCskEUeM34gmJU_6ty_ide16NavigationTargetNtB2_6ToLink7to_link(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) @79, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.a, i8 noundef %i.i), !noalias !2809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2815
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests19goto_implementationNtBV_32GotoImplementationRequestHandlerNtNtBZ_6traits32BackgroundDocumentRequestHandler17run_with_snapshots_0INtB7_5FnMutTNtCskEUeM34gmJU_6ty_ide16NavigationTargetEE8call_mutB13_(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !align !29, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !align !29, !noundef !3
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !29, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 149
  %i.d = load i8, ptr %i.c, align 1, !range !790, !noalias !2816, !noundef !3
  tail call void @_RNvXNtNtCsjNt1Wzngcv_9ty_server8document8locationNtCskEUeM34gmJU_6ty_ide16NavigationTargetNtB2_6ToLink11to_location(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) @79, i8 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests20goto_type_definitionNtBV_32GotoTypeDefinitionRequestHandlerNtNtBZ_6traits32BackgroundDocumentRequestHandler17run_with_snapshot0INtB7_5FnMutTNtCskEUeM34gmJU_6ty_ide16NavigationTargetEE8call_mutB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !29, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2820)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2820, !noalias !2823, !nonnull !3, !align !29, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2826
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2820, !noalias !2823, !nonnull !3, !align !2804, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !2826
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2820, !noalias !2823, !nonnull !3, !align !29, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 149
  %i.i = load i8, ptr %i.h, align 1, !range !790, !noalias !2826, !noundef !3
  call void @_RNvXNtNtCsjNt1Wzngcv_9ty_server8document8locationNtCskEUeM34gmJU_6ty_ide16NavigationTargetNtB2_6ToLink7to_link(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) @79, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.a, i8 noundef %i.i), !noalias !2820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2826
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests20goto_type_definitionNtBV_32GotoTypeDefinitionRequestHandlerNtNtBZ_6traits32BackgroundDocumentRequestHandler17run_with_snapshots_0INtB7_5FnMutTNtCskEUeM34gmJU_6ty_ide16NavigationTargetEE8call_mutB13_(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !align !29, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !align !29, !noundef !3
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !29, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 149
  %i.d = load i8, ptr %i.c, align 1, !range !790, !noalias !2827, !noundef !3
  tail call void @_RNvXNtNtCsjNt1Wzngcv_9ty_server8document8locationNtCskEUeM34gmJU_6ty_ide16NavigationTargetNtB2_6ToLink11to_location(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) @79, i8 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCsl4BgoAJVhPh_3url4host4HostReENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !align !29, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.e = load i8, ptr %i.d, align 8, !range !790, !alias.scope !2831, !noalias !2834, !noundef !3
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2836
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.c, align 8, !noalias !2836
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @199)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2836
  br label %_RNvXsc_NtCsl4BgoAJVhPh_3url4hostINtB5_4HostReENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2836
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.b, align 8, !noalias !2836
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @201)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2836
  br label %_RNvXsc_NtCsl4BgoAJVhPh_3url4hostINtB5_4HostReENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2836
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.j, ptr %i.a, align 8, !noalias !2836
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @204, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @203)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2836
  br label %_RNvXsc_NtCsl4BgoAJVhPh_3url4hostINtB5_4HostReENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit

_RNvXsc_NtCsl4BgoAJVhPh_3url4hostINtB5_4HostReENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs3pBv9WGWlWf_12tracing_core6parent6ParentNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !29, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  %i.c = load i64, ptr %i.b, align 8, !range !234, !alias.scope !2837, !noalias !2840, !noundef !3
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 4), !noalias !2837
  br label %_RNvXNtCs3pBv9WGWlWf_12tracing_core6parentNtB2_6ParentNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 7), !noalias !2837
  br label %_RNvXNtCs3pBv9WGWlWf_12tracing_core6parentNtB2_6ParentNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2842
  store ptr %i.f, ptr %i.a, align 8, !noalias !2842
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2842
  br label %_RNvXNtCs3pBv9WGWlWf_12tracing_core6parentNtB2_6ParentNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

_RNvXNtCs3pBv9WGWlWf_12tracing_core6parentNtB2_6ParentNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsjNt1Wzngcv_9ty_server7logging8LogLevelNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.val = load i8, ptr %i.a, align 1, !range !884, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsjNt1Wzngcv_9ty_server7logging8LogLevelNtB6_5Debug3fmtBA_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsjNt1Wzngcv_9ty_server7logging8LogLevelNtB6_5Debug3fmtBA_.287, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs45bxiIjzMqg_5salsa9cancelled9CancelledNtB6_7Display3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtCs45bxiIjzMqg_5salsa9cancelledNtB4_9CancelledNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtCsjNt1Wzngcv_9ty_server8document16PositionEncodingNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2g_EE9call_onceBV_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef readonly captures(none) dereferenceable(1) %2) unnamed_addr #9 {
bb.a:
  %.val = load i8, ptr %1, align 1, !range !790, !noundef !3
  %.val1 = load i8, ptr %2, align 1, !range !790, !noundef !3
  %3 = zext nneg i8 %.val to i64
  %4 = zext nneg i8 %.val1 to i64
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %3, i64 %4)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_6SenderNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !234, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !3 ; 20 uses
  switch i64 %i.a, label %default.unreachable4 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.l
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 512
  %i.d = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10disconnectCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.h = atomicrmw xchg ptr %i.g, i8 1 acq_rel, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECsjNt1Wzngcv_9ty_server(ptr %.val)
  br label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 384
  %i.k = atomicrmw sub ptr %i.j, i64 1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE18disconnect_sendersCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 400
  %i.o = atomicrmw xchg ptr %i.n, i8 1 acq_rel, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 128 dereferenceable(512) %.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEECsjNt1Wzngcv_9ty_server.exit.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 264
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5WakerECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEECsjNt1Wzngcv_9ty_server.exit.i.i.i: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 264
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5WakerECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors4list7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEECsjNt1Wzngcv_9ty_server.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.k ], [ %eh.lpad-body.i.i3, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.q, %bb.h ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 512, i64 noundef 128) #35
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors4list7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEECsjNt1Wzngcv_9ty_server.exit.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 512, i64 noundef 128) #35
  br label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit

bb.l:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.w = atomicrmw sub ptr %i.v, i64 1 acq_rel, align 8
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.m, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit

bb.m:                                             ; preds = %bb.l
  %i.y = tail call noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10disconnectCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8 %.val) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.aa = atomicrmw xchg ptr %i.z, i8 1 acq_rel, align 1
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5WakerECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zero7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEECsjNt1Wzngcv_9ty_server.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5WakerECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #33
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zero7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEECsjNt1Wzngcv_9ty_server.exit.i.i.i: ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5WakerECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(48) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors4zero7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zero7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEECsjNt1Wzngcv_9ty_server.exit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %eh.lpad-body.i.i3 = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %i.ad, %bb.o ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #35
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors4zero7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zero7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEECsjNt1Wzngcv_9ty_server.exit.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #35
  br label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit

_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE7releaseNCNvXs3_NtB5_7channelINtB2r_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0ECsjNt1Wzngcv_9ty_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors4zero7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECsjNt1Wzngcv_9ty_server.exit.i, %bb.m, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors4list7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECsjNt1Wzngcv_9ty_server.exit.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_6SenderNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB15_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !234, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !3 ; 22 uses
  switch i64 %i.a, label %default.unreachable4 [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.m
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 512
  %i.d = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEE7releaseNCNvXs3_NtB5_7channelINtB2B_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0EB1z_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE10disconnectB1d_(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.h = atomicrmw xchg ptr %i.g, i8 1 acq_rel, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEE7releaseNCNvXs3_NtB5_7channelINtB2B_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0EB1z_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtBG_7flavors5array7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEEEB25_(ptr noalias noundef nonnull align 128 dereferenceable(640) %.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors5array7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEEEEB2E_.exit.i unwind label %bb.e

common.resume:                                    ; preds = %bb.s, %bb.l, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %eh.lpad-body.i.i, %bb.l ], [ %eh.lpad-body.i.i3, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 640, i64 noundef 128) #35
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtCsfCaL8mGBm0d_17crossbeam_channel7counter7CounterINtNtNtB1e_7flavors5array7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEEEEB2E_.exit.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 640, i64 noundef 128) #35
  br label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEE7releaseNCNvXs3_NtB5_7channelINtB2B_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0EB1z_.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 384
  %i.l = atomicrmw sub ptr %i.k, i64 1 acq_rel, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEE7releaseNCNvXs3_NtB5_7channelINtB2B_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0EB1z_.exit

bb.g:                                             ; preds = %bb.f
  %i.n = tail call noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE18disconnect_sendersB1d_(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 400
  %i.p = atomicrmw xchg ptr %i.o, i8 1 acq_rel, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7counterINtB3_6SenderINtNtNtB5_7flavors5array7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEE7releaseNCNvXs3_NtB5_7channelINtB2B_6SenderB1t_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop0EB1z_.exit, label %bb.h
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE18disconnect_sendersB1d_
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE18disconnect_sendersB1d_(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE10disconnectB1h_(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE10disconnectB1h_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE18disconnect_sendersB1h_(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FullNtNtNtB7_4time12chrono_crate11ChronoLocalENtNtB7_6writer13BoxMakeWriterEINtNtB9_5layer5LayerB17_E11on_new_spanCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsd_NtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filtersNtB5_11FilterState12add_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FullNtNtNtB7_4time12chrono_crate11ChronoLocalENtNtB7_6writer13BoxMakeWriterEINtNtB9_5layer5LayerB17_E8on_eventCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber17register_callsite(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa5zalsa13ZalsaDatabase6zalsasCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs7_NtCs45bxiIjzMqg_5salsa7storageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database20trigger_lru_evictionCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database15synthetic_writeCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(128), i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database20trigger_cancellationCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database18cancellation_tokenCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database21report_untracked_readCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database21ingredient_debug_nameCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database28unwind_if_revision_cancelledCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsg_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database25zalsa_register_downcaster(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsf_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtCs56aZGHL6Dc6_7ruff_db2Db8vendored(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsf_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtCs56aZGHL6Dc6_7ruff_db2Db25zalsa_register_downcaster(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsc_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsfDzkztWVnn_18ty_module_resolver2db2Db25zalsa_register_downcaster(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCs2O29vuvTAEJ_14ty_python_core2db2Db17should_check_file(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXse_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCs2O29vuvTAEJ_14ty_python_core2db2Db25zalsa_register_downcaster(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db10check_file(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db12program_file(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db26python_version_with_source(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db14rule_selection(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db13lint_registry(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db17analysis_settings(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db7verbose(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db12is_open_file(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db9dyn_clone(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsd_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCsoTR8nlGN3X_18ty_python_semantic2db2Db25zalsa_register_downcaster(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db7project(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db9dyn_clone(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsh_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtB5_2Db25zalsa_register_downcaster(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXNtCsjNt1Wzngcv_9ty_server2dbNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtB2_2Db8document(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCsjNt1Wzngcv_9ty_server2db2Db17notebook_documentBU_(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXNtCsjNt1Wzngcv_9ty_server2dbNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtB2_2Db25zalsa_register_downcaster(ptr noundef nonnull align 8) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCs4NRVxsYgnAr_4core3fmtQNtNtCscdodAO9FK5_5alloc6string6StringNtB2_5Write9write_strCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCs4NRVxsYgnAr_4core3fmtQNtNtCscdodAO9FK5_5alloc6string6StringNtB2_5Write10write_charCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(8), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCs4NRVxsYgnAr_4core3fmtQNtNtCscdodAO9FK5_5alloc6string6StringNtB2_5Write9write_fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullNtNtNtB7_4time12chrono_crate11ChronoLocalEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE20disconnect_receiversCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE20disconnect_receiversB1d_(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE20disconnect_receiversB1h_(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChanneluE10disconnectCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChanneluE10disconnectCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChanneluE20disconnect_receiversCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEENtNtB1q_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5WakerEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCsfCaL8mGBm0d_17crossbeam_channel3errINtB2_9SendErrorNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB11_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB2_21SetGlobalDefaultErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCs4NRVxsYgnAr_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryE6removeCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std7process5abort() unnamed_addr #25

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #26

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs3_NtCs2AWtUsOyxgP_3std4timeNtB5_7InstantNtNtNtCs4NRVxsYgnAr_4core3ops5arith3Sub3sub(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions5sleep(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfCaL8mGBm0d_17crossbeam_channel5utils11sleep_until(i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i32 } @_RINvNtNtCs8U8Khs6SiIu_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCs2AWtUsOyxgP_3std4time7InstantECsjNt1Wzngcv_9ty_server(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs_NtCs2AWtUsOyxgP_3std4timeNtB4_7InstantINtNtNtCs4NRVxsYgnAr_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs8U8Khs6SiIu_15crossbeam_utils6atomic11atomic_cell28atomic_compare_exchange_weakNtNtCs2AWtUsOyxgP_3std4time7InstantECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures21WorkDoneProgressBeginECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEE4lockCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsjNt1Wzngcv_9ty_server7session13request_queueNtB5_8Outgoing8register(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsjNt1Wzngcv_9ty_server7session13request_queueNtB4_8Incoming6cancel(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCshzDG46PUpLf_10lsp_server3msgNtB5_9RequestIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5WakerE4lockCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryE6retainNCNvMBG_NtBG_5Waker7unwatch0ECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtCsl4BgoAJVhPh_3url3UrlINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8TextEditEEE14insert_no_growCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE4sendCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE4sendCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE4sendCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE4sendB1d_(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE4sendB1d_(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE4sendB1d_(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE4sendB1h_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE4sendB1h_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE4sendB1h_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryE8grow_oneCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8TextEditE8grow_oneCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRL0_NtNtNtCsjNt1Wzngcv_9ty_server7session6client6ClientNtNtCshzDG46PUpLf_10lsp_server3msg8ResponseEEp6OutputuNtNtBQ_6marker4SendEL_EIBK_TRB1y_B2n_EE9call_onceB1E_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE4recvB1h_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 128, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE4recvB1h_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 128, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE4recvB1h_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs7_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6writerINtB5_5BoxedNvNtNtCs2AWtUsOyxgP_3std2io5stdio6stderrENtB5_10MakeWriter11make_writerCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs7_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6writerINtB5_5BoxedNvNtNtCs2AWtUsOyxgP_3std2io5stdio6stderrENtB5_10MakeWriter15make_writer_forCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs7_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6writerINtB5_5BoxedINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs2AWtUsOyxgP_3std2fs4FileEENtB5_10MakeWriter11make_writerCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs7_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt6writerINtB5_5BoxedINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs2AWtUsOyxgP_3std2fs4FileEENtB5_10MakeWriter15make_writer_forCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB2_8RegistryNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 8 captures(none) dereferenceable(544)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt4time12chrono_crateNtB2_11ChronoLocal3new(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB6_5LayerNtNtNtBa_8registry7sharded8RegistryE10with_timerNtNtNtB8_4time12chrono_crate11ChronoLocalECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher18set_global_default(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs3pBv9WGWlWf_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs3pBv9WGWlWf_12tracing_core4span2IdNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsjNt1Wzngcv_9ty_server8document5rangeNtB2_8LspRange11to_location(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCsjNt1Wzngcv_9ty_server8document5rangeNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtB5_10ToRangeExt12to_lsp_range(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320), i32 noundef range(i32 1, 0), i32 noundef, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12current_span(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber10clone_span(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE11create_withNCNvXs0_BR_NtBR_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_spans0_0ECsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_RNvMNtCs3pBv9WGWlWf_12tracing_core4spanNtB2_2Id8from_u64(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures32DiagnosticServerCancellationDataECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs45bxiIjzMqg_5salsa9cancelledNtB4_9CancelledNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE14if_enabled_forCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef align 8, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvMNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE16is_enabled_innerCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvYINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1C_6FormatNtB1C_4FullNtNtNtB7_4time12chrono_crate11ChronoLocalENtNtB7_6writer13BoxMakeWriterEINtNtB9_5layer5LayerB11_E17register_callsiteCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FullNtNtNtB7_4time12chrono_crate11ChronoLocalENtNtB7_6writer13BoxMakeWriterEINtNtB9_5layer5LayerB17_E7on_exitCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FullNtNtNtB7_4time12chrono_crate11ChronoLocalENtNtB7_6writer13BoxMakeWriterEINtNtB9_5layer5LayerB17_E8on_closeCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i64 noundef range(i64 1, 0), ptr noundef align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FullNtNtNtB7_4time12chrono_crate11ChronoLocalENtNtB7_6writer13BoxMakeWriterEINtNtB9_5layer5LayerB17_E8on_enterCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan15register_filter(ptr noalias noundef align 8 dereferenceable(544)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FullNtNtNtB7_4time12chrono_crate11ChronoLocalENtNtB7_6writer13BoxMakeWriterEINtNtB9_5layer5LayerB17_E9on_recordCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsX_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEENtNtBM_7default7Default7defaultCsjNt1Wzngcv_9ty_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsn_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_10SystemPathNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_E9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtCs4NRVxsYgnAr_4core6marker4SendNtNtNtB1o_5panic11unwind_safe13RefUnwindSafeNtB1m_4SyncEL_E9drop_slowCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomicbEE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCs4NRVxsYgnAr_4core4sync6atomic6AtomichEE9drop_slowCs45bxiIjzMqg_5salsa(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs2AWtUsOyxgP_3std2fs4FileE9drop_slowCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs45bxiIjzMqg_5salsa5zalsa5ZalsaE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs45bxiIjzMqg_5salsa7storage10CoordinateE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db5files10FilesInnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsfCaL8mGBm0d_17crossbeam_channel7context5InnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsjNt1Wzngcv_9ty_server6server23lazy_work_done_progress5InnerE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsjNt1Wzngcv_9ty_server7session8settings14GlobalSettingsE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsjNt1Wzngcv_9ty_server7session8settings17WorkspaceSettingsE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt4time12chrono_crate13ChronoFmtTypeE9drop_slowCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs3pBv9WGWlWf_12tracing_core5field8FieldSetNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCshFWUtO0bu8g_6camino11serde_implsNtB2_18Utf8PathBufVisitorNtNtCs6nZeqdiIoCH_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber13event_enabled(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber4exit(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber5enter(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber7enabled(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9try_close(ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtCs3pBv9WGWlWf_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryECsjNt1Wzngcv_9ty_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry11start_close(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscvBHLZPbXnS_10serde_json5value8to_valueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures19WorkDoneProgressEndECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsjNt1Wzngcv_9ty_server6server3api11diagnostics19compute_diagnostics(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsjNt1Wzngcv_9ty_server6server3api11diagnosticsNtB2_11Diagnostics9result_id(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsjNt1Wzngcv_9ty_server6server3api11diagnosticsNtB2_11Diagnostics18to_lsp_diagnostics(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noundef nonnull align 8, i32 noundef, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCsjNt1Wzngcv_9ty_server6server3api11diagnosticsNtB4_14LspDiagnostics20expect_text_document(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs2_NtCsjNt1Wzngcv_9ty_server7sessionNtB5_16DocumentSnapshot19to_notebook_or_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs1_NtNtCsjNt1Wzngcv_9ty_server8document5rangeNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8PositionNtB5_11PositionExt12to_text_size(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320), i32 noundef range(i32 1, 0), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskEUeM34gmJU_6ty_ide16goto_declaration16goto_declaration(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296), i32 noundef range(i32 1, 0), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_CskEUeM34gmJU_6ty_ideNtB5_17NavigationTargetsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures12LocationLinkEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtCsheqz6YZvxwl_8smallvec8IntoIterANtCskEUeM34gmJU_6ty_ide16NavigationTargetj1_ENCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests16goto_declarationNtB56_29GotoDeclarationRequestHandlerNtNtB5a_6traits32BackgroundDocumentRequestHandler17run_with_snapshot0EE9from_iterB5e_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8LocationEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtCsheqz6YZvxwl_8smallvec8IntoIterANtCskEUeM34gmJU_6ty_ide16NavigationTargetj1_ENCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests16goto_declarationNtB51_29GotoDeclarationRequestHandlerNtNtB55_6traits32BackgroundDocumentRequestHandler17run_with_snapshots_0EE9from_iterB59_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskEUeM34gmJU_6ty_ide19goto_implementation19goto_implementation(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296), i32 noundef range(i32 1, 0), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures12LocationLinkEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtCsheqz6YZvxwl_8smallvec8IntoIterANtCskEUeM34gmJU_6ty_ide16NavigationTargetj1_ENCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests19goto_implementationNtB56_32GotoImplementationRequestHandlerNtNtB5a_6traits32BackgroundDocumentRequestHandler17run_with_snapshot0EE9from_iterB5e_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8LocationEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtCsheqz6YZvxwl_8smallvec8IntoIterANtCskEUeM34gmJU_6ty_ide16NavigationTargetj1_ENCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests19goto_implementationNtB51_32GotoImplementationRequestHandlerNtNtB55_6traits32BackgroundDocumentRequestHandler17run_with_snapshots_0EE9from_iterB59_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskEUeM34gmJU_6ty_ide20goto_type_definition20goto_type_definition(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296), i32 noundef range(i32 1, 0), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures12LocationLinkEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtCsheqz6YZvxwl_8smallvec8IntoIterANtCskEUeM34gmJU_6ty_ide16NavigationTargetj1_ENCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests20goto_type_definitionNtB56_32GotoTypeDefinitionRequestHandlerNtNtB5a_6traits32BackgroundDocumentRequestHandler17run_with_snapshot0EE9from_iterB5e_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8LocationEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtCsheqz6YZvxwl_8smallvec8IntoIterANtCskEUeM34gmJU_6ty_ide16NavigationTargetj1_ENCNvXs_NtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests20goto_type_definitionNtB51_32GotoTypeDefinitionRequestHandlerNtNtB55_6traits32BackgroundDocumentRequestHandler17run_with_snapshots_0EE9from_iterB59_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskEUeM34gmJU_6ty_ide6rename6rename(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296), i32 noundef range(i32 1, 0), i32 noundef, i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtCsl4BgoAJVhPh_3url3UrlINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures8TextEditENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRlNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv4AddrNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv6AddrNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_recvCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_recvCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_recvCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtB9_6select12SelectHandle10unregisterCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtB9_6select12SelectHandle8is_readyCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs3_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtB9_6select12SelectHandle8is_readyCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtB9_6select12SelectHandle5watchCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtB9_6select12SelectHandle6acceptCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtB9_6select12SelectHandle7unwatchCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtB9_6select12SelectHandle8is_readyCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageENtNtB9_6select12SelectHandle8registerCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE10start_recvB1d_(ptr noundef nonnull align 128, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE10start_recvB1d_(ptr noundef nonnull align 128, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventE10start_recvB1d_(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtB9_6select12SelectHandle10unregisterB1e_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB5_8ReceiverNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtB9_6select12SelectHandle8is_readyB1f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs3_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_8ReceiverNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtB9_6select12SelectHandle8is_readyB1e_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtB9_6select12SelectHandle5watchB1e_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtB9_6select12SelectHandle6acceptB1e_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtB9_6select12SelectHandle7unwatchB1e_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtB9_6select12SelectHandle8is_readyB1e_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiverNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventENtNtB9_6select12SelectHandle8registerB1e_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChanneluE10start_recvCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChanneluE10start_recvCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 128, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChanneluE10start_recvCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiveruENtNtB9_6select12SelectHandle10unregisterCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB5_8ReceiveruENtNtB9_6select12SelectHandle8is_readyCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs3_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_8ReceiveruENtNtB9_6select12SelectHandle8is_readyCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiveruENtNtB9_6select12SelectHandle5watchCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiveruENtNtB9_6select12SelectHandle6acceptCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiveruENtNtB9_6select12SelectHandle7unwatchCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiveruENtNtB9_6select12SelectHandle8is_readyCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_8ReceiveruENtNtB9_6select12SelectHandle8registerCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtCs3pBv9WGWlWf_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECsjNt1Wzngcv_9ty_server(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdNtB6_7Display3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsjNt1Wzngcv_9ty_server6server3api5ErrorNtB6_7Display3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsa_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCs56aZGHL6Dc6_7ruff_db5panic17CapturedPanicInfoE4takeCsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #31

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #32 = { noreturn }
attributes #33 = { cold }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtNtCsjNt1Wzngcv_9ty_server7session13request_queue24RequestCancellationTokenE6insertBN_: argument 0"}
!7 = distinct !{!7, !"_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtNtCsjNt1Wzngcv_9ty_server7session13request_queue24RequestCancellationTokenE6insertBN_"}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{!10, !12, !13, !15}
!10 = distinct !{!10, !11, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server: argument 0"}
!11 = distinct !{!11, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server"}
!12 = distinct !{!12, !11, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server: argument 1"}
!13 = distinct !{!13, !14, !"_RNvXs1T_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string: argument 0"}
!14 = distinct !{!14, !"_RNvXs1T_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string"}
!15 = distinct !{!15, !16, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!16 = distinct !{!16, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsjNt1Wzngcv_9ty_server"}
!17 = !{i64 0, i64 2}
!18 = !{i64 0, i64 -9223372036854775807}
!19 = !{!10, !13, !15}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 1"}
!22 = distinct !{!22, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server"}
!23 = !{i8 -1, i8 6}
!24 = !{!25, !26, !27}
!25 = distinct !{!25, !22, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 0"}
!26 = distinct !{!26, !22, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 2"}
!27 = distinct !{!27, !22, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 3"}
!28 = !{!25, !21, !26, !27}
!29 = !{i64 8}
!30 = !{!25, !21}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!33 = distinct !{!33, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server"}
!34 = distinct !{!34, !33, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 1"}
!35 = !{!32}
!36 = !{!34}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 1"}
!39 = distinct !{!39, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server"}
!40 = !{!41, !42, !43}
!41 = distinct !{!41, !39, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 0"}
!42 = distinct !{!42, !39, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 2"}
!43 = distinct !{!43, !39, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 3"}
!44 = !{!41, !38, !42, !43}
!45 = !{!41, !38}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!48 = distinct !{!48, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server"}
!49 = distinct !{!49, !48, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 1"}
!50 = !{!47}
!51 = !{!49}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 0"}
!54 = distinct !{!54, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 1"}
!57 = !{!53, !58, !59}
!58 = distinct !{!58, !54, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 2"}
!59 = distinct !{!59, !54, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 3"}
!60 = !{!53, !56, !58, !59}
!61 = !{!53, !56}
!62 = !{!58, !59}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMs_NtNtCsjNt1Wzngcv_9ty_server7session6clientNtBL_21ClientResponseHandler11for_requestNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8requests20ConfigurationRequestNCNvMBN_NtBN_7Session53request_uninitialized_workspace_folder_configurationss1_0E0E3newBP_: argument 0"}
!65 = distinct !{!65, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMs_NtNtCsjNt1Wzngcv_9ty_server7session6clientNtBL_21ClientResponseHandler11for_requestNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8requests20ConfigurationRequestNCNvMBN_NtBN_7Session53request_uninitialized_workspace_folder_configurationss1_0E0E3newBP_"}
!66 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!67 = !{!68, !70}
!68 = distinct !{!68, !69, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!69 = distinct !{!69, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server"}
!70 = distinct !{!70, !69, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 1"}
!71 = !{!68}
!72 = !{!70}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 1"}
!75 = distinct !{!75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 0"}
!78 = distinct !{!78, !75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 2"}
!79 = distinct !{!79, !75, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 3"}
!80 = !{!77, !74, !78, !79}
!81 = !{!77, !74}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!84 = distinct !{!84, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server"}
!85 = distinct !{!85, !84, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 1"}
!86 = !{!83}
!87 = !{!85}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 1"}
!90 = distinct !{!90, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 0"}
!93 = distinct !{!93, !90, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 2"}
!94 = distinct !{!94, !90, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 3"}
!95 = !{!92, !89, !93, !94}
!96 = !{!92, !89}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!99 = distinct !{!99, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server"}
!100 = distinct !{!100, !99, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common16LspRequestMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 1"}
!101 = !{!98}
!102 = !{!100}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 1"}
!105 = distinct !{!105, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server"}
!106 = !{!107, !108, !109}
!107 = distinct !{!107, !105, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 0"}
!108 = distinct !{!108, !105, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 2"}
!109 = distinct !{!109, !105, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtNtBL_5error5ErrorE6expectCsjNt1Wzngcv_9ty_server: argument 3"}
!110 = !{!107, !104, !108, !109}
!111 = !{!107, !104}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!114 = distinct !{!114, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsjNt1Wzngcv_9ty_server"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_RNvXsG_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_12SpecToString14spec_to_string: argument 0"}
!117 = distinct !{!117, !"_RNvXsG_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_12SpecToString14spec_to_string"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RNvNtCscdodAO9FK5_5alloc3fmt6format: argument 0"}
!120 = distinct !{!120, !"_RNvNtCscdodAO9FK5_5alloc3fmt6format"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjNt1Wzngcv_9ty_server: argument 0"}
!123 = distinct !{!123, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjNt1Wzngcv_9ty_server"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCsjNt1Wzngcv_9ty_server: argument 0"}
!126 = distinct !{!126, !"_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCsjNt1Wzngcv_9ty_server"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 0"}
!129 = distinct !{!129, !"_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned"}
!130 = !{!131, !133, !128, !134, !125, !135, !122, !136, !119, !116, !113}
!131 = distinct !{!131, !132, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server: argument 0"}
!132 = distinct !{!132, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server"}
!133 = distinct !{!133, !132, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server: argument 1"}
!134 = distinct !{!134, !129, !"_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 1"}
!135 = distinct !{!135, !126, !"_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCsjNt1Wzngcv_9ty_server: argument 1"}
!136 = distinct !{!136, !123, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjNt1Wzngcv_9ty_server: argument 1"}
!137 = !{!131, !128, !125, !122, !119, !116, !113}
!138 = !{!128, !125, !122, !119, !116, !113}
!139 = !{!134, !135, !136}
!140 = !{!136}
!141 = !{!142, !144, !145, !147}
!142 = distinct !{!142, !143, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server: argument 0"}
!143 = distinct !{!143, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server"}
!144 = distinct !{!144, !143, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server: argument 1"}
!145 = distinct !{!145, !146, !"_RNvXs1T_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string: argument 0"}
!146 = distinct !{!146, !"_RNvXs1T_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string"}
!147 = distinct !{!147, !148, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!148 = distinct !{!148, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsjNt1Wzngcv_9ty_server"}
!149 = !{!142, !145, !147}
!150 = !{!151, !153, !154, !156}
!151 = distinct !{!151, !152, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server: argument 0"}
!152 = distinct !{!152, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server"}
!153 = distinct !{!153, !152, !"_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server: argument 1"}
!154 = distinct !{!154, !155, !"_RNvXs25_NtCscdodAO9FK5_5alloc6stringReNtB6_12SpecToString14spec_to_string: argument 0"}
!155 = distinct !{!155, !"_RNvXs25_NtCscdodAO9FK5_5alloc6stringReNtB6_12SpecToString14spec_to_string"}
!156 = distinct !{!156, !157, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!157 = distinct !{!157, !"_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCsjNt1Wzngcv_9ty_server"}
!158 = !{!151, !154, !156}
!159 = !{!160, !162}
!160 = distinct !{!160, !161, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!161 = distinct !{!161, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server"}
!162 = distinct !{!162, !161, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 1"}
!163 = !{!160}
!164 = !{!162}
!165 = !{i64 -2, i64 -9223372036854775805}
!166 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_RNCINvMNtNtCsjNt1Wzngcv_9ty_server7session6clientNtB5_6Client17send_notificationNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated13notifications20ProgressNotificationE0B9_: argument 0"}
!169 = distinct !{!169, !"_RNCINvMNtNtCsjNt1Wzngcv_9ty_server7session6clientNtB5_6Client17send_notificationNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated13notifications20ProgressNotificationE0B9_"}
!170 = distinct !{null}
!171 = !{!172, !174}
!172 = distinct !{!172, !173, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!173 = distinct !{!173, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server"}
!174 = distinct !{!174, !173, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 1"}
!175 = !{!172}
!176 = !{!174}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_RNCINvMNtNtCsjNt1Wzngcv_9ty_server7session6clientNtB5_6Client17send_notificationNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated13notifications23ShowMessageNotificationE0B9_: argument 0"}
!179 = distinct !{!179, !"_RNCINvMNtNtCsjNt1Wzngcv_9ty_server7session6clientNtB5_6Client17send_notificationNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated13notifications23ShowMessageNotificationE0B9_"}
!180 = distinct !{null}
!181 = !{!182, !184}
!182 = distinct !{!182, !183, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 0"}
!183 = distinct !{!183, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server"}
!184 = distinct !{!184, !183, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated6common21LspNotificationMethodNtB5_12SpecToString14spec_to_stringCsjNt1Wzngcv_9ty_server: argument 1"}
!185 = !{!182}
!186 = !{!184}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_RNCINvMNtNtCsjNt1Wzngcv_9ty_server7session6clientNtB5_6Client17send_notificationNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated13notifications30PublishDiagnosticsNotificationE0B9_: argument 0"}
!189 = distinct !{!189, !"_RNCINvMNtNtCsjNt1Wzngcv_9ty_server7session6clientNtB5_6Client17send_notificationNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated13notifications30PublishDiagnosticsNotificationE0B9_"}
end_hunk_1
