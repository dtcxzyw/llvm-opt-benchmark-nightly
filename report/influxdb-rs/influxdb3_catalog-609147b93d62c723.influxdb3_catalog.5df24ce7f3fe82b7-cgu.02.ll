Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.02?download=true
inline.NumInlined: 3723
inline.NumDeleted: 1975
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnDefinitionENvMB1p_B1n_9column_idENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptiontENCINvNvB32_6max_by4foldB3F_NvYB3F_NtNtBc_3cmp3Ord3cmpE0EB1v_:bb.a
  %.sroa.02.0.i = phi i16 [ %2, %bb.b ], [ %.sroa.0.0.i.i5.i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.05.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  %i.l = load i64, ptr %i.k, align 8, !range !40, !alias.scope !3363, !noalias !3364, !noundef !6
  %i.m = icmp sgt i64 %i.l, -1                    ; 2 uses
  %..i.i.i.i = select i1 %i.m, i64 24, i64 32
  %.2.i.i.i.i = select i1 %i.m, i64 26, i64 34
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.2.i.i.i.i
  %.sroa.0.0.i.i.i.i = load i16, ptr %i.n, align 8, !range !15, !alias.scope !3363, !noalias !3364, !noundef !6 ; 2 uses
  %.sroa.4.0.i.i.i.i = load i16, ptr %i.o, align 2, !alias.scope !3363, !noalias !3364 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3365
  store i16 %.sroa.02.0.i, ptr %i.c, align 2, !noalias !3366
  store i16 %.sroa.6.0.i, ptr %i.i, align 2, !noalias !3366
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.b, align 2, !noalias !3366
  store i16 %.sroa.4.0.i.i.i.i, ptr %i.j, align 2, !noalias !3366
  %i.p = call noundef i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYINtNtBb_6option6OptiontENtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B1M_EE9call_onceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b), !noalias !3362
  %i.q = icmp sgt i8 %i.p, 0                      ; 2 uses
  %.sroa.3.0.i.i.i.i = select i1 %i.q, i16 %.sroa.6.0.i, i16 %.sroa.4.0.i.i.i.i ; 2 uses
  %.sroa.0.0.i.i5.i.i = select i1 %i.q, i16 %.sroa.02.0.i, i16 %.sroa.0.0.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3365
  %i.r = add nuw i64 %.sroa.05.0.i, 1             ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.h
  br i1 %i.s, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptiontENCINvNtNtB2f_8adapters3map8map_foldRBQ_B2T_B2T_NvMBS_BQ_9column_idNCINvNvB29_6max_by4foldB2T_NvYB2T_NtNtBb_3cmp3Ord3cmpE0E0EBY_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptiontENCINvNtNtB2f_8adapters3map8map_foldRBQ_B2T_B2T_NvMBS_BQ_9column_idNCINvNvB29_6max_by4foldB2T_NvYB2T_NtNtBb_3cmp3Ord3cmpE0E0EBY_.exit: ; preds = %bb.c, %bb.a
  %.pn21.i = phi i16 [ %2, %bb.a ], [ %.sroa.0.0.i.i5.i.i, %bb.c ]
  %.pn19.i = phi i16 [ %3, %bb.a ], [ %.sroa.3.0.i.i.i.i, %bb.c ]
  %.pn.i = insertvalue { i16, i16 } poison, i16 %.pn21.i, 0
  %.merged.i = insertvalue { i16, i16 } %.pn.i, i16 %.pn19.i, 1
  ret { i16, i16 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnDefinitionENvYNtNtNtNtNtNtB1v_7catalog8versions2v36schema6column16ColumnDefinitionINtNtBc_7convert4FromRB1n_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callB2J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5C_3VecB2J_E14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2f_8adapters3map8map_foldRBQ_NtNtNtNtNtNtBY_7catalog8versions2v36schema6column16ColumnDefinitionuNvYB3x_INtNtBb_7convert4FromB3t_E4fromNCINvNvB29_8for_each4callB3x_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5R_3VecB3x_E14extend_trustedINtB2Z_3MapBF_B4D_EE0E0E0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.g = invoke { i64, ptr } @_RNvXs4_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5tableNtNtNtNtNtNtBb_7catalog8versions2v36schema6column16ColumnDefinitionINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_5types16ColumnDefinitionE4from(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !3376 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store i64 %i.h, ptr %i.j, align 8, !noalias !3377
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !noalias !3377
  %i.l = add i64 %.val15.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2f_8adapters3map8map_foldRBQ_NtNtNtNtNtNtBY_7catalog8versions2v36schema6column16ColumnDefinitionuNvYB3x_INtNtBb_7convert4FromB3t_E4fromNCINvNvB29_8for_each4callB3x_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5R_3VecB3x_E14extend_trustedINtB2Z_3MapBF_B4D_EE0E0E0EBY_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !3376
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2f_8adapters3map8map_foldRBQ_NtNtNtNtNtNtBY_7catalog8versions2v36schema6column16ColumnDefinitionuNvYB3x_INtNtBb_7convert4FromB3t_E4fromNCINvNvB29_8for_each4callB3x_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5R_3VecB3x_E14extend_trustedINtB2Z_3MapBF_B4D_EE0E0E0EBY_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3376
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierENvYNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierINtNtBc_7convert4FromRB1n_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callB2J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5i_3VecB2J_E14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2f_8adapters3map8map_foldRBQ_NtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifieruNvYB3x_INtNtBb_7convert4FromB3t_E4fromNCINvNvB29_8for_each4callB3x_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3x_E14extend_trustedINtB2Z_3MapBF_B4k_EE0E0E0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [6 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.g = invoke i48 @_RNvXs2_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cacheNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB7_5types16ColumnIdentifierE4from(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !3386

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [6 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  store i48 %i.g, ptr %i.h, align 2, !noalias !3387
  %i.i = add i64 %.val15.i, 1                     ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2f_8adapters3map8map_foldRBQ_NtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifieruNvYB3x_INtNtBb_7convert4FromB3t_E4fromNCINvNvB29_8for_each4callB3x_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3x_E14extend_trustedINtB2Z_3MapBF_B4k_EE0E0E0EBY_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !3386
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2f_8adapters3map8map_foldRBQ_NtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifieruNvYB3x_INtNtBb_7convert4FromB3t_E4fromNCINvNvB29_8for_each4callB3x_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3x_E14extend_trustedINtB2Z_3MapBF_B4k_EE0E0E0EBY_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3386
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v418PermissionSnapshotENvYRB1n_INtNtBc_7convert4IntoNtNtNtNtB1v_6format7records5types10PermissionE4intoENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB41_8for_each4callB3b_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5h_3VecB3b_E14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v418PermissionSnapshotENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_NtNtNtNtBY_6format7records5types10PermissionuNvYB3v_INtNtBb_7convert4IntoB3z_E4intoNCINvNvB2b_8for_each4callB3z_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5w_3VecB3z_E14extend_trustedINtB31_3MapBF_B4i_EE0E0E0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 112
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3397
  invoke void @_RNvXsf_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations2v311conversionsNtNtNtNtBd_6format7records5types10PermissionINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtNtNtBd_8snapshot8versions2v418PermissionSnapshotE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !3398

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !3399
  %i.i = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3397
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v418PermissionSnapshotENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_NtNtNtNtBY_6format7records5types10PermissionuNvYB3v_INtNtBb_7convert4IntoB3z_E4intoNCINvNvB2b_8for_each4callB3z_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5w_3VecB3z_E14extend_trustedINtB31_3MapBF_B4i_EE0E0E0EBY_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !3398
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v418PermissionSnapshotENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_NtNtNtNtBY_6format7records5types10PermissionuNvYB3v_INtNtBb_7convert4IntoB3z_E4intoNCINvNvB2b_8for_each4callB3z_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5w_3VecB3z_E14extend_trustedINtB31_3MapBF_B4i_EE0E0E0EBY_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3398
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeENvYRB1n_INtNtBc_7convert4IntoNtNtNtNtB1z_6format7records5types8NodeModeE4intoENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callB3f_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5i_3VecB3f_E14extend_trustedBN_E0E0EB1z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_NtNtNtNtB12_6format7records5types8NodeModeuNvYB3z_INtNtBb_7convert4IntoB3D_E4intoNCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3D_E14extend_trustedINtB35_3MapBF_B4k_EE0E0E0EB12_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2
  %i.f = sub i64 %i.c, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !noalias !3412
  %wide.load4 = load <16 x i8>, ptr %i.k, align 1, !noalias !3412
  %i.l = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <16 x i8> %wide.load, ptr %i.l, align 1, !noalias !3413
  store <16 x i8> %wide.load4, ptr %i.m, align 1, !noalias !3413
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !3408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_NtNtNtNtB12_6format7records5types8NodeModeuNvYB3z_INtNtBb_7convert4IntoB3D_E4intoNCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3D_E14extend_trustedINtB35_3MapBF_B4k_EE0E0E0EB12_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3414

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %i.d, -4                      ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index6
  %wide.load7 = load <4 x i8>, ptr %i.q, align 1, !noalias !3412
  %i.r = getelementptr i8, ptr %i.p, i64 %index6
  store <4 x i8> %wide.load7, ptr %i.r, align 1, !noalias !3413
  %index.next8 = add nuw i64 %index6, 4           ; 2 uses
  %i.s = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3409

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.d, %n.vec5
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_NtNtNtNtB12_6format7records5types8NodeModeuNvYB3z_INtNtBb_7convert4IntoB3D_E4intoNCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3D_E14extend_trustedINtB35_3MapBF_B4k_EE0E0E0EB12_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.t = phi i64 [ %i.w, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i8, ptr %i.u, align 1, !range !25, !noalias !3412, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.t
  store i8 %.val16.i.prol, ptr %i.v, align 1, !noalias !3413
  %i.w = add i64 %i.t, 1                          ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !3410

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.w, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.w, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %i.y = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.z = add i64 %i.y, %i.c
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_NtNtNtNtB12_6format7records5types8NodeModeuNvYB3z_INtNtBb_7convert4IntoB3D_E4intoNCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3D_E14extend_trustedINtB35_3MapBF_B4k_EE0E0E0EB12_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ab = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.ac, align 1, !range !25, !noalias !3412, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ab
  store i8 %.val16.i, ptr %i.ad, align 1, !noalias !3413
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.val16.i.1 = load i8, ptr %i.af, align 1, !range !25, !noalias !3412, !noundef !6
  %i.ag = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  store i8 %.val16.i.1, ptr %i.ah, align 1, !noalias !3413
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %.val16.i.2 = load i8, ptr %i.aj, align 1, !range !25, !noalias !3412, !noundef !6
  %i.ak = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i8 %.val16.i.2, ptr %i.al, align 1, !noalias !3413
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %.val16.i.3 = load i8, ptr %i.an, align 1, !range !25, !noalias !3412, !noundef !6
  %i.ao = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ap = getelementptr i8, ptr %i.ao, i64 3
  store i8 %.val16.i.3, ptr %i.ap, align 1, !noalias !3413
  %i.aq = add i64 %i.ab, 4                        ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.d
  br i1 %i.as, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_NtNtNtNtB12_6format7records5types8NodeModeuNvYB3z_INtNtBb_7convert4IntoB3D_E4intoNCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3D_E14extend_trustedINtB35_3MapBF_B4k_EE0E0E0EB12_.exit, label %vec.epilog.scalar.ph, !llvm.loop !3411

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema4node8NodeModeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_NtNtNtNtB12_6format7records5types8NodeModeuNvYB3z_INtNtBb_7convert4IntoB3D_E4intoNCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5y_3VecB3D_E14extend_trustedINtB35_3MapBF_B4k_EE0E0E0EB12_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.aq, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3412
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReB1o_EENCNvXs4_CsamjPIc071P4_6metricNtB1E_10AttributesINtNtBc_7convert4FromRAB1n_j1_E4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callTB1o_INtNtCscdodAO9FK5_5alloc6borrow3CoweEENCINvMsj_NtB46_3vecINtB4M_3VecB3W_E14extend_trustedBN_E0E0ECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldRBQ_TBR_INtNtCscdodAO9FK5_5alloc6borrow3CoweEEuNCNvXs4_CsamjPIc071P4_6metricNtB3b_10AttributesINtNtBb_7convert4FromRABQ_j1_E4from0NCINvNvBY_8for_each4callB2m_NCINvMsj_NtB2v_3vecINtB4Z_3VecB2m_E14extend_trustedINtB1O_3MapBF_B33_EE0E0E0ECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3427)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3428, !noalias !3429, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3428, !noalias !3429, !noundef !6 ; 2 uses
  invoke void @_RNvCsamjPIc071P4_6metric16assert_legal_key(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.d unwind label %bb.e, !noalias !3430

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3428, !noalias !3429, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !3428, !noalias !3429, !noundef !6
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 5 uses
  store ptr %i.g, ptr %i.n, align 8, !noalias !3431
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3431
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 -1, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !3431
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.k, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !3431
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.m, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !3431
  %i.o = add i64 %.val15.i, 1                     ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldRBQ_TBR_INtNtCscdodAO9FK5_5alloc6borrow3CoweEEuNCNvXs4_CsamjPIc071P4_6metricNtB3b_10AttributesINtNtBb_7convert4FromRABQ_j1_E4from0NCINvNvBY_8for_each4callB2m_NCINvMsj_NtB2v_3vecINtB4Z_3VecB2m_E14extend_trustedINtB1O_3MapBF_B33_EE0E0E0ECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !3430
  resume { ptr, i32 } %i.r

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldRBQ_TBR_INtNtCscdodAO9FK5_5alloc6borrow3CoweEEuNCNvXs4_CsamjPIc071P4_6metricNtB3b_10AttributesINtNtBb_7convert4FromRABQ_j1_E4from0NCINvNvBY_8for_each4callB2m_NCINvMsj_NtB2v_3vecINtB4Z_3VecB2m_E14extend_trustedINtB1O_3MapBF_B33_EE0E0E0ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.o, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !3430
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records11conversionsNtNtNtNtNtNtB1D_7catalog8versions2v36schema4node8NodeSpecINtNtBc_7convert4FromRNtNtB1z_5types8NodeSpecE4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4o_8for_each4callNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6b_3VecB5r_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtCsbFlE7Gjht9i_12influxdb3_id6NodeIduNCNvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records11conversionsNtNtNtNtNtNtB33_7catalog8versions2v36schema4node8NodeSpecINtNtBb_7convert4FromRNtNtB2Z_5types8NodeSpecE4from0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6o_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2P_EE0E0E0EB33_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2
  %i.h = sub i64 %i.c, %i.g
  %diff.check = icmp ugt i64 %i.h, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !noalias !3443
  %wide.load3 = load <4 x i32>, ptr %i.l, align 4, !noalias !3443
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %wide.load, ptr %i.m, align 4, !noalias !3444
  store <4 x i32> %wide.load3, ptr %i.n, align 4, !noalias !3444
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !3440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtCsbFlE7Gjht9i_12influxdb3_id6NodeIduNCNvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records11conversionsNtNtNtNtNtNtB33_7catalog8versions2v36schema4node8NodeSpecINtNtBb_7convert4FromRNtNtB2Z_5types8NodeSpecE4from0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6o_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2P_EE0E0E0EB33_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i32, ptr %i.q, align 4, !noalias !3443, !noundef !6
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.p
  store i32 %.val16.i.prol, ptr %i.r, align 4, !noalias !3444
  %i.s = add i64 %i.p, 1                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !3441

end_hunk_0
