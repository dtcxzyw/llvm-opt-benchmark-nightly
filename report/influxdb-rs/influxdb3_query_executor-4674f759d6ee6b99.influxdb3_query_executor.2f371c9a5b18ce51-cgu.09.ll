Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.09?download=true
inline.NumInlined: 3950
inline.NumDeleted: 1057
begin_hunk_0_@_RNvXs_NtCs821PsJA4TYh_16cranelift_entity4iterINtB4_4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types18DefinedGlobalIndexNtBU_9ConstExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i32, ptr } @_RNvXs_NtCs821PsJA4TYh_16cranelift_entity4iterINtB4_4IterNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types11ImportIndexTNtNtCscdodAO9FK5_5alloc6string6StringNtBU_7TypeDefEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12461, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !12461, !nonnull !10, !noundef !10
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types7TypeDefEEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %0, align 8, !alias.scope !12461
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !12466, !noundef !10 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !12466
  %i.i = trunc i64 %i.g to i32
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types7TypeDefEEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types7TypeDefEEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.i, %bb.b ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1
  ret { i32, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i32, ptr } @_RNvXs_NtCs821PsJA4TYh_16cranelift_entity4iterINtB4_4IterNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types13ResourceIndexNtBU_18RuntimeImportIndexENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12467, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !12467, !nonnull !10, !noundef !10
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types18RuntimeImportIndexEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.e, ptr %0, align 8, !alias.scope !12467
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !12472, !noundef !10 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !12472
  %i.i = trunc i64 %i.g to i32
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types18RuntimeImportIndexEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types18RuntimeImportIndexEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.i, %bb.b ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1
  ret { i32, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i32, ptr } @_RNvXs_NtCs821PsJA4TYh_16cranelift_entity4iterINtB4_4IterNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types15TrampolineIndexNtNtBY_5types23ModuleInternedTypeIndexENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12473, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !12473, !nonnull !10, !noundef !10
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types23ModuleInternedTypeIndexEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.e, ptr %0, align 8, !alias.scope !12473
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !12478, !noundef !10 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !12478
  %i.i = trunc i64 %i.g to i32
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types23ModuleInternedTypeIndexEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types23ModuleInternedTypeIndexEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.i, %bb.b ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1
  ret { i32, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i32, ptr } @_RNvXs_NtCs821PsJA4TYh_16cranelift_entity4iterINtB4_4IterNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types18RuntimeImportIndexTNtBU_11ImportIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2s_6string6StringEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !12479, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !12479, !nonnull !10, !noundef !10
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types11ImportIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2I_6string6StringEEEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %0, align 8, !alias.scope !12479
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !12484, !noundef !10 ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !12484
  %i.i = trunc i64 %i.g to i32
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types11ImportIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2I_6string6StringEEEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types11ImportIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2I_6string6StringEEEENtNtNtB8_6traits8iterator8Iterator4nextCs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.i, %bb.b ], [ undef, %bb.a ]
  %i.j = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %i.k = insertvalue { i32, ptr } %i.j, ptr %.sroa.2.0, 1
  ret { i32, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs96Uix8yqi9Q_8indexmap3mapINtB4_8IndexMapINtNtCscdodAO9FK5_5alloc4sync3ArceENtCsj9JzdWj4GcM_12arrow_schema11SortOptionsENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.e
  %i.g = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCscdodAO9FK5_5alloc4sync3ArceERNtCsj9JzdWj4GcM_12arrow_schema11SortOptionsINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterB13_B1D_EECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f)
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs96Uix8yqi9Q_8indexmap3mapINtB4_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEENtNtB3c_3fmt5Debug3fmtCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.e
  %i.g = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierRNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterB13_B1Q_EECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f)
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs_NtCsaNmiEuYuYZf_9sqlparser3astNtB4_5IdentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %i.b)
  %i.j = icmp eq i32 %bcmp, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !range !10900, !noundef !10 ; 2 uses
  %.not = icmp eq i32 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !range !10900, !noundef !10 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.e ], [ false, %bb.b ], [ %i.p, %bb.f ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.l, %i.n
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.n, -1
  br label %bb.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types10TableIndexNtB20_5TableENtB4_13SpecAdvanceBy15spec_advance_byCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types10TableIndexNtBQ_5TableENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB20_3num7nonzero7NonZerojENCNvXs_NvB1S_10advance_byB3_NtB3A_13SpecAdvanceBy15spec_advance_by0INtNtB20_6option6OptionB2W_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !12485, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !12485 ; 5 uses
  %.promoted.i8 = ptrtoaddr ptr %.promoted.i to i64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.promoted18.i = load i64, ptr %i.d, align 8, !alias.scope !12494 ; 3 uses
  %i.e = mul i64 %i.c, 768614336404564651
  %i.f = mul i64 %.promoted.i8, -768614336404564651
  %i.g = add i64 %i.f, %i.e
  %i.h = lshr i64 %i.g, 4
  %i.i = add i64 %1, -1
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.j, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.l = sub i64 %i.c, %.promoted.i8
  %i.m = and i64 %i.l, 15
  %ident.check.not = icmp eq i64 %i.m, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.n = and i64 %i.k, 3                          ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 4, i64 %i.n
  %n.vec = sub nsw i64 %i.k, %i.p                 ; 3 uses
  %i.q = mul i64 %n.vec, 48
  %i.r = getelementptr i8, ptr %.promoted.i, i64 %i.q
  %i.s = sub i64 %1, %n.vec
  %i.t = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted18.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.t, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi9 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.u = add <2 x i64> %vec.phi, splat (i64 1)    ; 2 uses
  %i.v = add <2 x i64> %vec.phi9, splat (i64 1)   ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 192
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !12495

middle.block:                                     ; preds = %vector.body
  %i.x = getelementptr i8, ptr %pointer.phi, i64 192
  store ptr %i.x, ptr %0, align 8, !alias.scope !12485
  %bin.rdx = add <2 x i64> %i.v, %i.u
  %i.y = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !12498
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.promoted18.i, %vector.scevcheck ], [ %.promoted18.i, %bb.b ], [ %i.y, %middle.block ]
  %.ph12 = phi ptr [ %.promoted.i, %vector.scevcheck ], [ %.promoted.i, %bb.b ], [ %i.r, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.s, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.z = phi i64 [ %i.ad, %bb.c ], [ %.ph, %scalar.ph.preheader ]
  %i.aa = phi ptr [ %i.ac, %bb.c ], [ %.ph12, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.ae, %bb.c ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_RINvYINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types10TableIndexNtBQ_5TableENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB20_3num7nonzero7NonZerojENCNvXs_NvB1S_10advance_byB3_NtB3A_13SpecAdvanceBy15spec_advance_by0INtNtB20_6option6OptionB2W_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !alias.scope !12485
  %i.ad = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.ad, ptr %i.d, align 8, !alias.scope !12498
  %i.ae = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvYINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types10TableIndexNtBQ_5TableENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB20_3num7nonzero7NonZerojENCNvXs_NvB1S_10advance_byB3_NtB3A_13SpecAdvanceBy15spec_advance_by0INtNtB20_6option6OptionB2W_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %scalar.ph, !llvm.loop !12499

_RINvYINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types10TableIndexNtBQ_5TableENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB20_3num7nonzero7NonZerojENCNvXs_NvB1S_10advance_byB3_NtB3A_13SpecAdvanceBy15spec_advance_by0INtNtB20_6option6OptionB2W_EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c, %scalar.ph, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.sroa.01.0.i, %scalar.ph ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11MemoryIndexNtB20_6MemoryENtB4_13SpecAdvanceBy15spec_advance_byCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11MemoryIndexNtBQ_6MemoryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB22_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3C_13SpecAdvanceBy15spec_advance_by0INtNtB22_6option6OptionB2Y_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !12500, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !12500 ; 5 uses
  %.promoted.i8 = ptrtoaddr ptr %.promoted.i to i64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.promoted18.i = load i64, ptr %i.d, align 8, !alias.scope !12509 ; 3 uses
  %i.e = sub i64 %i.c, %.promoted.i8
  %i.f = lshr i64 %i.e, 5
  %i.g = add i64 %1, -1
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.g) ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.j = sub i64 %i.c, %.promoted.i8
  %i.k = and i64 %i.j, 31
  %ident.check.not = icmp eq i64 %i.k, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.l = and i64 %i.i, 3                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 4, i64 %i.l
  %n.vec = sub nsw i64 %i.i, %i.n                 ; 3 uses
  %i.o = shl i64 %n.vec, 5
  %i.p = getelementptr i8, ptr %.promoted.i, i64 %i.o
  %i.q = sub i64 %1, %n.vec
  %i.r = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted18.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.r, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi9 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.s = add <2 x i64> %vec.phi, splat (i64 1)    ; 2 uses
  %i.t = add <2 x i64> %vec.phi9, splat (i64 1)   ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 128
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !12510

middle.block:                                     ; preds = %vector.body
  %i.v = getelementptr i8, ptr %pointer.phi, i64 128
  store ptr %i.v, ptr %0, align 8, !alias.scope !12500
  %bin.rdx = add <2 x i64> %i.t, %i.s
  %i.w = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.w, ptr %i.d, align 8, !alias.scope !12511
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.promoted18.i, %vector.scevcheck ], [ %.promoted18.i, %bb.b ], [ %i.w, %middle.block ]
  %.ph12 = phi ptr [ %.promoted.i, %vector.scevcheck ], [ %.promoted.i, %bb.b ], [ %i.p, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.x = phi i64 [ %i.ab, %bb.c ], [ %.ph, %scalar.ph.preheader ]
  %i.y = phi ptr [ %i.aa, %bb.c ], [ %.ph12, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.ac, %bb.c ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.b
  br i1 %i.z, label %_RINvYINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11MemoryIndexNtBQ_6MemoryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB22_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3C_13SpecAdvanceBy15spec_advance_by0INtNtB22_6option6OptionB2Y_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !alias.scope !12500
  %i.ab = add i64 %i.x, 1                         ; 2 uses
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !12511
  %i.ac = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvYINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11MemoryIndexNtBQ_6MemoryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB22_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3C_13SpecAdvanceBy15spec_advance_by0INtNtB22_6option6OptionB2Y_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %scalar.ph, !llvm.loop !12512

_RINvYINtNtCs821PsJA4TYh_16cranelift_entity4iter4IterNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11MemoryIndexNtBQ_6MemoryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB22_3num7nonzero7NonZerojENCNvXs_NvB1U_10advance_byB3_NtB3C_13SpecAdvanceBy15spec_advance_by0INtNtB22_6option6OptionB2Y_EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c, %scalar.ph, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.sroa.01.0.i, %scalar.ph ]
  ret i64 %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsa1_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_21ConditionalStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !66, !noundef !10
  %i.b = icmp ne i64 %i.a, -1                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !66, !noundef !10
  %i.d = icmp eq i64 %i.c, -1                     ; 3 uses
  %not. = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsab_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18BeginEndStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

_RNvXsab_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18BeginEndStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.sink.split: ; preds = %bb.d, %bb.c
  %.sink7 = phi i64 [ 8, %bb.c ], [ 16, %bb.d ]   ; 2 uses
  %.val3.sink = phi i64 [ %.val3, %bb.c ], [ %i.m, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sink7
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7
  %.val = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10
  %i.h = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast9StatementINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val, ptr noundef nonnull %.val4, i64 noundef %.val3.sink)
  br label %_RNvXsab_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18BeginEndStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsab_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18BeginEndStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsab_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18BeginEndStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.sink.split, %bb.c, %bb.d, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.a ], [ %i.h, %_RNvXsab_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18BeginEndStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.sink.split ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not.)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.j, align 8, !noundef !10
  %i.k = icmp eq i64 %.val3, %.val5
  br i1 %i.k, label %_RNvXsab_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18BeginEndStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.sink.split, label %_RNvXsab_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_18BeginEndStatementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !10
end_hunk_0
