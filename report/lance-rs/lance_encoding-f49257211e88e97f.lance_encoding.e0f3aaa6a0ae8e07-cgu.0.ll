Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvXs5_NtNtCs40k4W9msRzi_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical6struct33StructuralSchedulingJobWithStatusENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1j_:bb.a
; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3591, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3591, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3591, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types8Int8TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3591, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3591, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3591, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3591, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9UInt8TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9UInt8TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3591, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs5_NtNtCs63DIHKhvmTb_10lance_core5utils7futuresINtB5_12OnDropStreamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream5chain5ChainINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB2d_6marker4SendEL_EEINtNtB1e_6unfold6UnfolduNCNvB46_23check_scheduler_on_drop0NCNCB5O_00EENCB5O_s_0EB3e_9poll_nextB48_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.3.i.i.i = alloca [16 x i8], align 8      ; 6 uses
  %.sroa.7.sroa.6.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76525)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !76526, !noundef !75 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %.val11.i = load ptr, ptr %i.g, align 8, !noalias !76526, !nonnull !75, !align !95, !noundef !75
  %i.h = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !75, !noalias !76527, !nonnull !75
  tail call void %i.i(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !inline_history !76500
  %i.j = load i64, ptr %0, align 8, !range !82, !alias.scope !76524, !noundef !75
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.sink.split.i, label %bb.ai

bb.c:                                             ; preds = %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB7_6marker4SendEL_EEEE3setB2z_.exit.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76529)
  %i.l = load i64, ptr %1, align 8, !range !134, !noalias !76530, !noundef !75
  switch i64 %i.l, label %bb.d [
    i64 0, label %.thread.i
    i64 1, label %bb.e
  ], !prof !76531

common.resume.i:                                  ; preds = %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtCscI6d9CVNmLh_4core6marker4SendEL_ENtNtNtB2x_3ops4drop4Drop4dropB1C_.exit5.i.i.i.i, %common.resume.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i20.i.i, %common.resume.i.i ], [ %i.be, %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtCscI6d9CVNmLh_4core6marker4SendEL_ENtNtNtB2x_3ops4drop4Drop4dropB1C_.exit5.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

common.resume.i.i:                                ; preds = %bb.ad, %bb.l, %.noexc.i.i.i, %bb.g
  %.pn.i20.i.i = phi { ptr, i32 } [ %eh.lpad-body8.i.i.i, %.noexc.i.i.i ], [ %i.q, %bb.g ], [ %eh.lpad-body8.i.i.i, %bb.l ], [ %i.as, %bb.ad ]
  store i8 2, ptr %i.u, align 8, !noalias !76532
  br label %common.resume.i

.thread.i:                                        ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !76533, !noalias !76530, !noundef !75 ; 2 uses
  store ptr null, ptr %i.m, align 8, !alias.scope !76533, !noalias !76530
  store i64 1, ptr %1, align 8, !noalias !76534
  %.sroa.577.0..sroa_idx78.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.n, ptr %.sroa.577.0..sroa_idx78.i.i, align 8, !noalias !76534
  %.sroa.682.0..sroa_idx83.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i8 0, ptr %.sroa.682.0..sroa_idx83.i.i, align 8, !noalias !76534
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i)
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2743, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2745) #66, !noalias !76535
  unreachable

bb.e:                                             ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !131, !noalias !76532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76536)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i)
  switch i8 %.pre.i, label %default.unreachable [
    i8 0, label %._crit_edge
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %._crit_edge.i.i.i
  ]

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !76532
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !76532
  br label %bb.m

default.unreachable:                              ; preds = %bb.m, %bb.e
  unreachable

bb.f:                                             ; preds = %._crit_edge, %.thread.i
  %i.o = phi ptr [ %i.n, %.thread.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.p = phi ptr [ %.sroa.682.0..sroa_idx83.i.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtCs9p5Dg9WVwvP_12futures_util12unfold_state11UnfoldStateuNCNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder23check_scheduler_on_drop00EE3setB1M_.exit.i.i, label %bb.h

bb.g:                                             ; preds = %bb.ab, %bb.aa
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.o, ptr %i.r, align 8, !noalias !76532
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592) #66, !noalias !76537
  unreachable

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592) #66, !noalias !76537
  unreachable

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjjpCCFGI3ul_14lance_encoding.exit20.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i.i.i

.body7.i.i.i:                                     ; preds = %.thread.i.i.i.i, %bb.k
  %eh.lpad-body8.i.i.i = phi { ptr, i32 } [ %i.s, %bb.k ], [ %.pn4.i.i.i.i, %.thread.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i)
  %.val4.i.i.i = load ptr, ptr %i.v, align 8, !noalias !76532, !nonnull !75, !noundef !75 ; 2 uses
  %i.t = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val4.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.ag, !noalias !76538

.noexc.i.i.i:                                     ; preds = %.body7.i.i.i
  br i1 %i.t, label %bb.l, label %common.resume.i.i

bb.l:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val4.i.i.i)
          to label %common.resume.i.i unwind label %bb.ag, !noalias !76538

bb.m:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %i.u = phi ptr [ %.phi.trans.insert.i, %._crit_edge.i.i.i ], [ %i.p, %bb.h ] ; 3 uses
  %.val5.i.i.i = phi ptr [ %.val5.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.o, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76540
  store i64 1, ptr %i.c, align 8, !noalias !76540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76540
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !91, !noalias !76541, !noundef !75
  switch i8 %i.y, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %.thread8.i.i.i.i
  ], !prof !92

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.w, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsjjpCCFGI3ul_14lance_encoding)
          to label %.noexc.i.i.i.i unwind label %.thread5.i.i.i.i, !noalias !76542

.noexc.i.i.i.i:                                   ; preds = %bb.n
  store i8 1, ptr %i.x, align 8, !noalias !76541
  br label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %i.aa = load i8, ptr %i.z, align 4, !range !89, !noalias !76543, !noundef !75 ; 2 uses
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 69 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !76543 ; 4 uses
  br i1 %i.ab, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.t unwind label %.thread5.i.i.i.i, !noalias !76544

bb.r:                                             ; preds = %bb.p
  %i.ae = add i8 %i.ad, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.sroa.33.0.i.i.i.i.i.i.i = phi i8 [ %i.ae, %bb.r ], [ %i.ad, %bb.o ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i, ptr %i.ac, align 1, !noalias !76543
  br label %bb.t

.thread5.i.i.i.i:                                 ; preds = %bb.t, %bb.q, %bb.n
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.4.0.i.i.i.i.i.i.i = phi i8 [ %i.ad, %bb.s ], [ 0, %bb.q ]
  %.sroa.0.0.i.i9.i.i.i.i.i = phi i1 [ false, %bb.s ], [ true, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76540
  store i24 0, ptr %i.a, align 4, !noalias !76540
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.af)
          to label %bb.u unwind label %.thread5.i.i.i.i, !noalias !76544

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76540
  br i1 %.sroa.0.0.i.i9.i.i.i.i.i, label %.thread.i.i.i, label %.thread8.i.i.i.i

.thread.i.i.i:                                    ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !76540
  br label %bb.ah

.thread8.i.i.i.i:                                 ; preds = %bb.u, %bb.m
  %.sroa.03.011.i10.off8.i.i.i.i = phi i8 [ %i.aa, %bb.u ], [ 0, %bb.m ]
  %.sroa.03.011.i10.off16.i.i.i.i = phi i8 [ %.sroa.4.0.i.i.i.i.i.i.i, %bb.u ], [ 0, %bb.m ]
  store i8 %.sroa.03.011.i10.off8.i.i.i.i, ptr %i.b, align 1, !noalias !76540
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i10.off16.i.i.i.i, ptr %i.ag, align 1, !noalias !76540
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i) ]
  %i.ah = load ptr, ptr %2, align 8, !alias.scope !76545, !nonnull !75, !align !95, !noundef !75
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !76546, !nonnull !75, !align !95, !noundef !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !76544, !nonnull !75, !noundef !75
  invoke void %i.al(ptr noundef nonnull %.val5.i.i.i, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.w unwind label %bb.v, !noalias !76544

bb.v:                                             ; preds = %.thread8.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.thread.i.i.i.i unwind label %bb.y, !noalias !76544

bb.w:                                             ; preds = %.thread8.i.i.i.i
  %i.an = load i64, ptr %i.c, align 8, !range !82, !noalias !76540, !noundef !75 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjjpCCFGI3ul_14lance_encoding.exit20.i.i.i.i

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.b, align 1, !noalias !76540
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjjpCCFGI3ul_14lance_encoding.exit20.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjjpCCFGI3ul_14lance_encoding.exit20.i.i.i.i: ; preds = %bb.x, %bb.w
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !76547 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, i64 16, i1 false), !noalias !76547
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %bb.z unwind label %bb.k, !noalias !76538

bb.y:                                             ; preds = %.thread.i.i.i.i, %bb.v
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !76544
  unreachable

.thread.i.i.i.i:                                  ; preds = %bb.v, %.thread5.i.i.i.i
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i, %.thread5.i.i.i.i ], [ %i.am, %bb.v ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(32) %i.c) #67
          to label %.body7.i.i.i unwind label %bb.y, !noalias !76544

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsjjpCCFGI3ul_14lance_encoding.exit20.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !76540
  %i.aq = trunc nuw i64 %i.an to i1
  br i1 %i.aq, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.6.i.i.i, i64 16, i1 false), !noalias !76532
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i)
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !noalias !76532, !nonnull !75, !noundef !75 ; 2 uses
  %i.ar = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val.i.i.i)
          to label %.noexc10.i.i.i unwind label %bb.g, !noalias !76538

.noexc10.i.i.i:                                   ; preds = %bb.aa
  br i1 %i.ar, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleuEECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i

bb.ab:                                            ; preds = %.noexc10.i.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleuEECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i unwind label %bb.g, !noalias !76538

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleuEECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i: ; preds = %bb.ab, %.noexc10.i.i.i
  %.not.i.i.i.i = icmp eq i64 %.sroa.7.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtCs9p5Dg9WVwvP_12futures_util12unfold_state11UnfoldStateuNCNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder23check_scheduler_on_drop00EE3setB1M_.exit.i.i, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleuEECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !76548
  store i64 %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %i.d, align 8, !noalias !76532
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.i.i, i64 16, i1 false), !noalias !76532
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1246, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @593) #66
          to label %bb.ae unwind label %bb.ad, !noalias !76549

bb.ad:                                            ; preds = %bb.ac
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #67
          to label %common.resume.i.i unwind label %bb.af, !noalias !76549

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !76549
  unreachable

bb.ag:                                            ; preds = %bb.l, %.body7.i.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !76538
  unreachable

bb.ah:                                            ; preds = %bb.z, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i)
  store i8 3, ptr %i.u, align 8, !noalias !76532
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
  br label %.sink.split.i

_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtCs9p5Dg9WVwvP_12futures_util12unfold_state11UnfoldStateuNCNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder23check_scheduler_on_drop00EE3setB1M_.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleuEECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i, %bb.f
  %i.av = phi ptr [ %i.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleuEECsjjpCCFGI3ul_14lance_encoding.exit12.i.i.i ], [ %i.p, %bb.f ]
  store i8 1, ptr %i.av, align 8, !noalias !76532
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
  store i64 2, ptr %1, align 8, !noalias !76550
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aw, align 8, !alias.scope !76551
  br label %.sink.split.i

bb.ai:                                            ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8, !alias.scope !76524
  %.not6.i = icmp eq ptr %.sroa.01.0.copyload.i, null
  br i1 %.not6.i, label %bb.aj, label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream5chainINtB5_5ChainINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB1e_6marker4SendEL_EEINtNtB9_6unfold6UnfolduNCNvB37_23check_scheduler_on_drop0NCNCB4O_00EEB2f_9poll_nextB39_.exit

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtCscI6d9CVNmLh_4core6marker4SendEL_ENtNtNtB2x_3ops4drop4Drop4dropB1C_.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.an
  store ptr null, ptr %i.e, align 8, !noalias !76526
  br label %common.resume.i

bb.aj:                                            ; preds = %bb.ai
  %.val8.i = load ptr, ptr %i.e, align 8, !noalias !76526, !noundef !75 ; 4 uses
  %.val9.i = load ptr, ptr %i.g, align 8, !noalias !76526 ; 6 uses
  %i.ax = icmp eq ptr %.val8.i, null
  br i1 %i.ax, label %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB7_6marker4SendEL_EEEE3setB2z_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.ay = load ptr, ptr %.val9.i, align 8, !invariant.load !75, !noalias !76524 ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i13.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void %i.ay(ptr noundef nonnull %.val8.i)
          to label %bb.am unwind label %bb.an, !noalias !76524

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.az = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !76, !invariant.load !75, !noalias !76524 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB7_6marker4SendEL_EEEE3setB2z_.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.am
  %i.bc = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !93, !invariant.load !75, !noalias !76524
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #63, !noalias !76524
  br label %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB7_6marker4SendEL_EEEE3setB2z_.exit.i

bb.an:                                            ; preds = %bb.al
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !76, !invariant.load !75, !noalias !76524 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtCscI6d9CVNmLh_4core6marker4SendEL_ENtNtNtB2x_3ops4drop4Drop4dropB1C_.exit5.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.an
  %i.bi = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !93, !invariant.load !75, !noalias !76524
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #63, !noalias !76524
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtCscI6d9CVNmLh_4core6marker4SendEL_ENtNtNtB2x_3ops4drop4Drop4dropB1C_.exit5.i.i.i.i

_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtB7_6option6OptionIBv_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB7_6marker4SendEL_EEEE3setB2z_.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.am, %bb.aj
  store ptr null, ptr %i.e, align 8, !noalias !76526
  br label %bb.c

.sink.split.i:                                    ; preds = %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtCs9p5Dg9WVwvP_12futures_util12unfold_state11UnfoldStateuNCNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder23check_scheduler_on_drop00EE3setB1M_.exit.i.i, %bb.ah, %bb.b
  %.sink.i = phi i64 [ 0, %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtCs9p5Dg9WVwvP_12futures_util12unfold_state11UnfoldStateuNCNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder23check_scheduler_on_drop00EE3setB1M_.exit.i.i ], [ 1, %bb.ah ], [ 1, %bb.b ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !76524
  br label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream5chainINtB5_5ChainINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB1e_6marker4SendEL_EEINtNtB9_6unfold6UnfolduNCNvB37_23check_scheduler_on_drop0NCNCB4O_00EEB2f_9poll_nextB39_.exit

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream5chainINtB5_5ChainINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemNtNtCsjjpCCFGI3ul_14lance_encoding7decoder13ReadBatchTaskNtNtB1e_6marker4SendEL_EEINtNtB9_6unfold6UnfolduNCNvB37_23check_scheduler_on_drop0NCNCB4O_00EEB2f_9poll_nextB39_.exit: ; preds = %bb.ai, %.sink.split.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCsjjpCCFGI3ul_14lance_encoding(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !75, !noundef !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %.not.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !75
  br label %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ]
  %i.q = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %2, align 8, !nonnull !75, !align !95, !noundef !75 ; 5 uses
  tail call void @_RNvMNtNtNtCsj3nLz3LBTXi_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsjjpCCFGI3ul_14lance_encoding.exit
  %i.w = phi ptr [ %i.q, %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsjjpCCFGI3ul_14lance_encoding.exit ], [ %.pre, %bb.t ] ; 3 uses
  %.sroa.010.0 = phi i64 [ 0, %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsjjpCCFGI3ul_14lance_encoding.exit ], [ %.sroa.010.1, %bb.t ] ; 2 uses
  %.sroa.08.0 = phi i64 [ 0, %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE28atomic_load_head_and_len_allCsjjpCCFGI3ul_14lance_encoding.exit ], [ %.sroa.08.1, %bb.t ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !noundef !75 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 5 uses
  %i.ac = load ptr, ptr %i.x, align 8, !nonnull !75, !noundef !75
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = icmp eq ptr %i.z, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq ptr %i.ab, null
  br i1 %i.af, label %bb.l, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.e
  %.sroa.07.0.i = phi ptr [ %i.ai, %bb.h ], [ %i.ab, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.ab, %bb.h ], [ %i.z, %bb.e ] ; 18 uses
  %i.ag = icmp eq ptr %.sroa.07.0.i, null
  br i1 %i.ag, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.y, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8
  %i.al = icmp eq ptr %i.ak, %.sroa.01.0.i
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.x, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store atomic ptr null, ptr %i.ao monotonic, align 8
  %i.ap = atomicrmw xchg ptr %i.aj, ptr %i.an acq_rel, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store atomic ptr %i.an, ptr %i.aq release, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 48
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.g ], [ %i.as, %bb.j ]
  store ptr %.sroa.07.0.sink.i, ptr %i.y, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !75
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.r, label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.aw = load atomic ptr, ptr %i.f monotonic, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.ai, label %bb.aj

bb.m:                                             ; preds = %bb.i, %bb.j
  %i.ay = load ptr, ptr %i.s, align 8, !nonnull !75, !align !95, !noundef !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !75, !noundef !75
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noundef !75
  call void %i.ba(ptr noundef %i.bc)
  store i8 -3, ptr %0, align 8
  br label %bb.ae

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !76565)
  %i.bd = load ptr, ptr %i.f, align 8, !alias.scope !76565, !noundef !75 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noalias !76565, !noundef !75
  %i.bg = add i64 %i.bf, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 24 ; 4 uses
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8, !noalias !76565 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !76565, !noundef !75 ; 4 uses
  %i.bl = load ptr, ptr %1, align 8, !alias.scope !76565, !nonnull !75, !noundef !75
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !76565, !nonnull !75, !noundef !75
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store atomic ptr %i.bo, ptr %i.bh monotonic, align 8, !noalias !76565
  store ptr null, ptr %i.bj, align 8, !noalias !76565
  %i.bp = icmp eq ptr %i.bi, null
  br i1 %i.bp, label %.thread3.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bk, ptr %i.bq, align 8, !noalias !76565
  %i.br = icmp eq ptr %i.bk, null
  br i1 %i.br, label %bb.p, label %.thread.i

.thread3.i:                                       ; preds = %bb.n
  %i.bs = icmp eq ptr %i.bk, null
  br i1 %i.bs, label %.thread4.i, label %.thread.i

.thread4.i:                                       ; preds = %.thread3.i
  store ptr null, ptr %i.f, align 8, !alias.scope !76565
  br label %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE6unlinkCsjjpCCFGI3ul_14lance_encoding.exit

.thread.i:                                        ; preds = %.thread3.i, %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store atomic ptr %i.bi, ptr %i.bt monotonic, align 8, !noalias !76565
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bi, ptr %i.f, align 8, !alias.scope !76565
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread.i
  %i.bu = phi ptr [ %i.bd, %.thread.i ], [ %i.bi, %bb.p ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 %i.bg, ptr %i.bv, align 8, !noalias !76565
  br label %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE6unlinkCsjjpCCFGI3ul_14lance_encoding.exit

_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE6unlinkCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.thread4.i, %bb.q
  %i.bw = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16
  store ptr %i.bw, ptr %i.d, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 56
  %i.by = atomicrmw xchg ptr %i.bx, i8 0 seq_cst, align 1
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.u, label %bb.x, !prof !81

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ca = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
  store ptr %i.ca, ptr %i.e, align 8
  %i.cb = atomicrmw add ptr %i.ca, i64 -1 release, align 8, !noalias !76566
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsjjpCCFGI3ul_14lance_encoding.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1W_6future6future6Futurep6OutputINtNtB1W_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1W_6marker4SendEL_EEEE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsjjpCCFGI3ul_14lance_encoding.exit
  %.sroa.010.1 = phi i64 [ %i.cq, %bb.ad ], [ %.sroa.010.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsjjpCCFGI3ul_14lance_encoding.exit ]
  %.sroa.08.1 = phi i64 [ %i.cj, %bb.ad ], [ %.sroa.08.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsjjpCCFGI3ul_14lance_encoding.exit ]
  %.pre = load ptr, ptr %1, align 8
  br label %bb.e

bb.u:                                             ; preds = %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1u_6marker4SendEL_EEE6unlinkCsjjpCCFGI3ul_14lance_encoding.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3592, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3594) #66
          to label %bb.v unwind label %bb.ag
end_hunk_0
