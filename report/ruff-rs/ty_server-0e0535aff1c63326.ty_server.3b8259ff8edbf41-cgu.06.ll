Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.06?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1358
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCsjNt1Wzngcv_9ty_server:bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4556, !noundef !6 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !11, !alias.scope !4556, !noundef !6
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.i, !prof !8

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 288)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !4557, !noundef !6 ; 2 uses
  %i.k = icmp ult i64 %i.j, 32025597350190194
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 32025597350190194
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticEECsjNt1Wzngcv_9ty_server.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4557, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw [288 x i8], ptr %i.o, i64 %i.m
  %i.q = mul i64 %i.d, 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !4557
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticEECsjNt1Wzngcv_9ty_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.c, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !4557
  %i.t = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCsjNt1Wzngcv_9ty_server.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE8as_sliceCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4562, !noundef !6 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !11, !alias.scope !4562, !noundef !6
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.i, !prof !8

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 144)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !4563, !noundef !6 ; 2 uses
  %i.k = icmp ult i64 %i.j, 64051194700380388
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 64051194700380388
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportEECsjNt1Wzngcv_9ty_server.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4563, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %i.o, i64 %i.m
  %i.q = mul i64 %i.d, 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !4563
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportEECsjNt1Wzngcv_9ty_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.c, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !4563
  %i.t = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportE7reserveCsjNt1Wzngcv_9ty_server.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors33WorkspaceDocumentDiagnosticReportEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBB_6string6StringEENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtB5_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options15OverrideOptionsEENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options15OverrideOptionsENtB5_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufNtB5_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata8settings8OverrideENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtNtCs4o81Y09oZk1_10ty_project8metadata8settings8OverrideNtB5_5Debug3fmtCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEINtB5_16SpecCloneIntoVecBx_NtNtB7_5alloc6GlobalE10clone_intoCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6.i.i.i = alloca [24 x i8], align 8      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4616)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %i.f, %1                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4616, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %1 ; 2 uses
  store i64 %1, ptr %i.e, align 8, !alias.scope !4616
  %i.l = icmp eq i64 %i.f, %1
  br i1 %i.l, label %.preheader.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.h
  br i1 %i.m, label %.preheader.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i214 = phi i64 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %.sroa.0.0.i.i214
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i214, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB19_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(96) %i.n)
          to label %bb.c unwind label %bb.e, !noalias !4616

bb.d:                                             ; preds = %.lr.ph216
  %i.p = add i64 %.sroa.0.1.i.i215, 1             ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.h
  br i1 %i.q, label %common.resume, label %.lr.ph216

bb.e:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %i.o, %i.h
  br i1 %i.s, label %common.resume, label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i215 = phi i64 [ %i.p, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %.sroa.0.1.i.i215
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB19_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(96) %i.t) #30
          to label %bb.d unwind label %bb.f, !noalias !4616

common.resume:                                    ; preds = %bb.d, %bb.e, %.body.i.i.i, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.t ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.lr.ph216
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !4616
  unreachable

.preheader.i:                                     ; preds = %bb.c, %bb.b, %bb.a
  %i.v = phi i64 [ %i.f, %bb.a ], [ %1, %bb.b ], [ %1, %bb.c ] ; 3 uses
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.v ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %4 = load ptr, ptr %3, align 8, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4618)
  %.not.i1 = icmp eq i64 %i.v, 0
  br i1 %.not.i1, label %_RNvXs3_NtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsjNt1Wzngcv_9ty_server.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBF_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i
  %.sroa.0.037.i = phi i64 [ %i.cd, %_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBF_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %4, i64 %.sroa.0.037.i ; 27 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.037.i ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4620)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !4621, !noalias !4622, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store i64 %i.aa, ptr %i.ab, align 8, !alias.scope !4622, !noalias !4621
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4624)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4626
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac), !noalias !4627
  %i.ad = load i64, ptr %i.y, align 8, !range !13, !alias.scope !4628, !noalias !4629, !noundef !6 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !4628, !noalias !4629, !nonnull !6, !noundef !6 ; 2 uses
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !4627
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i
  %.sroa.7.0.i.i.i.i = phi ptr [ undef, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !range !29, !alias.scope !4628, !noalias !4629, !noundef !6 ; 3 uses
  %i.al = trunc nuw i32 %i.ak to i1               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !4628, !noalias !4629
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !alias.scope !4628, !noalias !4629
  %.sroa.6.0.i.i.i.i = select i1 %i.al, i32 %i.ap, i32 undef ; 2 uses
  %.sroa.5.0.i.i.i.i = select i1 %i.al, i32 %i.an, i32 undef ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !4630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4626
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4631)
  %i.as = load i64, ptr %i.x, align 8, !range !13, !alias.scope !4632, !noalias !4633, !noundef !6
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.j, label %.body.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4635)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !4636, !noalias !4633, !nonnull !6, !noundef !6
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !4637
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.k, label %.body.i.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %.body.i.i.i unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i.i.i: ; preds = %_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4638)
  %i.ay = load i64, ptr %i.x, align 8, !range !13, !alias.scope !4639, !noalias !4633, !noundef !6
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.l, label %_RNvYINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i.i

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4641)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !4642, !noalias !4633, !nonnull !6, !noundef !6
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !4643
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.m, label %_RNvYINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_RNvYINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.o, %bb.k, %bb.j, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.ar, %bb.k ], [ %i.ar, %bb.j ], [ %i.ar, %bb.i ]
  store i64 %i.ad, ptr %i.x, align 8, !alias.scope !4644, !noalias !4633
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.7.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !4644, !noalias !4633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !noalias !4633
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i32 %i.ak, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !4644, !noalias !4633
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i32 %.sroa.5.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !alias.scope !4644, !noalias !4633
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i32 %.sroa.6.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !alias.scope !4644, !noalias !4633
  br label %common.resume

_RNvYINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i.i: ; preds = %bb.m, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i.i.i
  store i64 %i.ad, ptr %i.x, align 8, !alias.scope !4644, !noalias !4633
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.7.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !4644, !noalias !4633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !noalias !4633
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i32 %i.ak, ptr %.sroa.7.0..sroa_idx5.i.i.i, align 8, !alias.scope !4644, !noalias !4633
  %.sroa.8.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i32 %.sroa.5.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx7.i.i.i, align 4, !alias.scope !4644, !noalias !4633
  %.sroa.9.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i32 %.sroa.6.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx9.i.i.i, align 8, !alias.scope !4644, !noalias !4633
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4647)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %.val.i.i.i.i = load i8, ptr %i.bi, align 4, !range !9, !alias.scope !4648, !noalias !4649, !noundef !6 ; 2 uses
  %i.bj = load i64, ptr %i.bh, align 8, !range !13, !alias.scope !4648, !noalias !4649, !noundef !6 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i

bb.p:                                             ; preds = %_RNvYINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !4648, !noalias !4649, !nonnull !6, !noundef !6 ; 2 uses
  %i.bn = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8, !noalias !4650
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.q, label %_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i: ; preds = %bb.p, %_RNvYINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i.i
  %.sroa.7.0.i.i1.i.i = phi ptr [ undef, %_RNvYINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i.i ], [ %i.bm, %bb.p ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.bq = load i32, ptr %i.bp, align 8, !range !29, !alias.scope !4648, !noalias !4649, !noundef !6 ; 3 uses
  %i.br = trunc nuw i32 %i.bq to i1               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !4648, !noalias !4649
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.bv = load i32, ptr %i.bu, align 8, !alias.scope !4648, !noalias !4649
  %.sroa.6.0.i.i2.i.i = select i1 %i.br, i32 %i.bv, i32 undef ; 2 uses
  %.sroa.5.0.i.i3.i.i = select i1 %i.br, i32 %i.bt, i32 undef ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4652)
  %i.bw = load i64, ptr %i.bg, align 8, !range !13, !alias.scope !4653, !noalias !4654, !noundef !6
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.r, label %_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBF_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i

bb.r:                                             ; preds = %_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4656)
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !4657, !noalias !4654, !nonnull !6, !noundef !6
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !4658
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBF_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBF_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.t, !noalias !4646

bb.t:                                             ; preds = %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bj, ptr %i.bg, align 8, !alias.scope !4659, !noalias !4654
  store ptr %.sroa.7.0.i.i1.i.i, ptr %i.by, align 8, !alias.scope !4659, !noalias !4654
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store i32 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !4659, !noalias !4654
  %.sroa.7.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 76
  store i32 %.sroa.5.0.i.i3.i.i, ptr %.sroa.7.0..sroa_idx.i5.i.i, align 4, !alias.scope !4659, !noalias !4654
  %.sroa.8.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store i32 %.sroa.6.0.i.i2.i.i, ptr %.sroa.8.0..sroa_idx.i6.i.i, align 8, !alias.scope !4659, !noalias !4654
  %.sroa.9.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  store i8 %.val.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i7.i.i, align 4, !alias.scope !4659, !noalias !4654
  br label %common.resume

_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBF_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.s, %bb.r, %_RNvXso_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB5_11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server.exit.i.i.i
  store i64 %i.bj, ptr %i.bg, align 8, !alias.scope !4659, !noalias !4654
  %.sroa.5.0..sroa_idx2.i4.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr %.sroa.7.0.i.i1.i.i, ptr %.sroa.5.0..sroa_idx2.i4.i.i, align 8, !alias.scope !4659, !noalias !4654
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store i32 %i.bq, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !alias.scope !4659, !noalias !4654
  %.sroa.7.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 76
  store i32 %.sroa.5.0.i.i3.i.i, ptr %.sroa.7.0..sroa_idx6.i.i.i, align 4, !alias.scope !4659, !noalias !4654
  %.sroa.8.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store i32 %.sroa.6.0.i.i2.i.i, ptr %.sroa.8.0..sroa_idx8.i.i.i, align 8, !alias.scope !4659, !noalias !4654
  %.sroa.9.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  store i8 %.val.i.i.i.i, ptr %.sroa.9.0..sroa_idx10.i.i.i, align 4, !alias.scope !4659, !noalias !4654
  %i.cd = add nuw nsw i64 %.sroa.0.037.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cd, %i.v
  br i1 %exitcond.not.i, label %_RNvXs3_NtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsjNt1Wzngcv_9ty_server.exit, label %.lr.ph.i

_RNvXs3_NtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsjNt1Wzngcv_9ty_server.exit: ; preds = %_RNvXs_Cs5e9M2GLoJMY_8indexmapINtB4_6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBF_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromCsjNt1Wzngcv_9ty_server.exit.i, %.preheader.i
  %i.ce = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4663
  store ptr %i.w, ptr %i.c, align 8, !noalias !4664
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !noalias !4664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4664
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1Z_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !4664
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !17, !noalias !4664, !noundef !6
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !4664 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4664
  %i.ck = trunc nuw i64 %i.ch to i1
  br i1 %i.ck, label %bb.u, label %bb.w, !prof !28

bb.u:                                             ; preds = %_RNvXs3_NtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsjNt1Wzngcv_9ty_server.exit
  %i.cl = load i64, ptr %i.e, align 8, !alias.scope !4665, !noundef !6 ; 3 uses
  %i.cm = load i64, ptr %2, align 8, !range !11, !alias.scope !4665, !noundef !6
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = icmp ugt i64 %i.cj, %i.cn
  br i1 %i.co, label %bb.v, label %_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB9_6string6StringEIB1r_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCsjNt1Wzngcv_9ty_server.exit, !prof !8

bb.v:                                             ; preds = %bb.u
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cl, i64 noundef %i.cj, i64 noundef 8, i64 noundef 96)
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !4664
  br label %_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB9_6string6StringEIB1r_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCsjNt1Wzngcv_9ty_server.exit

bb.w:                                             ; preds = %_RNvXs3_NtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsjNt1Wzngcv_9ty_server.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28, !noalias !4664
  unreachable

_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB9_6string6StringEIB1r_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.u, %bb.v
  %i.cp = phi i64 [ %i.cl, %bb.u ], [ %.pre.i.i.i, %bb.v ]
  %i.cq = load ptr, ptr %3, align 8, !alias.scope !4664, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4666
  store ptr %i.e, ptr %i.a, align 8, !noalias !4664
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.cp, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4664
  %.sroa.5.0..sroa_idx.i.i.i2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cq, ptr %.sroa.5.0..sroa_idx.i.i.i2, align 8, !noalias !4664
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB20_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB4j_8for_each4callB1s_NCINvMsj_NtB2Q_3vecINtB5z_3VecB1s_E14extend_trustedBP_E0E0ECsjNt1Wzngcv_9ty_server(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ce, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4663
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsjNt1Wzngcv_9ty_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsjNt1Wzngcv_9ty_server.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit8.i, %bb.h
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsjNt1Wzngcv_9ty_server(ptr nonnull %0) #30
  resume { ptr, i32 } %i.ai

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit.i
  %.sroa.0.09.i = phi i64 [ %i.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.09.i ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.0.09.i, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4689)
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !4690, !nonnull !6, !noundef !6
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !4691
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsfCaL8mGBm0d_17crossbeam_channel7context5InnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.g, %.lr.ph.i
  %i.ah = icmp eq i64 %i.ad, %i.g
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = icmp eq i64 %i.ad, %i.g
  br i1 %i.aj, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit8.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.110.i ; 2 uses
  %i.al = add i64 %.sroa.0.110.i, 1               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4695)
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !4696, !nonnull !6, !noundef !6
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !4697
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit8.i

bb.i:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsfCaL8mGBm0d_17crossbeam_channel7context5InnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit8.i unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit8.i: ; preds = %bb.i, %.lr.ph12.i
  %i.ap = icmp eq i64 %i.al, %i.g
  br i1 %i.ap, label %.body, label %.lr.ph12.i

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !noundef !6 ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsjNt1Wzngcv_9ty_server.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !6 ; 4 uses
  %i.av = icmp ult i64 %i.au, 384307168202282326
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !6 ; 2 uses
  %.not3.i.i6 = icmp eq i64 %i.ax, %i.au
  br i1 %.not3.i.i6, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ay = add i64 %i.au, %i.as
  store i64 %i.ay, ptr %i.at, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryNtNtBO_5alloc6GlobalEECsjNt1Wzngcv_9ty_server.exit

bb.m:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.au
  %i.bc = mul i64 %i.as, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.ba, i64 %i.bc, i1 false)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCsjNt1Wzngcv_9ty_server8document8notebook12NotebookCellENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsjNt1Wzngcv_9ty_server8document8notebook12NotebookCellNtNtBO_5alloc6GlobalEEB2e_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 4 uses
  %i.o = icmp ult i64 %i.n, 88686269585142076
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsjNt1Wzngcv_9ty_server8document8notebook12NotebookCellNtNtBO_5alloc6GlobalEEB2e_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
end_hunk_0
