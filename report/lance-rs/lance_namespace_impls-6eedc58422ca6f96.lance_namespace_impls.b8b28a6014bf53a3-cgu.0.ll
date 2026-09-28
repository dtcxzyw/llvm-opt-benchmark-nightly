Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.a, ptr %i.ah, align 8, !noalias !243161
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @217, ptr %i.ai, align 8, !noalias !243161
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7484, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @7483, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !243161
  ret i1 %i.aj
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXsf_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB5_13ScanSchedulerNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXsJ_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs9KQ7US1M400_11lance_table12system_index10frag_reuse21FragReuseIndexDetailsENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243165
  store ptr %i.c, ptr %i.a, align 8, !noalias !243165
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8848, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @936, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8847)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243165
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243169
  store ptr %i.c, ptr %i.a, align 8, !noalias !243169
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7039, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1745, i64 noundef 4, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3973, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7040, i64 noundef 2, ptr noundef nonnull readonly %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7038, ptr noalias noundef nonnull readonly captures(address, read_provenance) @816, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6975)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243169
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert9PatchSinkENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243172
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.a, align 8, !noalias !243172
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5856, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @954, i64 noundef 9, ptr noundef nonnull align 8 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5854, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1033, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5855)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243172
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSlENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !416 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !243178
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !243179
  %.idx.i = shl nuw nsw i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSlNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243180
  store ptr %.sroa.0.07.i.i, ptr %i.a, align 8, !noalias !243180
  %i.j = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243180
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSlNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph.i.i

_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSlNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !243178
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !416
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_5Debug3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !416 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !416 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsw_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_CsfnXyRYRFu3h_8smallvecNtB5_18CollectionAllocErrNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !540, !noundef !416
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5847, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5848, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5846)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5845, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvXsX_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexINtNtNtNtBP_11collections4hash3map7HashMapmIBx_INtNtNtCseXbohGRa9jr_5tokio4sync9once_cell8OnceCellIBx_NtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEEEEENtNtCscI6d9CVNmLh_4core7default7Default7defaultCsfR8GmIBoxTX_21lance_namespace_impls() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.516 = alloca [35 x i8], align 1          ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #72
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !428, !noalias !243195, !noundef !416
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  %.pre.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !243196
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !243196
  br label %bb.c

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  %i.g = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !243197
  store i8 1, ptr %i.d, align 8, !noalias !243197
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ], [ %i.i, %.noexc ]
  %i.k = phi i64 [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ], [ %i.h, %.noexc ] ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.c, align 8, !noalias !243196
  %.sroa.516.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.516, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.516.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, align 4
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.516, i64 35, i1 false)
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.k, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.pre-phi2.i.i, ptr %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  ret ptr %i.a

bb.d:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #68
  resume { ptr, i32 } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !416 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsY_NtCs8d5NHFTTVL0_4uuid3fmtNtB5_6SimpleNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsZ_NtCs8d5NHFTTVL0_4uuid3fmtNtB5_6SimpleNtNtCscI6d9CVNmLh_4core3fmt8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB5_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !range !421, !noundef !416
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidE6map_orjNCNvXsY_BL_NtBL_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !243214, !noundef !416 ; 4 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %_RNCNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = or i64 %.val.i, 1
  %i.f = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw i64 %.val.i, 1
  %i.m = add nuw i64 %i.l, %i.j
  br label %_RNCNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNCNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.n = or i64 %.sroa.0.0.i.i.i.i, 1
  %i.o = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = xor i64 %i.o, 63
  %i.q = mul nuw nsw i64 %i.p, 9
  %i.r = add nuw nsw i64 %i.q, 73
  %i.s = lshr i64 %i.r, 6
  %i.t = add nuw i64 %.sroa.0.0.i.i.i.i, 1
  %i.u = add nuw i64 %i.t, %i.s
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidE6map_orjNCNvXsY_BL_NtBL_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidE6map_orjNCNvXsY_BL_NtBL_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %_RNCNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sroa.02.0.i = phi i64 [ %i.u, %_RNCNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !416, !noundef !416 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !noundef !416 ; 5 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidE6map_orjNCNvXsY_BL_NtBL_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %xtraiter = and i64 %i.y, 1
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.au, %.preheader.i ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.at, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.ab, align 4, !alias.scope !243215, !noundef !416
  %i.ac = or i32 %.val.i.i, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = xor i64 %i.ae, 63
  %i.ag = mul nuw nsw i64 %i.af, 9
  %i.ah = add nuw nsw i64 %i.ag, 73
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = add i64 %i.ai, %.sroa.02.0.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.04.0.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.val.i.i.1 = load i32, ptr %i.al, align 4, !alias.scope !243215, !noundef !416
  %i.am = or i32 %.val.i.i.1, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.ap = xor i64 %i.ao, 63
  %i.aq = mul nuw nsw i64 %i.ap, 9
  %i.ar = add nuw nsw i64 %i.aq, 73
  %i.as = lshr i64 %i.ar, 6
  %i.at = add i64 %i.as, %i.aj                    ; 3 uses
  %i.au = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.unr-lcssa, label %.preheader.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.au, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.at, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.04.0.i.i.epil.init
end_hunk_0
begin_hunk_1_@_RNvXsdJ_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_8LockTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsdP_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_15CreateExtensionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [48 x i8], align 8            ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.720.sroa.4 = alloca [32 x i8], align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 8, !range !705, !noundef !416
  %.sroa.0.0.copyload11 = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload14 = load ptr, ptr %.sroa.5.0..sroa_idx13, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %.sroa.6.0..sroa_idx15, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.h = load i8, ptr %i.g, align 8, !range !428, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.j = load i8, ptr %i.i, align 1, !range !428, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.720.sroa.4)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !421, !noundef !416
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.f
  %.sroa.720.sroa.0.0 = phi i64 [ undef, %bb.a ], [ %i.t, %bb.f ]
  %.sroa.721.0 = phi i32 [ undef, %bb.a ], [ %i.r, %bb.f ]
  %.sroa.618.0 = phi ptr [ undef, %bb.a ], [ %.sroa.03.sroa.4.0.copyload, %bb.f ] ; 3 uses
  %.sroa.016.0 = phi i64 [ -1, %bb.a ], [ %.sroa.03.sroa.0.0.copyload, %bb.f ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !421, !noundef !416
  %.not9 = icmp eq i64 %i.n, -1
  br i1 %.not9, label %bb.h, label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.i, %bb.j, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.z, %bb.j ], [ %i.z, %bb.i ]
  %i.o = icmp eq i64 %.sroa.0.0.copyload11, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload14) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload14, i64 noundef %.sroa.0.0.copyload11, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !246692
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i32, ptr %i.q, align 8, !range !705, !noundef !416
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %.sroa.03.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.03.sroa.4.0.copyload = load ptr, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.k
  %.sroa.5.sroa.4.0 = phi i32 [ %i.ab, %bb.k ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i64 [ %.sroa.05.0.copyload, %bb.k ], [ -1, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.0.copyload11, ptr %0, align 8
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload14, ptr %.sroa.5.0..sroa_idx12, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 %i.h, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 %i.j, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.016.0, ptr %i.x, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.618.0, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.720.sroa.0.0, ptr %.sroa.720.0..sroa_idx, align 8
  %.sroa.720.sroa.4.0..sroa.720.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.sroa.4.0..sroa.720.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.sroa.4, i64 32, i1 false)
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %.sroa.721.0, ptr %.sroa.721.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.0.0, ptr %i.y, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, i64 48, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.720.sroa.4)
  ret void

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.016.0.off = add i64 %.sroa.016.0, -1
  %switch = icmp ult i64 %.sroa.016.0.off, -2
  br i1 %switch, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.618.0) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.618.0, i64 noundef %.sroa.016.0, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !246693
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.k:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ab = load i32, ptr %i.aa, align 8, !range !705, !noundef !416
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  %.sroa.05.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast5IdentEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !483, !noundef !416
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3589, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2792, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3588)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4815, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @806, i64 noundef 6, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3590, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2792, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3588)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.a, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3591, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3592, i64 noundef 7, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3590, ptr noalias noundef nonnull readonly captures(address, read_provenance) @806, i64 noundef 6, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3590, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2792, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3588)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.m, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCs2bHstFFhpHt_17datafusion_common23functional_dependenciesNtB5_11ConstraintsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7418, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5109, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7417)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.b = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #68 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246697
  invoke fastcc void @_RNvXs12_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !246696

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !246697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246697
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 16) #68
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.b = tail call noalias noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #68 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246701
  invoke fastcc void @_RNvXso_NtCs2bHstFFhpHt_17datafusion_common6scalarNtB5_11ScalarValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !246700

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !246701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246701
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #68
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246705
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !246704

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !246705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246705
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 328, i64 noundef 8) #68
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3400 x i8], align 8              ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(3400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3400, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3400) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246709
  invoke fastcc void @_RNvXsdw_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9StatementNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3400) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !246708

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3400) %i.b, ptr noundef nonnull align 8 dereferenceable(3400) %i.a, i64 3400, i1 false), !noalias !246709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246709
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 3400, i64 noundef 8) #68
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246713
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.0.val)
          to label %bb.c unwind label %bb.d, !inline_history !246712

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !246713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246713
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 24, i64 noundef 8) #68
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.c = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246725)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246726)
  %i.e = load i64, ptr %.0.val, align 8, !range !421, !alias.scope !246727, !noalias !246728, !noundef !416
  %.not.i.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !246729
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.0.val)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !246729
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !246729
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !246729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246729
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %.noexc ], [ undef, %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.0.copyload.i.i, %.noexc ], [ undef, %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 3 uses
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %.noexc ], [ -1, %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models8identity8IdentityE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !421, !alias.scope !246727, !noalias !246728, !noundef !416
  %.not4.i.i = icmp eq i64 %i.g, -1
  br i1 %.not4.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246729
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.h unwind label %bb.f, !noalias !246728

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.0.010.off.i.i = add i64 %.sroa.0.010.i.i, -1
  %switch.i.i = icmp ult i64 %.sroa.0.010.off.i.i, -2
  br i1 %switch.i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i, i64 noundef %.sroa.0.010.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !246730
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !246729
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !246725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246729
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.h ], [ -1, %bb.d ]
  store i64 %.sroa.0.010.i.i, ptr %i.c, align 8, !noalias !246725
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !246725
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.7.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !246725
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !246725
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !246725
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  ret ptr %i.c

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.i ], [ %i.h, %bb.g ], [ %i.h, %bb.f ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 48, i64 noundef 8) #68
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i.i = alloca [320 x i8], align 8       ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [328 x i8], align 8               ; 4 uses
  %i.f = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 2 uses
  %i.g = alloca [488 x i8], align 8               ; 9 uses
  %i.h = alloca [88 x i8], align 8                ; 8 uses
  %i.i = alloca [336 x i8], align 8               ; 9 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.j = tail call noalias noundef align 8 dereferenceable_or_null(1248) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1248, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1248) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246758)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1240
  %.val.i = load i8, ptr %i.m, align 1, !range !428, !alias.scope !246758, !noalias !246759, !noundef !416
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1241
  %i.o = load i8, ptr %i.n, align 1, !range !480, !alias.scope !246758, !noalias !246759, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !246760
  %i.p = load i64, ptr %i.l, align 8, !range !487, !alias.scope !246758, !noalias !246759, !noundef !416
  %.not5.i = icmp eq i64 %i.p, -4
  br i1 %.not5.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246761)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  %i.r = load i8, ptr %i.q, align 8, !range !428, !alias.scope !246762, !noalias !246763, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !246764
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1248) %i.l)
          to label %.noexc unwind label %bb.z, !inline_history !246737

.noexc:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 329
  %i.t = load i8, ptr %i.s, align 1, !range !429, !alias.scope !246762, !noalias !246763, !noundef !416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.i, ptr noundef nonnull align 8 dereferenceable(328) %i.e, i64 328, i1 false), !noalias !246760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !246764
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  store i8 %i.r, ptr %.sroa.46.0..sroa_idx, align 8, !noalias !246760
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 329
  store i8 %i.t, ptr %.sroa.57.0..sroa_idx, align 1, !noalias !246760
  br label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  store i64 -4, ptr %i.i, align 8, !noalias !246760
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !246760
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 1152 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !512, !alias.scope !246758, !noalias !246759, !noundef !416
  %.not6.i = icmp eq i64 %i.v, -1
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246765)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 1232
  %i.x = load i8, ptr %i.w, align 8, !range !428, !alias.scope !246766, !noalias !246767, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !246768
  invoke fastcc void @_RNvXso_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.u)
          to label %_RNvXs8r_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i unwind label %bb.j, !noalias !246759, !inline_history !246737

_RNvXs8r_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 1200
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !246767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !246760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !246768
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 %i.x, ptr %.sroa.410.0..sroa_idx, align 8, !noalias !246760
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 -1, ptr %i.h, align 8, !noalias !246760
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs8r_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !246760
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 664 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !485, !alias.scope !246758, !noalias !246759, !noundef !416
  %.not7.i = icmp eq i64 %i.ab, -5
  br i1 %.not7.i, label %bb.r, label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.body.i, %bb.t, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body.i ] ; 2 uses
  %i.ac = load i64, ptr %i.i, align 8, !range !487, !alias.scope !246769, !noalias !246760, !noundef !416
  %i.ad = icmp eq i64 %i.ac, -4
  br i1 %i.ad, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.i)
          to label %bb.ab unwind label %bb.y, !noalias !246759, !inline_history !246743

bb.j:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !246771
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 992
  invoke fastcc void @_RNvXso_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.af)
          to label %.noexc14.i unwind label %bb.u

.noexc14.i:                                       ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1040
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !alias.scope !246772, !noalias !246759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !246771
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1072
  invoke fastcc void @_RNvXso_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ai)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc14.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %.noexc14.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 1120
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !alias.scope !246773, !noalias !246774
  %i.am = load i64, ptr %i.aa, align 8, !range !487, !alias.scope !246775, !noalias !246774, !noundef !416
  %.not.i12.i = icmp eq i64 %i.am, -4
  br i1 %.not.i12.i, label %_RNvXs8Z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246771
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.aa)
          to label %bb.p unwind label %bb.o, !noalias !246774, !inline_history !246753

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.b), !noalias !246774
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !246771
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246771
  br label %_RNvXs8Z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.l, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.aj, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.c), !noalias !246774
  br label %.body.i

_RNvXs8Z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.p, %bb.m
  %.sroa.0.0.i13.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.p ], [ -4, %bb.m ]
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !246760
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !246760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !246771
  store i64 %.sroa.0.0.i13.i, ptr %i.g, align 8, !noalias !246760
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i.i, i64 320, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.h
  store i64 -5, ptr %i.g, align 8, !noalias !246760
  br label %bb.s

bb.s:                                             ; preds = %_RNvXs8Z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 336 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !487, !alias.scope !246758, !noalias !246759, !noundef !416
  %.not8.i = icmp eq i64 %i.ap, -4
  br i1 %.not8.i, label %bb.aa, label %bb.v

.body.i:                                          ; preds = %bb.q, %bb.u, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.at, %bb.w ], [ %i.as, %bb.u ], [ %.pn.i.i, %bb.q ] ; 2 uses
  %i.aq = load i64, ptr %i.h, align 8, !range !512, !alias.scope !246776, !noalias !246760, !noundef !416
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.t

bb.t:                                             ; preds = %.body.i
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.h), !noalias !246759, !inline_history !246737
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.u:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !246760
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ao)
          to label %bb.x unwind label %bb.w, !noalias !246759, !inline_history !246737

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17TableSampleBucketEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(488) %i.g) #73
          to label %.body.i unwind label %bb.y, !noalias !246759, !inline_history !246737

bb.x:                                             ; preds = %bb.v
  %.sroa.01.0.copyload2.i = load i64, ptr %i.f, align 8, !noalias !246760
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx3.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !246760
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !246759, !inline_history !246737
  unreachable

bb.z:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.s, %bb.x
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.x ], [ -4, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.j, ptr noundef nonnull align 8 dereferenceable(336) %i.i, i64 336, i1 false), !noalias !416
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false), !noalias !416
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(488) %i.g, i64 488, i1 false), !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !246760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !246760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !246760
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  store i64 %.sroa.01.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !246777
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1240
  store i8 %.val.i, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !246777
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1241
  store i8 %i.o, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !246777
  ret ptr %i.j

bb.ab:                                            ; preds = %bb.z, %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.z ], [ %.pn.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %.pn.pn.i, %bb.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 1248, i64 noundef 8) #68
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246781
  invoke fastcc void @_RNvXs1w_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_5QueryNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !246780

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.b, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false), !noalias !246781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246781
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 1400, i64 noundef 8) #68
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3408 x i8], align 8              ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(3408) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3408, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3408) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246785
  invoke fastcc void @_RNvXs1Q_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_7SetExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3408) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3408) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !246784

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3408) %i.b, ptr noundef nonnull align 8 dereferenceable(3408) %i.a, i64 3408, i1 false), !noalias !246785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246785
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 3408, i64 noundef 8) #68
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !416, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246789
  invoke fastcc void @_RNvXsh_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !246788

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !246789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246789
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 56, i64 noundef 8) #68
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !429, !noundef !416 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsd_NtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsd_NtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.10045, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCsaSXGKSfiU2E_10lance_file7versionNtB5_19ConcreteFileVersionNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !415, !noundef !416 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsd_NtCsaSXGKSfiU2E_10lance_file7versionNtB5_19ConcreteFileVersionNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsd_NtCsaSXGKSfiU2E_10lance_file7versionNtB5_19ConcreteFileVersionNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.10046, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace10drop_table(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3856 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %i.b, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 0, ptr %i.c, align 16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !246792
  %i.d = tail call noundef align 16 dereferenceable_or_null(3856) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3856, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !246792 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBM_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace10drop_table0E3newBO_.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3856) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace10drop_table0EBL_(ptr noundef nonnull align 16 dereferenceable(3856) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBM_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace10drop_table0E3newBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3856) %i.d, ptr noundef nonnull align 16 dereferenceable(3856) %i.a, i64 3856, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @7427, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11list_tables(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3856 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store i8 0, ptr %i.c, align 16
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !246795
  %i.d = tail call noundef align 16 dereferenceable_or_null(3856) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3856, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !246795 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBM_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11list_tables0E3newBO_.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3856) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11list_tables0EBL_(ptr noundef nonnull align 16 dereferenceable(3856) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBM_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11list_tables0E3newBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3856) %i.d, ptr noundef nonnull align 16 dereferenceable(3856) %i.a, i64 3856, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @7428, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(272) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4912 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %0, ptr %i.b, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !246798
  %i.d = tail call noundef align 16 dereferenceable_or_null(4912) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4912, i64 noundef range(i64 1, -9223372036854775807) 16) #68, !noalias !246798 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBM_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0E3newBO_.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 4912) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0EBL_(ptr noundef nonnull align 16 dereferenceable(4912) %i.a) #73
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBM_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0E3newBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4912) %i.d, ptr noundef nonnull align 16 dereferenceable(4912) %i.a, i64 4912, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @7429, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace12create_table(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(200) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4560 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
end_hunk_1
