Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB5_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE10initializeNCINvB2_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB49_20ZstdBufferCompressor14get_compressor0E0zEB4h_:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !813
  store ptr %i.c, ptr %i.b, align 8, !noalias !813
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @65, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !813
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB8_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE10initializeNCINvB18_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4V_20ZstdBufferCompressor14get_compressor0E0zE0EB53_.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB8_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE10initializeNCINvB18_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB4V_20ZstdBufferCompressor14get_compressor0E0zE0EB53_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold minsize nonlazybind optsize uwtable
define internal fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder30default_cache_repetition_index0E0zEB1y_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load atomic i32, ptr @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder30default_cache_repetition_index30DEFAULT_CACHE_REPETITION_INDEX acquire, align 4, !noalias !816
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder30default_cache_repetition_index0E0zE0EB2k_.exit, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !816
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder30default_cache_repetition_index30DEFAULT_CACHE_REPETITION_INDEX, i64 4), ptr %i.c, align 8, !noalias !816
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.f, align 8, !noalias !816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !816
  store ptr %i.c, ptr %i.b, align 8, !noalias !816
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder30default_cache_repetition_index30DEFAULT_CACHE_REPETITION_INDEX, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @68, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !816
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder30default_cache_repetition_index0E0zE0EB2k_.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder30default_cache_repetition_index0E0zE0EB2k_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold minsize nonlazybind optsize uwtable
define internal fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31bypass_indirect_io_backpressure0E0zEB1C_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load atomic i32, ptr @_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31BYPASS_INDIRECT_IO_BACKPRESSURE acquire, align 4, !noalias !819
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31bypass_indirect_io_backpressure0E0zE0EB2o_.exit, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !819
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31BYPASS_INDIRECT_IO_BACKPRESSURE, i64 4), ptr %i.c, align 8, !noalias !819
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.f, align 8, !noalias !819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !819
  store ptr %i.c, ptr %i.b, align 8, !noalias !819
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31BYPASS_INDIRECT_IO_BACKPRESSURE, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !819
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31bypass_indirect_io_backpressure0E0zE0EB2o_.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31bypass_indirect_io_backpressure0E0zE0EB2o_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold minsize nonlazybind optsize uwtable
define internal fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockyE10initializeNCINvB2_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold0E0zEB1y_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold9THRESHOLD, i64 8) acquire, align 8, !noalias !822
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockyE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold0E0zE0EB2k_.exit, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !822
  store ptr @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold9THRESHOLD, ptr %i.c, align 8, !noalias !822
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.f, align 8, !noalias !822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !822
  store ptr %i.c, ptr %i.b, align 8, !noalias !822
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold9THRESHOLD, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @70, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !822
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockyE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold0E0zE0EB2k_.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockyE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold0E0zE0EB2k_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB3_19DecodeMiniBlockTask13extend_levelsINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEEB9_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %3, align 8, !noundef !75
  %.not = icmp eq ptr %i.b, null
  %i.c = load i64, ptr %2, align 8, !range !99, !noundef !75 ; 3 uses
  %.not14 = icmp eq i64 %i.c, -1                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not14, label %bb.e, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not14, label %.split, label %bb.p

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %.lr.ph.i.i.i
  %.val5.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.o, align 8, !alias.scope !867, !noalias !868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i64, ptr %2, align 8                ; 2 uses
  %.not19 = icmp eq i64 %.pr, -1
  br i1 %.not19, label %bb.j, label %.thread, !prof !869

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = sub i64 %1, %0
  %i.e = add i64 %4, %i.d                         ; 4 uses
  %i.f = shl i64 %i.e, 1                          ; 4 uses
  %i.g = icmp slt i64 %i.e, 0
  %.not.i = icmp ugt i64 %i.f, 9223372036854775806
  %or.cond.i = or i1 %i.g, %.not.i
  br i1 %or.cond.i, label %bb.i, label %bb.f, !prof !80

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !870
  %i.i = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !870 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = ptrtoint ptr %i.i to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit

bb.i:                                             ; preds = %bb.e, %bb.g
  %.sroa.4.0.ph = phi i64 [ 2, %bb.g ], [ 0, %bb.e ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.f) #66
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.h, %bb.f
  %.sroa.10.0 = phi i64 [ %i.k, %bb.h ], [ 2, %bb.f ]
  %.sroa.4.0 = phi i64 [ %i.e, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.l = inttoptr i64 %.sroa.10.0 to ptr          ; 2 uses
  %i.m = icmp samesign ule i64 %i.e, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.m)
  store i64 %.sroa.4.0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.p = icmp ugt i64 %4, %.sroa.4.0
  br i1 %i.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %4, i64 noundef 2, i64 noundef 2)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.q = load i64, ptr %i.o, align 8, !alias.scope !867, !noundef !75
  %.pre = load ptr, ptr %i.n, align 8, !alias.scope !867
  br label %.lr.ph.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit
  %.not17 = icmp eq i64 %4, 0
  br i1 %.not17, label %bb.d, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %.noexc
  %i.r = phi ptr [ %.pre, %.noexc ], [ %i.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %i.s = phi i64 [ %i.q, %.noexc ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 2 uses
  %i.t = shl i64 %i.s, 1
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.r, i64 %i.t
  %i.u = shl nuw i64 %4, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %scevgep.i.i.i, i8 0, i64 %i.u, i1 false), !noalias !871
  %i.v = add i64 %i.s, %4
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.d
  %i.w = phi i64 [ %.pr, %bb.d ], [ %i.c, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val25 = load i64, ptr %i.x, align 8, !noundef !75
  %i.y = lshr i64 %.val25, 1                      ; 2 uses
  %i.z = icmp ult i64 %1, %0
  %.not20 = icmp ugt i64 %1, %i.y
  %or.cond = or i1 %i.z, %.not20
  br i1 %or.cond, label %bb.m, label %bb.k, !prof !100

bb.j:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #66
  unreachable

bb.k:                                             ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val24 = load ptr, ptr %i.aa, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %.idx52 = shl i64 %0, 1                         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val24, i64 %.idx52 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ac = sub nuw nsw i64 %1, %0                  ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !873, !noundef !75 ; 3 uses
  %i.af = sub i64 %i.w, %i.ae
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.l, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26, !prof !81

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ae, i64 noundef %i.ac, i64 noundef 2, i64 noundef 2)
  %.pre.i = load i64, ptr %i.ad, align 8, !alias.scope !872
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26: ; preds = %bb.l, %bb.k
  %i.ah = phi i64 [ %i.ae, %bb.k ], [ %.pre.i, %bb.l ] ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !872, !nonnull !75, !noundef !75 ; 8 uses
  %i.ak = icmp eq i64 %0, %1
  br i1 %i.ak, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26
  %min.iters.check = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %5 = ptrtoaddr ptr %i.aj to i64
  %i.al = shl i64 %i.ah, 1
  %6 = ptrtoaddr ptr %.val24 to i64
  %i.am = add i64 %i.al, %5
  %i.an = add i64 %.idx52, %6
  %i.ao = sub i64 %i.an, %i.am
  %diff.check = icmp ugt i64 %i.ao, -32
  br i1 %diff.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check63 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, -16                     ; 5 uses
  %i.aq = add i64 %i.ah, %n.vec                   ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aj, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <8 x i16>, ptr %i.as, align 2, !noalias !874
  %wide.load64 = load <8 x i16>, ptr %i.at, align 2, !noalias !874
  %i.au = getelementptr [2 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <8 x i16> %wide.load, ptr %i.au, align 2, !noalias !875
  store <8 x i16> %wide.load64, ptr %i.av, align 2, !noalias !875
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !851

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.ac, -4                    ; 4 uses
  %i.ax = add i64 %i.ah, %n.vec65                 ; 2 uses
  %i.ay = getelementptr [2 x i8], ptr %i.aj, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index66
  %wide.load67 = load <4 x i16>, ptr %i.az, align 2, !noalias !874
  %i.ba = getelementptr [2 x i8], ptr %i.ay, i64 %index66
  store <4 x i16> %wide.load67, ptr %i.ba, align 2, !noalias !875
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !852

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.ac, %n.vec65
  br i1 %cmp.n69, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ] ; 3 uses
  %i.bc = sub i64 %1, %0
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %i.bd = phi i64 [ %i.bg, %.preheader.i.prol ], [ %.ph, %.preheader.i.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.prol = phi i64 [ %i.bh, %.preheader.i.prol ], [ %.sroa.01.0.i.i.i.i.ph, %.preheader.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i.prol
  %.val16.i.i.i.i.prol = load i16, ptr %i.be, align 2, !noalias !874, !noundef !75
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bd
  store i16 %.val16.i.i.i.i.prol, ptr %i.bf, align 2, !noalias !875
  %i.bg = add i64 %i.bd, 1                        ; 3 uses
  %i.bh = add nuw i64 %.sroa.01.0.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !853

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.bg, %.preheader.i.prol ]
  %.unr = phi i64 [ %.ph, %.preheader.i.preheader ], [ %i.bg, %.preheader.i.prol ]
  %.sroa.01.0.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.ph, %.preheader.i.preheader ], [ %i.bh, %.preheader.i.prol ]
  %i.bi = sub i64 %.sroa.01.0.i.i.i.i.ph, %1
  %i.bj = add i64 %i.bi, %0
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %i.bl = phi i64 [ %i.ca, %.preheader.i ], [ %.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cb, %.preheader.i ], [ %.sroa.01.0.i.i.i.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i
  %.val16.i.i.i.i = load i16, ptr %i.bm, align 2, !noalias !874, !noundef !75
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bl
  store i16 %.val16.i.i.i.i, ptr %i.bn, align 2, !noalias !875
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %.val16.i.i.i.i.1 = load i16, ptr %i.bp, align 2, !noalias !874, !noundef !75
  %i.bq = getelementptr [2 x i8], ptr %i.aj, i64 %i.bl
  %i.br = getelementptr i8, ptr %i.bq, i64 2
  store i16 %.val16.i.i.i.i.1, ptr %i.br, align 2, !noalias !875
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.val16.i.i.i.i.2 = load i16, ptr %i.bt, align 2, !noalias !874, !noundef !75
  %i.bu = getelementptr [2 x i8], ptr %i.aj, i64 %i.bl
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  store i16 %.val16.i.i.i.i.2, ptr %i.bv, align 2, !noalias !875
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  %.val16.i.i.i.i.3 = load i16, ptr %i.bx, align 2, !noalias !874, !noundef !75
  %i.by = getelementptr [2 x i8], ptr %i.aj, i64 %i.bl
  %i.bz = getelementptr i8, ptr %i.by, i64 6
  store i16 %.val16.i.i.i.i.3, ptr %i.bz, align 2, !noalias !875
  %i.ca = add i64 %i.bl, 4                        ; 2 uses
  %i.cb = add nuw i64 %.sroa.01.0.i.i.i.i, 4      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.ac
  br i1 %i.cc, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.i, !llvm.loop !854

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block, %vec.epilog.middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26
  %storemerge.i.i.i = phi i64 [ %i.ah, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26 ], [ %i.ax, %vec.epilog.middle.block ], [ %i.aq, %middle.block ], [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.ca, %.preheader.i ]
  store i64 %storemerge.i.i.i, ptr %i.ad, align 8, !alias.scope !872, !noalias !876
  br label %.split

bb.m:                                             ; preds = %.thread
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #66
  unreachable

.split:                                           ; preds = %bb.p, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNtEECsjjpCCFGI3ul_14lance_encoding.exit33, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.c
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %i.cd

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ce = icmp eq i64 %.val, 0
  br i1 %i.ce, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val21 = load ptr, ptr %i.n, align 8, !nonnull !75, !noundef !75
  %i.cf = shl nuw i64 %.val, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 2) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit

bb.p:                                             ; preds = %bb.c
  %i.cg = sub i64 %1, %0                          ; 4 uses
  %.not15 = icmp eq i64 %1, %0
  br i1 %.not15, label %.split, label %.split12

.split12:                                         ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !878, !noundef !75 ; 3 uses
  %i.cj = sub i64 %i.c, %i.ci
  %i.ck = icmp ugt i64 %i.cg, %i.cj
  br i1 %i.ck, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i32, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNtEECsjjpCCFGI3ul_14lance_encoding.exit33, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i32: ; preds = %.split12
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ci, i64 noundef %i.cg, i64 noundef 2, i64 noundef 2)
  %i.cl = load i64, ptr %i.ch, align 8, !alias.scope !877, !noundef !75
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNtEECsjjpCCFGI3ul_14lance_encoding.exit33

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNtEECsjjpCCFGI3ul_14lance_encoding.exit33: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i32, %.split12
  %i.cm = phi i64 [ %i.cl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i32 ], [ %i.ci, %.split12 ] ; 2 uses
  %.in.i29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %.in.i29, align 8, !alias.scope !877, !nonnull !75, !noundef !75
  %i.co = shl i64 %i.cm, 1
  %scevgep.i.i.i30 = getelementptr nuw i8, ptr %i.cn, i64 %i.co
  %i.cp = shl nuw i64 %i.cg, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %scevgep.i.i.i30, i8 0, i64 %i.cp, i1 false), !noalias !879
  %i.cq = add i64 %i.cm, %i.cg
  store i64 %i.cq, ptr %i.ch, align 8, !alias.scope !877, !noalias !880
  br label %.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB3_16InlineBitpacking7unchunkhEB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [56 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB7_20DecodeBatchScheduler15schedule_ranges0B9_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #67
          to label %common.resume unwind label %bb.h, !noalias !23776

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !23776
  unreachable

_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE4sendB1S_.exit.thread: ; preds = %bb.f
  %i.u = and i64 %i.q, 31                         ; 2 uses
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !23776
  %i.w = shl nuw nsw i64 1, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1808
  %i.y = atomicrmw or ptr %i.x, i64 %i.w release, align 8, !noalias !23779 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  tail call void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.z), !noalias !23776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23776
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseXbohGRa9jr_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB1Z_.exit

common.resume:                                    ; preds = %bb.q, %bb.m, %bb.n, %bb.g, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.aa, %bb.i ], [ %i.s, %bb.g ], [ %i.ah, %bb.n ], [ %i.am, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1) #67
          to label %common.resume unwind label %bb.j, !noalias !23777

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !23777
  unreachable

_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE4sendB1S_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !23774, !noalias !23770
  %.pr = load i8, ptr %i.d, align 8               ; 2 uses
  %.not = icmp eq i8 %.pr, -2
  br i1 %.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseXbohGRa9jr_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB1Z_.exit, label %bb.r

bb.k:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23780
  %.pr5.pre = load i8, ptr %i.d, align 8, !alias.scope !23781 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23781)
  %i.ac = icmp eq i8 %.pr5.pre, -2
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseXbohGRa9jr_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB1Z_.exit, label %.thread

.thread:                                          ; preds = %bb.r, %bb.k
  %.pr510 = phi i8 [ %.pr5.pre, %bb.k ], [ %.pr, %bb.r ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23782)
  call void @llvm.experimental.noalias.scope.decl(metadata !23783)
  %i.ad = icmp eq i8 %.pr510, -1
  br i1 %i.ad, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23784)
  call void @llvm.experimental.noalias.scope.decl(metadata !23785)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val4.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !23786, !nonnull !75, !noundef !75 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val5.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !23786, !noundef !75
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjjpCCFGI3ul_14lance_encoding7decoder11MessageTypeEBG_(ptr noalias noundef nonnull readonly align 8 %.val4.i.i.i.i.i, i64 noundef %.val5.i.i.i.i.i)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder11MessageTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i unwind label %bb.m, !noalias !23786

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !23786 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ai, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = mul nuw i64 %.val2.i.i.i.i.i, 48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !23786
  br label %common.resume

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder11MessageTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i: ; preds = %bb.l
  %.val.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !23786 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseXbohGRa9jr_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB1Z_.exit, label %bb.o

bb.o:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder11MessageTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i
  %i.al = mul nuw i64 %.val.i.i.i.i.i, 48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !23786
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseXbohGRa9jr_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB1Z_.exit

bb.p:                                             ; preds = %.thread
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseXbohGRa9jr_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB1Z_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseXbohGRa9jr_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB1Z_.exit: ; preds = %_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE4sendB1S_.exit, %_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE4sendB1S_.exit.thread, %bb.k, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder11MessageTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i, %bb.o, %bb.p
  %.not47 = phi i1 [ false, %bb.p ], [ false, %bb.k ], [ false, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder11MessageTypeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i.i.i.i.i ], [ false, %bb.o ], [ true, %_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE4sendB1S_.exit.thread ], [ true, %_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE4sendB1S_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.not47

bb.q:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseXbohGRa9jr_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB1Z_(ptr noalias noundef align 8 dereferenceable(56) %i.d) #67
          to label %common.resume unwind label %bb.t

bb.r:                                             ; preds = %_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc9unboundedINtB5_15UnboundedSenderINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE4sendB1S_.exit
  %i.an = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 6
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp samesign ugt i64 %i.an, 3
  br i1 %i.ap, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23780
  store i64 0, ptr %i.b, align 8, !noalias !23780
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @219, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 23, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @216, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 34, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @219, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 23, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 1377, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !23780
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @711, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !23780
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr inttoptr (i64 147 to ptr), ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !23780
  invoke void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.k unwind label %bb.q

bb.t:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB7_20DecodeBatchScheduler7try_new0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [192 x i8], align 8               ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 5 uses
  %.sroa.8306 = alloca [7 x i8], align 1          ; 6 uses
  %.sroa.3301.sroa.0 = alloca [7 x i8], align 1   ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 12 uses
  %i.f = alloca [56 x i8], align 8                ; 13 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.3.sroa.0 = alloca [7 x i8], align 1      ; 2 uses
  %i.h = alloca [56 x i8], align 8                ; 12 uses
  %i.i = alloca [56 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 18 uses
  %i.n = alloca [192 x i8], align 8               ; 15 uses
  %.sroa.9.sroa.9 = alloca [7 x i8], align 1      ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [16 x i8], align 8                ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 398 ; 3 uses
  %i.r = load i8, ptr %i.q, align 2, !range !136, !noundef !75
  switch i8 %i.r, label %default.unreachable469 [
    i8 0, label %bb.b
    i8 1, label %bb.dd
    i8 2, label %bb.de
    i8 3, label %bb.c
    i8 4, label %bb.d
  ]

default.unreachable469:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 397
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 395
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 394 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 393
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.s, i8 0, i64 6, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !75, !align !95, !noundef !75 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !75, !align !139, !noundef !75 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !75 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !75, !align !95, !noundef !75 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !75 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.al = load i64, ptr %i.ak, align 8, !noundef !75 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 1, ptr %i.s, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !75, !noundef !75 ; 32 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !75, !align !95, !noundef !75 ; 3 uses
  store ptr %i.ap, ptr %i.p, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i8 1, ptr %i.t, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.an, align 8
  store <2 x ptr> %i.au, ptr %i.am, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !75, !noundef !75 ; 4 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.e, label %bb.h, !prof !81

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.phi.trans.insert428 = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val101.pre = load ptr, ptr %.phi.trans.insert428, align 8
  %.phi.trans.insert430 = getelementptr i8, ptr %1, i64 608
  %.val102.pre = load ptr, ptr %.phi.trans.insert430, align 8
  br label %bb.dg

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val99.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert426 = getelementptr i8, ptr %1, i64 656
  %.val100.pre = load ptr, ptr %.phi.trans.insert426, align 8
  br label %bb.dy

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @712, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #66
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.g:                                             ; preds = %bb.e
  unreachable

.body214:                                         ; preds = %bb.eo, %bb.ey, %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit233, %bb.f
  %i.ba = phi ptr [ %i.ap, %bb.f ], [ %i.nr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit233 ], [ %i.nh, %bb.ey ], [ %i.pi, %bb.eo ], [ %i.ap, %bb.i ] ; 3 uses
  %.pn72 = phi { ptr, i32 } [ %i.az, %bb.f ], [ %.pn70, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit233 ], [ %i.uc, %bb.ey ], [ %i.sp, %bb.eo ], [ %i.bg, %bb.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 397
  %i.bc = load i8, ptr %i.bb, align 1, !range !89, !noundef !75
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.fk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5cache10LanceCacheEECsjjpCCFGI3ul_14lance_encoding.exit235

bb.h:                                             ; preds = %bb.b
  %i.be = getelementptr i8, ptr %i.aj, i64 8
  %.val109 = load ptr, ptr %i.be, align 8, !nonnull !75, !noundef !75
  %i.bf = getelementptr i8, ptr %i.aj, i64 16
  %.val110 = load i64, ptr %i.bf, align 8, !noundef !75
  invoke void @_RNvXs8_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_6SchemaE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.z)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.j:                                             ; preds = %bb.h
  %.val105 = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75 ; 4 uses
  %i.bh = getelementptr i8, ptr %1, i64 8
  %.val106 = load i64, ptr %i.bh, align 8         ; 2 uses
  %i.bi = atomicrmw add ptr %.val105, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %.val105, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 %.val106, ptr %i.bl, align 8
  store i8 1, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bm = atomicrmw add ptr %.val105, i64 1 monotonic, align 8
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.val105, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.val106, ptr %i.bp, align 8
  store i8 32, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5Field3newReECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @714, i64 noundef 4, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.body180

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs0_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE8try_from(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.m)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(112) %i.m) #67
          to label %.body180 unwind label %bb.by

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !24091)
  %i.bs = load i64, ptr %i.n, align 8, !range !96, !alias.scope !24092, !noalias !24091, !noundef !75 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.9.sroa.0.0.copyload339 = load i8, ptr %i.bu, align 8, !alias.scope !24093 ; 2 uses
  %.sroa.9.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.9.0..sroa_idx, i64 7, i1 false), !alias.scope !24093
  %.sroa.9.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.9.sroa.10.0.copyload341 = load i64, ptr %.sroa.9.sroa.10.0..sroa_idx, align 8, !alias.scope !24093 ; 2 uses
  %.sroa.9.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bv = load <2 x ptr>, ptr %.sroa.9.sroa.11.0..sroa_idx, align 8, !alias.scope !24093 ; 2 uses
  %.sroa.9.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.9.sroa.13.0.copyload347 = load ptr, ptr %.sroa.9.sroa.13.0..sroa_idx, align 8, !alias.scope !24093 ; 2 uses
  %.sroa.9.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.9.sroa.14.0.copyload349 = load i64, ptr %.sroa.9.sroa.14.0..sroa_idx, align 8, !alias.scope !24093 ; 2 uses
  %.sroa.9.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.9.sroa.15.0.copyload351 = load ptr, ptr %.sroa.9.sroa.15.0..sroa_idx, align 8, !alias.scope !24093 ; 2 uses
  br i1 %i.bt, label %bb.cw, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.11.0..sroa_idx240 = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.5.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx243, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.11.0..sroa_idx240, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx242.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.9, i64 7, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store i64 %i.bs, ptr %i.bw, align 8
  %.sroa.4.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 %.sroa.9.sroa.0.0.copyload339, ptr %.sroa.4.0..sroa_idx242, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %.sroa.9.sroa.10.0.copyload341, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx242.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store <2 x ptr> %i.bv, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx242.sroa_idx, align 8
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %.sroa.9.sroa.13.0.copyload347, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx242.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %.sroa.9.sroa.14.0.copyload349, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx242.sroa_idx, align 8
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx242.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %.sroa.9.sroa.15.0.copyload351, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx242.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !24094)
  call void @llvm.experimental.noalias.scope.decl(metadata !24095)
  call void @llvm.experimental.noalias.scope.decl(metadata !24096)
  %.val.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !24097 ; 2 uses
  %i.bx = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !24097, !nonnull !75, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !24097
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.t, %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.u unwind label %.body

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.ca = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB7_20DecodeBatchScheduler7try_new0B9_:bb.a

_RNvMs2_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_10ColumnInfo13is_structural.exit: ; preds = %bb.ar
  %i.eo = getelementptr i8, ptr %.val113, i64 32
  %.val107 = load ptr, ptr %i.eo, align 8, !nonnull !75, !noundef !75
  %i.ep = getelementptr inbounds nuw i8, ptr %.val107, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !range !132, !noundef !75
  %.not407 = icmp eq i64 %i.eq, -4
  br i1 %.not407, label %_RNvMs2_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_10ColumnInfo13is_structural.exit.thread, label %bb.an

_RNvMs2_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_10ColumnInfo13is_structural.exit.thread: ; preds = %bb.ar, %_RNvMs2_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_10ColumnInfo13is_structural.exit
  %i.er = add i64 %i.ah, 1                        ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24135)
  %i.et = shl i64 %i.er, 3                        ; 4 uses
  %i.eu = icmp ugt i64 %i.er, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.et, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.eu, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.au, label %bb.as, !prof !80

bb.as:                                            ; preds = %_RNvMs2_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_10ColumnInfo13is_structural.exit.thread
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !24136
  %i.ew = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.et, i64 noundef range(i64 1, 17) 8) #63, !noalias !24136 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %_RNvMs2_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_10ColumnInfo13is_structural.exit.thread
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.at ], [ 0, %_RNvMs2_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_10ColumnInfo13is_structural.exit.thread ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.et) #66
          to label %.noexc130 unwind label %bb.av

.noexc130:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.aw:                                            ; preds = %bb.at, %bb.as
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.as ], [ %i.ew, %bb.at ]
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.as ], [ %i.er, %bb.at ] ; 2 uses
  %i.ez = icmp samesign ule i64 %i.er, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.ez)
  store i64 %.sroa.4.0.i.i, ptr %i.es, align 8, !alias.scope !24135
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %i.fa, align 8, !alias.scope !24135
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 5 uses
  store i64 0, ptr %i.fb, align 8, !alias.scope !24135
  store i8 1, ptr %i.w, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCsjjpCCFGI3ul_14lance_encoding7decoder11root_column(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, i64 noundef %i.al)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body131

.body131:                                         ; preds = %bb.ba, %bb.ax
  %eh.lpad-body132 = phi { ptr, i32 } [ %i.fc, %bb.ax ], [ %i.fh, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.body133

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24137
  store i64 1, ptr %i.b, align 8, !noalias !24137
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.fd, align 8, !noalias !24137
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fe, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !24138
  %i.ff = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !24138 ; 5 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.az, label %bb.bc, !prof !77

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #66
          to label %.noexc.i unwind label %bb.ba, !noalias !24137

.noexc.i:                                         ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEBF_(ptr noalias noundef readonly align 8 dereferenceable(56) %i.fe)
          to label %.body131 unwind label %bb.bb, !noalias !24137

bb.bb:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !24137
  unreachable

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ff, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !24137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !24139)
  call void @llvm.experimental.noalias.scope.decl(metadata !24140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24139
  store ptr %i.ff, ptr %i.a, align 8, !noalias !24141
  %i.fj = load i64, ptr %i.fb, align 8, !alias.scope !24141, !noundef !75 ; 3 uses
  %i.fk = load i64, ptr %i.es, align 8, !range !76, !alias.scope !24141, !noundef !75
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %bb.bh unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = atomicrmw sub ptr %i.ff, i64 1 release, align 8, !noalias !24142
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bf, label %.body133

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %.body133 unwind label %bb.bg, !noalias !24141

bb.bg:                                            ; preds = %bb.bf
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !24141
  unreachable

bb.bh:                                            ; preds = %bb.bd, %bb.bc
  %i.fq = load ptr, ptr %i.fa, align 8, !alias.scope !24141, !nonnull !75, !noundef !75
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fj
  store ptr %i.ff, ptr %i.fr, align 8, !noalias !24141
  %i.fs = add i64 %i.fj, 1                        ; 4 uses
  store i64 %i.fs, ptr %i.fb, align 8, !alias.scope !24141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24139
  call void @llvm.experimental.noalias.scope.decl(metadata !24143)
  call void @llvm.experimental.noalias.scope.decl(metadata !24144)
  call void @llvm.experimental.noalias.scope.decl(metadata !24145)
  %i.ft = load i64, ptr %i.es, align 8, !range !76, !alias.scope !24146, !noundef !75
  %i.fu = sub i64 %i.ft, %i.fs
  %i.fv = icmp ugt i64 %i.ah, %i.fu
  br i1 %i.fv, label %bb.bi, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEE7reserveBZ_.exit.i.i.i, !prof !81

bb.bi:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.es, i64 noundef %i.fs, i64 noundef %i.ah, i64 noundef 8, i64 noundef 8)
          to label %.noexc136 unwind label %bb.bl

.noexc136:                                        ; preds = %bb.bi
  %.pre.i.i.i = load i64, ptr %i.fb, align 8, !alias.scope !24147
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEE7reserveBZ_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEE7reserveBZ_.exit.i.i.i: ; preds = %.noexc136, %bb.bh
  %i.fw = phi i64 [ %i.fs, %bb.bh ], [ %.pre.i.i.i, %.noexc136 ]
  %i.fx = load ptr, ptr %i.fa, align 8, !alias.scope !24147, !nonnull !75, !noundef !75
  br label %.preheader.i.i.i135

.preheader.i.i.i135:                              ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEE7reserveBZ_.exit.i.i.i, %bb.bk
  %i.fy = phi i64 [ %i.gd, %bb.bk ], [ %i.fw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEE7reserveBZ_.exit.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.ge, %bb.bk ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEE7reserveBZ_.exit.i.i.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.01.0.i.i.i.i.i.i
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.fz, align 8, !noalias !24148, !nonnull !75, !noundef !75 ; 2 uses
  %i.ga = atomicrmw add ptr %.val16.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !24149
  %i.gb = icmp slt i64 %i.ga, 0
  br i1 %i.gb, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.preheader.i.i.i135
  call void @llvm.trap()
  unreachable

bb.bk:                                            ; preds = %.preheader.i.i.i135
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy
  store ptr %.val16.i.i.i.i.i.i, ptr %i.gc, align 8, !noalias !24150
  %i.gd = add i64 %i.fy, 1                        ; 2 uses
  %i.ge = add nuw i64 %.sroa.01.0.i.i.i.i.i.i, 1  ; 2 uses
  %i.gf = icmp eq i64 %i.ge, %i.ah
  br i1 %i.gf, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i, label %.preheader.i.i.i135

bb.bl:                                            ; preds = %bb.bi
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body133

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i: ; preds = %bb.bk
  store i64 %i.gd, ptr %i.fb, align 8, !alias.scope !24147, !noalias !24151
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.gi = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.gj = shl i64 %i.gi, 2                        ; 3 uses
  %i.gk = icmp ugt i64 %i.ad, 4611686018427387902
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.gj, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.gk, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.bm, !prof !80

bb.bm:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !24152
  %i.gl = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.gj, i64 noundef range(i64 1, 17) 4) #63, !noalias !24152 ; 9 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %.noexc.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.bm, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.bm ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.gj) #66
          to label %.noexc139 unwind label %bb.bn

.noexc139:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i.i.i: ; preds = %bb.bm
  store i32 0, ptr %i.gl, align 4, !noalias !24153
  %i.gn = icmp eq i64 %i.ad, 0
  br i1 %i.gn, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.preheader.preheader490, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %3 = ptrtoaddr ptr %i.gl to i64
  %4 = ptrtoaddr ptr %i.ab to i64
  %i.go = sub i64 %3, %4
  %i.gp = or disjoint i64 %i.go, 3
  %diff.check = icmp ult i64 %i.gp, 31
  br i1 %diff.check, label %.preheader.preheader490, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387896     ; 4 uses
  %i.gq = or disjoint i64 %n.vec, 1               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load = load <4 x i32>, ptr %i.gr, align 4, !noalias !24154
  %wide.load488 = load <4 x i32>, ptr %i.gs, align 4, !noalias !24154
  %i.gt = call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 1))
  %i.gu = call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load488, <4 x i32> splat (i32 1))
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 20
  store <4 x i32> %i.gt, ptr %i.gw, align 4, !noalias !24155
  store <4 x i32> %i.gu, ptr %i.gx, align 4, !noalias !24155
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !23949

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader490

.preheader.preheader490:                          ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader.preheader ], [ %i.gq, %middle.block ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.ad, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader490
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.ph
  %.val16.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.gz, align 4, !noalias !24154, !noundef !75
  %i.ha = call noundef range(i32 1, 0) i32 @llvm.uadd.sat.i32(i32 %.val16.i.i.i.i.i.i.i.i.i.i.prol, i32 1)
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.ph
  store i32 %i.ha, ptr %i.hb, align 4, !noalias !24155
  %i.hc = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %i.hd = or disjoint i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader490
  %.lcssa.unr = phi i64 [ poison, %.preheader.preheader490 ], [ %i.hc, %.preheader.prol ]
  %.unr = phi i64 [ %.ph, %.preheader.preheader490 ], [ %i.hc, %.preheader.prol ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.preheader490 ], [ %i.hd, %.preheader.prol ]
  %i.he = icmp eq i64 %i.ad, %.neg
  br i1 %i.he, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.hf = phi i64 [ %i.ho, %.preheader ], [ %.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hp, %.preheader ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i
  %.val16.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hg, align 4, !noalias !24154, !noundef !75
  %i.hh = call noundef range(i32 1, 0) i32 @llvm.uadd.sat.i32(i32 %.val16.i.i.i.i.i.i.i.i.i.i, i32 1)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hf
  store i32 %i.hh, ptr %i.hi, align 4, !noalias !24155
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %.val16.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.hk, align 4, !noalias !24154, !noundef !75
  %i.hl = call noundef range(i32 1, 0) i32 @llvm.uadd.sat.i32(i32 %.val16.i.i.i.i.i.i.i.i.i.i.1, i32 1)
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hf
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store i32 %i.hl, ptr %i.hn, align 4, !noalias !24155
  %i.ho = add nuw nsw i64 %i.hf, 2                ; 2 uses
  %i.hp = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, %i.ad
  br i1 %i.hq, label %.loopexit, label %.preheader, !llvm.loop !23950

bb.bn:                                            ; preds = %.noexc.i.i.i.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body133

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i138 = phi i64 [ 1, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoItermKj1_EINtNtB6_3map3MapINtNtNtBa_5slice4iter4ItermENCNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB2r_20DecodeBatchScheduler7try_new00EENtNtNtB8_6traits8iterator8Iterator9size_hintB2t_.exit.thread.i.i.i.i.i.i ], [ %i.gq, %middle.block ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.ho, %.preheader ] ; 2 uses
  store i64 %i.gi, ptr %i.gh, align 8, !noalias !24156
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr %i.gl, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24156
  %.sroa.5424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i64 %storemerge.i.i.i.i.i.i.i138, ptr %.sroa.5424.0..sroa_idx, align 8, !noalias !24156
  store i8 0, ptr %i.w, align 2
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 472
  store ptr %i.gl, ptr %i.ht, align 8, !alias.scope !24157, !noalias !24158
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i64 %storemerge.i.i.i.i.i.i.i138, ptr %i.hu, align 8, !alias.scope !24157, !noalias !24158
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i8 0, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24159)
  call void @llvm.experimental.noalias.scope.decl(metadata !24160)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !range !89, !alias.scope !24160, !noalias !24159, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !24161
  %i.hy = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !24161 ; 4 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.bo, label %bb.bq, !prof !77

bb.bo:                                            ; preds = %.loopexit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #66
          to label %.noexc146 unwind label %bb.bp

.noexc146:                                        ; preds = %bb.bo
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder24CoreFieldDecoderStrategyEBF_.exit154: ; preds = %.body219, %bb.cc, %bb.bp
  %i.ia = phi ptr [ %i.ic, %bb.bp ], [ %i.ju, %bb.cc ], [ %i.ju, %.body219 ]
  %.pn41 = phi { ptr, i32 } [ %i.id, %bb.bp ], [ %.pn38.pn, %bb.cc ], [ %.pn38.pn, %.body219 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 448
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEB1t_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.ib)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14ColumnInfoIterEBF_.exit unwind label %bb.by

bb.bp:                                            ; preds = %bb.ei, %bb.cb, %bb.bo
  %i.ic = phi ptr [ %i.qi, %bb.ei ], [ %i.jn, %bb.cb ], [ %i.ap, %bb.bo ]
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder24CoreFieldDecoderStrategyEBF_.exit154

bb.bq:                                            ; preds = %.loopexit
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  store i64 1, ptr %i.hy, align 8, !noalias !24162
  %.sroa.4.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i145, align 8, !noalias !24162
  %i.if = load i8, ptr %i.ay, align 1, !range !89, !alias.scope !24160, !noalias !24159, !noundef !75
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 520
  store i8 %i.hx, ptr %i.ig, align 8, !alias.scope !24159, !noalias !24160
  store ptr %i.hy, ptr %i.ie, align 8, !alias.scope !24159, !noalias !24160
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr @1733, ptr %i.ih, align 8, !alias.scope !24159, !noalias !24160
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 521
  store i8 %i.if, ptr %i.ii, align 1, !alias.scope !24159, !noalias !24160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs6_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_24CoreFieldDecoderStrategy28create_array_field_scheduler(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ie, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val109, i64 noundef %.val110)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body219

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !24163)
  %i.ik = load i8, ptr %i.f, align 8, !range !88, !alias.scope !24164, !noalias !24163, !noundef !75 ; 2 uses
  %.not.i148 = icmp eq i8 %i.ik, -1
  br i1 %.not.i148, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.il = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 2 uses
  %i.in = load <2 x ptr>, ptr %i.il, align 8, !alias.scope !24164, !noalias !24163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 1, ptr %i.x, align 1
  store <2 x ptr> %i.in, ptr %i.im, align 8
  store i8 0, ptr %i.s, align 8
  %.val117 = load ptr, ptr %i.at, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.io = atomicrmw add ptr %.val117, i64 1 monotonic, align 8
  %i.ip = icmp slt i64 %i.io, 0
  br i1 %i.ip, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.trap()
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr null, ptr %i.is, align 8, !alias.scope !24165, !noalias !24166
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 600
  store ptr %i.ap, ptr %i.it, align 8, !alias.scope !24165, !noalias !24166
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 608
  store ptr %i.ar, ptr %i.iu, align 8, !alias.scope !24165, !noalias !24166
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 616
  store ptr %.val117, ptr %i.iv, align 8, !alias.scope !24165, !noalias !24166
  store i64 0, ptr %i.ir, align 8, !alias.scope !24165, !noalias !24166
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !24165, !noalias !24166
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.4.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %1, i64 560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !24165, !noalias !24166
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i149, align 8, !alias.scope !24165, !noalias !24166
  %.sroa.5.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %1, i64 568
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i150, i8 0, i64 16, i1 false), !alias.scope !24165, !noalias !24166
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24165, !noalias !24166
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !24165, !noalias !24166
  %i.iw = load ptr, ptr %i.im, align 8, !nonnull !75, !noundef !75
  %i.ix = load ptr, ptr %i.iq, align 8, !nonnull !75, !align !95, !noundef !75
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !invariant.load !75, !nonnull !75
  %i.ja = invoke { ptr, ptr } %i.iz(ptr noundef nonnull %i.iw, ptr noundef nonnull align 8 %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ir)
end_hunk_2
begin_hunk_3_@_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNvXsg_B1I_NtB1I_19SimpleStructDecoderNtNtB1O_7decoder18LogicalPageDecoder5drain0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1O_:bb.a

bb.an:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.f
  %.sroa.12.8.copyload.i.i.i.i = phi i64 [ %i.dk, %._crit_edge.loopexit.i.i.i.i.i.i ], [ 0, %bb.f ]
  %.sroa.10.8.copyload.i.i.i.i = phi ptr [ %.sroa.10.8.copyload.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.f ]
  %.sroa.7.8.copyload.i.i.i.i = phi i64 [ %.sroa.7.8.copyload.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.dr = phi i64 [ %.pre137.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ 0, %bb.f ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !60423, !noalias !60424, !noundef !75
  %i.du = add i64 %i.dt, %i.dr                    ; 2 uses
  store i64 %i.du, ptr %i.ds, align 8, !alias.scope !60423, !noalias !60424
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !60423, !noalias !60424, !noundef !75
  %i.dx = icmp ne i64 %i.du, %i.dw
  %i.dy = zext i1 %i.dx to i8
  store i8 %i.dy, ptr %i.s, align 8, !noalias !60417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !60422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !60417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !60415
  %.not.i4.i.i.i.i.i = icmp eq i64 %.sroa.7.8.copyload.i.i.i.i, -1
  br i1 %.not.i4.i.i.i.i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateINtNtBa_6result6ResultNtB12_19CompositeDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3P_B2F_EENCNvXsg_B12_NtB12_19SimpleStructDecoderNtNtB18_7decoder18LogicalPageDecoder5drain0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter7IterMutB10_EB4E_EIB2k_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7Q_12try_for_each4callB2F_B4t_NcNtB4t_5Break0E0B4t_E0E0B18_.exit.thread.i.i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateINtNtBa_6result6ResultNtB12_19CompositeDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3P_B2F_EENCNvXsg_B12_NtB12_19SimpleStructDecoderNtNtB18_7decoder18LogicalPageDecoder5drain0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter7IterMutB10_EB4E_EIB2k_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7Q_12try_for_each4callB2F_B4t_NcNtB4t_5Break0E0B4t_E0E0B18_.exit.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateINtNtBa_6result6ResultNtB12_19CompositeDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3P_B2F_EENCNvXsg_B12_NtB12_19SimpleStructDecoderNtNtB18_7decoder18LogicalPageDecoder5drain0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter7IterMutB10_EB4E_EIB2k_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7Q_12try_for_each4callB2F_B4t_NcNtB4t_5Break0E0B4t_E0E0B18_.exit.thread.i.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          cleanup
  store i8 %i.bg, ptr %i.k, align 8, !alias.scope !60406, !noalias !60445
  %.sroa.519.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.519.0..8.val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i.i.i, i64 7, i1 false), !noalias !60446
  %.sroa.621.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bh, ptr %.sroa.621.0..8.val.sroa_idx.i.i.i.i.i, align 8, !alias.scope !60406, !noalias !60445
  %.sroa.724.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.431.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.724.0..8.val.sroa_idx.i.i.i.i.i, align 8, !alias.scope !60406, !noalias !60447
  %.sroa.8.sroa.6.0..sroa.724.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.431.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.8.sroa.6.0..sroa.724.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, align 8, !alias.scope !60406, !noalias !60447
  %.sroa.8.sroa.7.0..sroa.724.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.7.0..sroa.724.0..8.val.sroa_idx.i.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i, i64 16, i1 false), !noalias !60446
  %.sroa.826.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %.sroa.14.32.copyload.i.i.i.i, ptr %.sroa.826.0..8.val.sroa_idx.i.i.i.i.i, align 8, !alias.scope !60406, !noalias !60445
  br label %common.resume.i.i.i.i

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNvXsg_B1J_NtB1J_19SimpleStructDecoderNtNtB1P_7decoder18LogicalPageDecoder5drain0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callNtB1J_19CompositeDecodeTaskINtNtNtB7_3ops12control_flow11ControlFlowB73_ENcNtB7u_5Break0E0B7u_EB1P_.exit.thread17: ; preds = %bb.al, %bb.am
  store i8 %i.bg, ptr %i.k, align 8, !alias.scope !60406, !noalias !60445
  %.sroa.519.0..8.val.sroa_idx20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.519.0..8.val.sroa_idx20.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i.i.i, i64 7, i1 false), !noalias !60446
  %.sroa.621.0..8.val.sroa_idx22.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bh, ptr %.sroa.621.0..8.val.sroa_idx22.i.i.i.i.i, align 8, !alias.scope !60406, !noalias !60445
  %.sroa.724.0..8.val.sroa_idx25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.431.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.724.0..8.val.sroa_idx25.i.i.i.i.i, align 8, !alias.scope !60406, !noalias !60447
  %.sroa.8.sroa.6.0..sroa.724.0..8.val.sroa_idx25.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.431.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.8.sroa.6.0..sroa.724.0..8.val.sroa_idx25.i.sroa_idx.i.i.i.i, align 8, !alias.scope !60406, !noalias !60447
  %.sroa.8.sroa.7.0..sroa.724.0..8.val.sroa_idx25.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.7.0..sroa.724.0..8.val.sroa_idx25.i.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i, i64 16, i1 false), !noalias !60446
  %.sroa.826.0..8.val.sroa_idx27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %.sroa.14.32.copyload.i.i.i.i, ptr %.sroa.826.0..8.val.sroa_idx27.i.i.i.i.i, align 8, !alias.scope !60406, !noalias !60445
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct19CompositeDecodeTaskEEB1o_.exit

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateINtNtBa_6result6ResultNtB12_19CompositeDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3P_B2F_EENCNvXsg_B12_NtB12_19SimpleStructDecoderNtNtB18_7decoder18LogicalPageDecoder5drain0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter7IterMutB10_EB4E_EIB2k_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7Q_12try_for_each4callB2F_B4t_NcNtB4t_5Break0E0B4t_E0E0B18_.exit.i.i.i: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i, i64 16, i1 false), !noalias !60448
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  %.not.i.i.i.i = icmp eq i64 %.sroa.7.8.copyload.i.i.i.i, -2
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateINtNtBa_6result6ResultNtB12_19CompositeDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3P_B2F_EENCNvXsg_B12_NtB12_19SimpleStructDecoderNtNtB18_7decoder18LogicalPageDecoder5drain0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter7IterMutB10_EB4E_EIB2k_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7Q_12try_for_each4callB2F_B4t_NcNtB4t_5Break0E0B4t_E0E0B18_.exit.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateINtNtBa_6result6ResultNtB12_19CompositeDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3P_B2F_EENCNvXsg_B12_NtB12_19SimpleStructDecoderNtNtB18_7decoder18LogicalPageDecoder5drain0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter7IterMutB10_EB4E_EIB2k_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7Q_12try_for_each4callB2F_B4t_NcNtB4t_5Break0E0B4t_E0E0B18_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.ea = icmp eq ptr %i.v, %i.n
  br i1 %i.ea, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct19CompositeDecodeTaskEEB1o_.exit, label %bb.b

bb.aq:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldQNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateINtNtBa_6result6ResultNtB12_19CompositeDecodeTaskNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3P_B2F_EENCNvXsg_B12_NtB12_19SimpleStructDecoderNtNtB18_7decoder18LogicalPageDecoder5drain0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter7IterMutB10_EB4E_EIB2k_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7Q_12try_for_each4callB2F_B4t_NcNtB4t_5Break0E0B4t_E0E0B18_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !60403
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false)
  store i64 %.sroa.7.8.copyload.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.8.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.8.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct19CompositeDecodeTaskEEB1o_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct19CompositeDecodeTaskEEB1o_.exit: ; preds = %bb.ap, %bb.a, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNvXsg_B1J_NtB1J_19SimpleStructDecoderNtNtB1P_7decoder18LogicalPageDecoder5drain0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callNtB1J_19CompositeDecodeTaskINtNtNtB7_3ops12control_flow11ControlFlowB73_ENcNtB7u_5Break0E0B7u_EB1P_.exit.thread17
  store i64 -1, ptr %0, align 8
  br label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive12PageLoadTaskENCNvXsD_B23_NtB23_37StructuralPrimitiveFieldSchedulingJobNtNtB29_7decoder23StructuralSchedulingJob13schedule_next0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB29_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60610)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !60611, !noalias !60612, !nonnull !75, !noundef !75
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !60611, !noalias !60612, !nonnull !75, !noundef !75 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineEEB1k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.08.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !noalias !60613 ; 7 uses
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.59.0.copyload.i.i.i = load ptr, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !noalias !60613 ; 8 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !60613
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !60611, !noalias !60612
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !60614, !noalias !60615, !nonnull !75, !align !95, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60617
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !60616, !noalias !60618, !noundef !75 ; 8 uses
  %i.k = shl i64 %i.j, 2                          ; 4 uses
  %i.l = icmp ugt i64 %i.j, 4611686018427387903
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.k, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.l, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.e, label %bb.c, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !60619
  %i.n = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 17) 4) #63, !noalias !60619 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 4, %bb.d ], [ 0, %bb.b ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.k) #66
          to label %.noexc.i.i.i.i.i unwind label %bb.aa, !noalias !60620

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.c ], [ %i.n, %bb.d ]
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.j, %bb.d ] ; 8 uses
  %i.p = icmp samesign ule i64 %i.j, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !60617
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !60617
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !60617
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i, align 8, !alias.scope !60621, !noalias !60622 ; 4 uses
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !60621, !noalias !60622 ; 2 uses
  %.not.i.i2.i.i.i.i.i.i = icmp ult i64 %.val2.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %i.v = select i1 %.not.i.i2.i.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i = sub nuw i64 %.val2.i.i.i.i.i.i.i, %i.v ; 4 uses
  %i.w = sub i64 %.val.i.i.i.i.i.i.i, %.sroa.04.0.i.i.i.i.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i.i.i.i = icmp ult i64 %i.w, %i.j
  br i1 %.not11.i.i.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = sub nuw nsw i64 %i.j, %i.w
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.y = add i64 %.sroa.04.0.i.i.i.i.i.i.i.i, %i.j
  br label %bb.k

bb.i:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !60617 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.aa, label %.thread4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !60617, !nonnull !75, !noundef !75
  %i.ab = shl nuw i64 %.val.i.i.i.i.i.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 4) #63, !noalias !60617
  br label %.thread4.i.i.i.i.i

bb.k:                                             ; preds = %bb.h, %bb.g, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.04.0.i.i.i.i.i.i.i.i, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %.val.i.i.i.i.i.i.i, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.11.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.x, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !60621, !noalias !60622, !nonnull !75, !noundef !75 ; 19 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %.idx8.i.i.i.i.i.i = shl i64 %.sroa.0.0.i.i.i.i.i.i.i, 2 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx8.i.i.i.i.i.i ; 11 uses
  %.idx.i.i.i.i.i.i = shl i64 %.sroa.5.0.i.i.i.i.i.i.i, 2 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i ; 3 uses
  %.idx10.i.i.i.i.i.i = shl i64 %.sroa.11.0.i.i.i.i.i.i.i, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx10.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60623)
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub nuw nsw i64 %.sroa.5.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 10 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = add nuw nsw i64 %.sroa.11.0.i.i.i.i.i.i.i, %i.aj ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60624)
  %i.am = icmp samesign ugt i64 %i.al, %.sroa.4.0.i.i.i.i.i.i.i
  br i1 %i.am, label %bb.p, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.p
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !76, !alias.scope !60625, !noalias !60626 ; 5 uses
  %.pre7.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !60625, !noalias !60626 ; 5 uses
  %.pre8.i.i.i.i.i.i.i.i = sub i64 %.sroa.4.0.i.i.i.i.i.i.i, %.pre7.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60627)
  %i.an = load i64, ptr %i.q, align 8, !alias.scope !60625, !noalias !60626, !noundef !75 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.an, %.pre8.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.m, label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = sub i64 %.sroa.4.0.i.i.i.i.i.i.i, %i.an ; 4 uses
  %i.ap = sub i64 %.pre7.i.i.i.i.i.i.i.i, %i.ao   ; 3 uses
  %i.aq = icmp ule i64 %i.ao, %i.ap
  %i.ar = sub nsw i64 %.pre.i.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  %.not2.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ar, %i.ap
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.aq, i1 true, i1 %.not2.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = sub i64 %.pre.i.i.i.i.i.i.i.i, %i.ao    ; 3 uses
  %i.at = load ptr, ptr %i.s, align 8, !alias.scope !60625, !noalias !60626, !nonnull !75, !noundef !75 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.an
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  %i.aw = shl i64 %i.ao, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull align 4 %i.au, i64 %i.aw, i1 false), !noalias !60628
  store i64 %i.as, ptr %i.q, align 8, !alias.scope !60625, !noalias !60626
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.s, align 8, !alias.scope !60625, !noalias !60626, !nonnull !75, !noundef !75 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.4.0.i.i.i.i.i.i.i
  %i.az = shl i64 %i.ap, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr nonnull align 4 %i.ax, i64 %i.az, i1 false), !noalias !60628
  br label %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.al, i64 noundef 4, i64 noundef 4)
          to label %bb.l unwind label %bb.i, !noalias !60617

_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %i.ba = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.o ], [ %.pre.i.i.i.i.i.i.i.i, %bb.l ], [ %.pre.i.i.i.i.i.i.i.i, %bb.n ], [ %.sroa.4.0.i.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.bb = phi i64 [ %i.an, %bb.o ], [ %i.an, %bb.l ], [ %i.as, %bb.n ], [ 0, %bb.k ] ; 3 uses
  %i.bc = phi i64 [ %.pre7.i.i.i.i.i.i.i.i, %bb.o ], [ %.pre7.i.i.i.i.i.i.i.i, %bb.l ], [ %.pre7.i.i.i.i.i.i.i.i, %bb.n ], [ 0, %bb.k ] ; 4 uses
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bd, %i.ba
  %i.be = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.ba ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bd, %i.be ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60629)
  %i.bf = sub i64 %i.ba, %.sroa.02.0.i.i.i.i.i.i.i ; 8 uses
  %.not.i.i3.i.i.i.i.i.i = icmp ult i64 %i.bf, %i.al
  br i1 %.not.i.i3.i.i.i.i.i.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60631, !nonnull !75 ; 3 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.bh, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 4 uses
  %i.bk = sub i64 %.idx.i.i.i.i.i.i, %.idx8.i.i.i.i.i.i
  %i.bl = lshr exact i64 %i.bk, 2
  %i.bm = add i64 %i.be, %i.ba
  %i.bn = xor i64 %i.bc, -1
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = sub i64 %i.bo, %i.bb
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bp) ; 3 uses
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check85 = icmp samesign ult i64 %i.bq, 12
  br i1 %min.iters.check85, label %scalar.ph84, label %vector.memcheck82

vector.memcheck82:                                ; preds = %bb.r
  %2 = ptrtoaddr ptr %i.bh to i64
  %i.bs = shl i64 %.sroa.02.0.i.i.i.i.i.i.i, 2
  %3 = ptrtoaddr ptr %i.ad to i64
  %i.bt = add i64 %i.bs, %2
  %i.bu = add i64 %.idx8.i.i.i.i.i.i, %3
  %i.bv = sub i64 %i.bu, %i.bt
  %diff.check83 = icmp ugt i64 %i.bv, -32
  br i1 %diff.check83, label %scalar.ph84, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck82
  %i.bw = and i64 %i.br, 7                        ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = select i1 %i.bx, i64 8, i64 %i.bw
  %n.vec87 = sub nsw i64 %i.br, %i.by             ; 4 uses
  %i.bz = sub i64 %i.bf, %n.vec87
  %i.ca = shl i64 %n.vec87, 2
  %i.cb = getelementptr i8, ptr %i.af, i64 %i.ca
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 3 uses
  %i.cc = shl i64 %index89, 2
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load90 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !60632, !noalias !60633
  %wide.load91 = load <4 x i32>, ptr %i.cd, align 4, !alias.scope !60632, !noalias !60633
  %i.ce = getelementptr [4 x i8], ptr %i.bj, i64 %index89 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  store <4 x i32> %wide.load90, ptr %i.ce, align 4, !noalias !60634
  store <4 x i32> %wide.load91, ptr %i.cf, align 4, !noalias !60634
  %index.next92 = add nuw i64 %index89, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.cg, label %scalar.ph84, label %vector.body88, !llvm.loop !60513

scalar.ph84:                                      ; preds = %vector.body88, %vector.memcheck82, %bb.r
  %bc.resume.val94 = phi i64 [ 0, %vector.memcheck82 ], [ 0, %bb.r ], [ %n.vec87, %vector.body88 ] ; 2 uses
  %bc.resume.val95 = phi i64 [ %i.bf, %vector.memcheck82 ], [ %i.bf, %bb.r ], [ %i.bz, %vector.body88 ]
  %bc.resume.val96 = phi ptr [ %i.af, %vector.memcheck82 ], [ %i.af, %bb.r ], [ %i.cb, %vector.body88 ]
  br label %bb.s

bb.s:                                             ; preds = %scalar.ph84, %bb.t
  %indvar = phi i64 [ 0, %scalar.ph84 ], [ %indvar.next, %bb.t ] ; 2 uses
  %.sroa.8.1.i.i.i.i.i.i.i.i = phi i64 [ %bc.resume.val94, %scalar.ph84 ], [ %i.do, %bb.t ] ; 6 uses
  %i.ch = phi i64 [ %bc.resume.val95, %scalar.ph84 ], [ %i.dm, %bb.t ] ; 4 uses
  %i.ci = phi ptr [ %bc.resume.val96, %scalar.ph84 ], [ %i.dl, %bb.t ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.ag
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %bb.t

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.s
  %i.cj = and i64 %.sroa.11.0.i.i.i.i.i.i.i, 4611686018427387903
  %i.ck = add i64 %i.be, %i.ba
  %i.cl = xor i64 %i.bc, -1
  %i.cm = add i64 %i.ck, %i.cl
  %i.cn = add i64 %i.bb, %i.bq
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.co) ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check100 = icmp samesign ult i64 %i.cp, 16
  br i1 %min.iters.check100, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader144, label %vector.memcheck97

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader144: ; preds = %vector.body103, %vector.memcheck97, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.9.1.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck97 ], [ %i.ad, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dc, %vector.body103 ]
  %.sroa.8.2.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.8.1.i.i.i.i.i.i.i.i, %vector.memcheck97 ], [ %.sroa.8.1.i.i.i.i.i.i.i.i, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dd, %vector.body103 ]
  %.ph145 = phi i64 [ %i.ch, %vector.memcheck97 ], [ %i.ch, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.de, %vector.body103 ]
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

vector.memcheck97:                                ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.cr = add i64 %bc.resume.val94, %.sroa.02.0.i.i.i.i.i.i.i
  %i.cs = shl i64 %i.cr, 2
  %i.ct = add i64 %i.cs, %i.bi
  %i.cu = sub i64 %i.ct, %i.ae
  %i.cv = shl i64 %indvar, 2
  %i.cw = add i64 %i.cv, %i.cu
  %i.cx = add i64 %i.cw, -1
  %diff.check98 = icmp ult i64 %i.cx, 31
  br i1 %diff.check98, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader144, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck97
  %i.cy = and i64 %i.cq, 7                        ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = select i1 %i.cz, i64 8, i64 %i.cy
  %n.vec102 = sub nsw i64 %i.cq, %i.da            ; 4 uses
  %i.db = shl i64 %n.vec102, 2
  %i.dc = getelementptr i8, ptr %i.ad, i64 %i.db
  %i.dd = add i64 %.sroa.8.1.i.i.i.i.i.i.i.i, %n.vec102
  %i.de = sub i64 %i.ch, %n.vec102
  %i.df = getelementptr [4 x i8], ptr %i.bj, i64 %.sroa.8.1.i.i.i.i.i.i.i.i
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next108, %vector.body103 ] ; 3 uses
  %i.dg = shl i64 %index104, 2
  %next.gep105 = getelementptr i8, ptr %i.ad, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load106 = load <4 x i32>, ptr %next.gep105, align 4, !alias.scope !60635, !noalias !60636
  %wide.load107 = load <4 x i32>, ptr %i.dh, align 4, !alias.scope !60635, !noalias !60636
  %i.di = getelementptr [4 x i8], ptr %i.df, i64 %index104 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store <4 x i32> %wide.load106, ptr %i.di, align 4, !noalias !60637
  store <4 x i32> %wide.load107, ptr %i.dj, align 4, !noalias !60637
  %index.next108 = add nuw i64 %index104, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next108, %n.vec102
  br i1 %i.dk, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader144, label %vector.body103, !llvm.loop !60531

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ci, align 4, !alias.scope !60632, !noalias !60633, !noundef !75
  %i.dm = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %i.bj, i64 %.sroa.8.1.i.i.i.i.i.i.i.i
  store i32 %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dn, align 4, !noalias !60634
  %i.do = add nuw nsw i64 %.sroa.8.1.i.i.i.i.i.i.i.i, 1
  %i.dp = icmp eq i64 %i.dm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dp, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.s, !llvm.loop !60532

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader144, %bb.u
  %.sroa.9.1.i.i.i.i.i.i.i = phi ptr [ %i.dr, %bb.u ], [ %.sroa.9.1.i.i.i.i.i.i.i.ph, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader144 ] ; 3 uses
  %.sroa.8.2.i.i.i.i.i.i.i.i = phi i64 [ %i.du, %bb.u ], [ %.sroa.8.2.i.i.i.i.i.i.i.i.ph, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader144 ] ; 3 uses
  %i.dq = phi i64 [ %i.ds, %bb.u ], [ %.ph145, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader144 ]
  %.not.not.not.i5.not.not.i.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.9.1.i.i.i.i.i.i.i, %i.ah
  br i1 %.not.not.not.i5.not.not.i.not.i.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.val6.i6.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.9.1.i.i.i.i.i.i.i, align 4, !alias.scope !60635, !noalias !60636, !noundef !75
  %i.ds = add nsw i64 %i.dq, -1                   ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.bj, i64 %.sroa.8.2.i.i.i.i.i.i.i.i
  store i32 %.val6.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dt, align 4, !noalias !60637
  %i.du = add nuw nsw i64 %.sroa.8.2.i.i.i.i.i.i.i.i, 1
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !60533

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.t, %bb.q
  %.sroa.062.0.copyload.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.q ], [ %i.dl, %bb.t ] ; 8 uses
  %i.dw = icmp eq ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, %i.ag
  br i1 %i.dw, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.dx = ptrtoint ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.dy = sub nuw i64 %i.ai, %i.dx                ; 2 uses
  %i.dz = lshr i64 %i.dy, 2                       ; 7 uses
  %i.ea = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60638, !nonnull !75, !noundef !75 ; 7 uses
  %min.iters.check116 = icmp ult i64 %i.dy, 32
  %i.eb = ptrtoaddr ptr %i.ea to i64
  %i.ec = sub i64 %i.dx, %i.eb
  %diff.check114 = icmp ugt i64 %i.ec, -32
  %or.cond = or i1 %min.iters.check116, %diff.check114
  br i1 %or.cond, label %scalar.ph115.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %bb.v
  %n.vec118 = and i64 %i.dz, 4611686018427387896  ; 3 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next123, %vector.body119 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %index120 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load121 = load <4 x i32>, ptr %i.ed, align 4, !alias.scope !60639, !noalias !60640
  %wide.load122 = load <4 x i32>, ptr %i.ee, align 4, !alias.scope !60639, !noalias !60640
  %i.ef = getelementptr [4 x i8], ptr %i.ea, i64 %index120 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  store <4 x i32> %wide.load121, ptr %i.ef, align 4, !noalias !60641
  store <4 x i32> %wide.load122, ptr %i.eg, align 4, !noalias !60641
  %index.next123 = add nuw i64 %index120, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next123, %n.vec118
  br i1 %i.eh, label %middle.block124, label %vector.body119, !llvm.loop !60552

middle.block124:                                  ; preds = %vector.body119
  %cmp.n125 = icmp eq i64 %i.dz, %n.vec118
  br i1 %cmp.n125, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %bb.v, %middle.block124
  %.ph143 = phi i64 [ 0, %bb.v ], [ %n.vec118, %middle.block124 ] ; 3 uses
  %xtraiter157 = and i64 %i.dz, 3                 ; 2 uses
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %scalar.ph115.prol.loopexit, label %scalar.ph115.prol

scalar.ph115.prol:                                ; preds = %scalar.ph115.preheader, %scalar.ph115.prol
  %i.ei = phi i64 [ %i.el, %scalar.ph115.prol ], [ %.ph143, %scalar.ph115.preheader ] ; 3 uses
  %prol.iter159 = phi i64 [ %prol.iter159.next, %scalar.ph115.prol ], [ 0, %scalar.ph115.preheader ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.ei
  %.val10.i.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.ej, align 4, !alias.scope !60639, !noalias !60640, !noundef !75
  %i.ek = getelementptr [4 x i8], ptr %i.ea, i64 %i.ei
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.ek, align 4, !noalias !60641
  %i.el = add nuw i64 %i.ei, 1                    ; 2 uses
  %prol.iter159.next = add i64 %prol.iter159, 1   ; 2 uses
  %prol.iter159.cmp.not = icmp eq i64 %prol.iter159.next, %xtraiter157
  br i1 %prol.iter159.cmp.not, label %scalar.ph115.prol.loopexit, label %scalar.ph115.prol, !llvm.loop !60553

scalar.ph115.prol.loopexit:                       ; preds = %scalar.ph115.prol, %scalar.ph115.preheader
  %.unr160 = phi i64 [ %.ph143, %scalar.ph115.preheader ], [ %i.el, %scalar.ph115.prol ]
  %i.em = sub nsw i64 %.ph143, %i.dz
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph115

scalar.ph115:                                     ; preds = %scalar.ph115.prol.loopexit, %scalar.ph115
  %i.eo = phi i64 [ %i.fa, %scalar.ph115 ], [ %.unr160, %scalar.ph115.prol.loopexit ] ; 6 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.eo
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ep, align 4, !alias.scope !60639, !noalias !60640, !noundef !75
  %i.eq = getelementptr [4 x i8], ptr %i.ea, i64 %i.eo
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i, ptr %i.eq, align 4, !noalias !60641
  %i.er = add nuw i64 %i.eo, 1                    ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.er
  %.val10.i.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.es, align 4, !alias.scope !60639, !noalias !60640, !noundef !75
  %i.et = getelementptr [4 x i8], ptr %i.ea, i64 %i.er
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.et, align 4, !noalias !60641
  %i.eu = add nuw i64 %i.eo, 2                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.eu
  %.val10.i.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.ev, align 4, !alias.scope !60639, !noalias !60640, !noundef !75
  %i.ew = getelementptr [4 x i8], ptr %i.ea, i64 %i.eu
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i.2, ptr %i.ew, align 4, !noalias !60641
  %i.ex = add nuw i64 %i.eo, 3                    ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.062.0.copyload.i.i.i.i.i.i.i.i, i64 %i.ex
  %.val10.i.i.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.ey, align 4, !alias.scope !60639, !noalias !60640, !noundef !75
  %i.ez = getelementptr [4 x i8], ptr %i.ea, i64 %i.ex
  store i32 %.val10.i.i.i.i.i.i.i.i.i.i.i.3, ptr %i.ez, align 4, !noalias !60641
  %i.fa = add nuw i64 %i.eo, 4                    ; 2 uses
  %i.fb = icmp eq i64 %i.fa, %i.dz
  br i1 %i.fb, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph115, !llvm.loop !60554

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i: ; preds = %scalar.ph115.prol.loopexit, %scalar.ph115, %middle.block124
  %i.fc = add i64 %i.dz, %i.bf
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.9.0.i45.i.i.i.i.i.i = phi ptr [ %i.ad, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.ad, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i ], [ %i.dr, %bb.u ] ; 8 uses
  %.sroa.8.5.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.fc, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.u ] ; 2 uses
  %.sroa.9.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.dz, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.loopexit.i.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 5 uses
  %i.fd = icmp eq ptr %.sroa.9.0.i45.i.i.i.i.i.i, %i.ah
  br i1 %i.fd, label %.loopexit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i
  %i.fe = ptrtoint ptr %.sroa.9.0.i45.i.i.i.i.i.i to i64 ; 2 uses
  %i.ff = sub nuw i64 %i.ak, %i.fe                ; 2 uses
  %i.fg = lshr i64 %i.ff, 2                       ; 6 uses
  %i.fh = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60642, !nonnull !75, !noundef !75 ; 7 uses
  %min.iters.check130 = icmp ult i64 %i.ff, 48
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %bb.w
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = shl nuw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, 2
  %i.fk = add i64 %i.fj, %i.fi
  %i.fl = sub i64 %i.fe, %i.fk
  %diff.check128 = icmp ugt i64 %i.fl, -32
  br i1 %diff.check128, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %vector.memcheck127
  %n.vec132 = and i64 %i.fg, 4611686018427387896  ; 4 uses
  %i.fm = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i, %n.vec132
  %i.fn = getelementptr [4 x i8], ptr %i.fh, i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body133 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %index134 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load135 = load <4 x i32>, ptr %i.fo, align 4, !alias.scope !60643, !noalias !60644
  %wide.load136 = load <4 x i32>, ptr %i.fp, align 4, !alias.scope !60643, !noalias !60644
  %i.fq = getelementptr [4 x i8], ptr %i.fn, i64 %index134 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store <4 x i32> %wide.load135, ptr %i.fq, align 4, !noalias !60645
  store <4 x i32> %wide.load136, ptr %i.fr, align 4, !noalias !60645
  %index.next137 = add nuw i64 %index134, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.fs, label %middle.block138, label %vector.body133, !llvm.loop !60567

middle.block138:                                  ; preds = %vector.body133
  %cmp.n139 = icmp eq i64 %i.fg, %n.vec132
  br i1 %cmp.n139, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck127, %bb.w, %middle.block138
  %.ph = phi i64 [ %.sroa.9.0.i.i.i.i.i.i.i.i.i, %vector.memcheck127 ], [ %.sroa.9.0.i.i.i.i.i.i.i.i.i, %bb.w ], [ %i.fm, %middle.block138 ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %bb.w ], [ %n.vec132, %middle.block138 ] ; 3 uses
  %xtraiter161 = and i64 %i.fg, 3                 ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %i.ft = phi i64 [ %i.fw, %scalar.ph129.prol ], [ %.ph, %scalar.ph129.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fx, %scalar.ph129.prol ], [ %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph129.preheader ] ; 2 uses
  %prol.iter163 = phi i64 [ %prol.iter163.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.prol
  %.val10.i3.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.fu, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.fv = getelementptr [4 x i8], ptr %i.fh, i64 %i.ft
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.fv, align 4, !noalias !60645
  %i.fw = add i64 %i.ft, 1                        ; 2 uses
  %i.fx = add nuw i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter163.next = add i64 %prol.iter163, 1   ; 2 uses
  %prol.iter163.cmp.not = icmp eq i64 %prol.iter163.next, %xtraiter161
  br i1 %prol.iter163.cmp.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol, !llvm.loop !60568

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %.unr164 = phi i64 [ %.ph, %scalar.ph129.preheader ], [ %i.fw, %scalar.ph129.prol ]
  %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph129.preheader ], [ %i.fx, %scalar.ph129.prol ]
  %i.fy = sub nsw i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.ph, %i.fg
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %i.ga = phi i64 [ %i.gp, %scalar.ph129 ], [ %.unr164, %scalar.ph129.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %scalar.ph129 ], [ %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph129.prol.loopexit ] ; 5 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i
  %.val10.i3.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.gb, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.gc = getelementptr [4 x i8], ptr %i.fh, i64 %i.ga
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i, ptr %i.gc, align 4, !noalias !60645
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %.val10.i3.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.ge, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.gf = getelementptr [4 x i8], ptr %i.fh, i64 %i.ga
  %i.gg = getelementptr i8, ptr %i.gf, i64 4
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i.1, ptr %i.gg, align 4, !noalias !60645
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.val10.i3.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.gi, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.gj = getelementptr [4 x i8], ptr %i.fh, i64 %i.ga
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i.2, ptr %i.gk, align 4, !noalias !60645
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.i45.i.i.i.i.i.i, i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %.val10.i3.i.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.gm, align 4, !alias.scope !60643, !noalias !60644, !noundef !75
  %i.gn = getelementptr [4 x i8], ptr %i.fh, i64 %i.ga
  %i.go = getelementptr i8, ptr %i.gn, i64 12
  store i32 %.val10.i3.i.i.i.i.i.i.i.i.i.i.3, ptr %i.go, align 4, !noalias !60645
  %i.gp = add i64 %i.ga, 4
  %i.gq = add nuw i64 %.sroa.01.0.i2.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, %i.fg
  br i1 %i.gr, label %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, label %scalar.ph129, !llvm.loop !60569

_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %middle.block138
  %i.gs = add i64 %i.fg, %.sroa.8.5.i.i.i.i.i.i.i.i
  br label %.loopexit.i.i.i.i.i

bb.x:                                             ; preds = %_RNvMs3_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB5_8VecDequemE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i
  %i.gt = icmp samesign eq i64 %.idx8.i.i.i.i.i.i, %.idx.i.i.i.i.i.i
  br i1 %i.gt, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gu = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60646, !nonnull !75, !noundef !75 ; 2 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.aj, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.y
  %i.gw = ptrtoaddr ptr %i.gu to i64
  %i.gx = shl i64 %.sroa.02.0.i.i.i.i.i.i.i, 2
  %4 = ptrtoaddr ptr %i.ad to i64
  %i.gy = add i64 %i.gx, %i.gw
  %i.gz = add i64 %.idx8.i.i.i.i.i.i, %4
  %i.ha = sub i64 %i.gz, %i.gy
  %diff.check = icmp ugt i64 %i.ha, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load = load <4 x i32>, ptr %i.hb, align 4, !alias.scope !60647, !noalias !60648
  %wide.load66 = load <4 x i32>, ptr %i.hc, align 4, !alias.scope !60647, !noalias !60648
  %i.hd = getelementptr [4 x i8], ptr %i.gv, i64 %index ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  store <4 x i32> %wide.load, ptr %i.hd, align 4, !noalias !60649
  store <4 x i32> %wide.load66, ptr %i.he, align 4, !noalias !60649
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !60588

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.y, %middle.block
  %.sroa.8.8.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.y ], [ %n.vec, %middle.block ] ; 3 uses
  %i.hg = sub i64 %.sroa.5.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.hg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.8.8.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hj, %scalar.ph.prol ], [ %.sroa.8.8.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.hh, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hi = getelementptr [4 x i8], ptr %i.gv, i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.prol, ptr %i.hi, align 4, !noalias !60649
  %i.hj = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !60589

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.8.8.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.8.8.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.hj, %scalar.ph.prol ]
  %i.hk = sub i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i
  %i.hl = add i64 %i.hk, %.sroa.8.8.i.i.i.i.i.i.i.i.ph
  %i.hm = icmp ugt i64 %i.hl, -4
  br i1 %i.hm, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.8.8.i.i.i.i.i.i.i.i = phi i64 [ %i.hy, %scalar.ph ], [ %.sroa.8.8.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.8.8.i.i.i.i.i.i.i.i
  %.val10.i.i.i38.i.i.i.i.i.i.i.i = load i32, ptr %i.hn, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.ho = getelementptr [4 x i8], ptr %i.gv, i64 %.sroa.8.8.i.i.i.i.i.i.i.i
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i, ptr %i.ho, align 4, !noalias !60649
  %i.hp = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hp
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.hq, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hr = getelementptr [4 x i8], ptr %i.gv, i64 %i.hp
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.1, ptr %i.hr, align 4, !noalias !60649
  %i.hs = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hs
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.ht, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hu = getelementptr [4 x i8], ptr %i.gv, i64 %i.hs
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.2, ptr %i.hu, align 4, !noalias !60649
  %i.hv = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hv
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.hw, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hx = getelementptr [4 x i8], ptr %i.gv, i64 %i.hv
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.3, ptr %i.hx, align 4, !noalias !60649
  %i.hy = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, %i.aj
  br i1 %i.hz, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !60590

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.x
  %i.ia = icmp eq i64 %.sroa.11.0.i.i.i.i.i.i.i, 0
  br i1 %i.ia, label %.loopexit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i
  %i.ib = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60650, !nonnull !75, !noundef !75 ; 2 uses
  %i.ic = getelementptr [4 x i8], ptr %i.ib, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 6 uses
  %min.iters.check70 = icmp ult i64 %.sroa.11.0.i.i.i.i.i.i.i, 16
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %bb.z
  %i.id = ptrtoaddr ptr %i.ib to i64
  %5 = shl i64 %.sroa.02.0.i.i.i.i.i.i.i, 2
  %6 = ptrtoaddr ptr %i.ad to i64
  %7 = add i64 %.idx.i.i.i.i.i.i, %i.id
  %i.ie = add i64 %7, %5
  %i.if = add i64 %.idx8.i.i.i.i.i.i, %6
  %i.ig = sub i64 %i.if, %i.ie
  %diff.check68 = icmp ugt i64 %i.ig, -32
  br i1 %diff.check68, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck67
  %n.vec72 = and i64 %.sroa.11.0.i.i.i.i.i.i.i, -8 ; 4 uses
  %i.ih = add i64 %i.aj, %n.vec72
  %i.ii = getelementptr [4 x i8], ptr %i.ic, i64 %i.aj
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body73 ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index74 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load75 = load <4 x i32>, ptr %i.ij, align 4, !alias.scope !60651, !noalias !60652
  %wide.load76 = load <4 x i32>, ptr %i.ik, align 4, !alias.scope !60651, !noalias !60652
  %i.il = getelementptr [4 x i8], ptr %i.ii, i64 %index74 ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16
  store <4 x i32> %wide.load75, ptr %i.il, align 4, !noalias !60653
  store <4 x i32> %wide.load76, ptr %i.im, align 4, !noalias !60653
  %index.next77 = add nuw i64 %index74, 8         ; 2 uses
  %i.in = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.in, label %middle.block78, label %vector.body73, !llvm.loop !60603

middle.block78:                                   ; preds = %vector.body73
  %cmp.n79 = icmp eq i64 %.sroa.11.0.i.i.i.i.i.i.i, %n.vec72
  br i1 %cmp.n79, label %.loopexit.i.i.i.i.i, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %vector.memcheck67, %bb.z, %middle.block78
  %.ph152 = phi i64 [ %i.aj, %vector.memcheck67 ], [ %i.aj, %bb.z ], [ %i.ih, %middle.block78 ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck67 ], [ 0, %bb.z ], [ %n.vec72, %middle.block78 ] ; 3 uses
  %xtraiter154 = and i64 %.sroa.11.0.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %scalar.ph69.prol.loopexit, label %scalar.ph69.prol

scalar.ph69.prol:                                 ; preds = %scalar.ph69.preheader, %scalar.ph69.prol
  %i.io = phi i64 [ %i.ir, %scalar.ph69.prol ], [ %.ph152, %scalar.ph69.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.is, %scalar.ph69.prol ], [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %scalar.ph69.preheader ] ; 2 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %scalar.ph69.prol ], [ 0, %scalar.ph69.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.ip, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.iq = getelementptr [4 x i8], ptr %i.ic, i64 %i.io
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.prol, ptr %i.iq, align 4, !noalias !60653
  %i.ir = add i64 %i.io, 1                        ; 2 uses
  %i.is = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %scalar.ph69.prol.loopexit, label %scalar.ph69.prol, !llvm.loop !60604

scalar.ph69.prol.loopexit:                        ; preds = %scalar.ph69.prol, %scalar.ph69.preheader
  %.unr = phi i64 [ %.ph152, %scalar.ph69.preheader ], [ %i.ir, %scalar.ph69.prol ]
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %scalar.ph69.preheader ], [ %i.is, %scalar.ph69.prol ]
  %i.it = sub nsw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %.sroa.11.0.i.i.i.i.i.i.i
  %i.iu = icmp ugt i64 %i.it, -4
  br i1 %i.iu, label %.loopexit.i.i.i.i.i, label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69
  %i.iv = phi i64 [ %i.jk, %scalar.ph69 ], [ %.unr, %scalar.ph69.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i = phi i64 [ %i.jl, %scalar.ph69 ], [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.unr, %scalar.ph69.prol.loopexit ] ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i = load i32, ptr %i.iw, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.ix = getelementptr [4 x i8], ptr %i.ic, i64 %i.iv
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i, ptr %i.ix, align 4, !noalias !60653
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.iz, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.ja = getelementptr [4 x i8], ptr %i.ic, i64 %i.iv
  %i.jb = getelementptr i8, ptr %i.ja, i64 4
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.1, ptr %i.jb, align 4, !noalias !60653
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.jd, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.je = getelementptr [4 x i8], ptr %i.ic, i64 %i.iv
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.2, ptr %i.jf, align 4, !noalias !60653
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.jh, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.ji = getelementptr [4 x i8], ptr %i.ic, i64 %i.iv
  %i.jj = getelementptr i8, ptr %i.ji, i64 12
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.3, ptr %i.jj, align 4, !noalias !60653
  %i.jk = add i64 %i.iv, 4
  %i.jl = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, %.sroa.11.0.i.i.i.i.i.i.i
  br i1 %i.jm, label %.loopexit.i.i.i.i.i, label %scalar.ph69, !llvm.loop !60605

bb.aa:                                            ; preds = %bb.e
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.thread4.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block78, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.gs, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.8.5.i.i.i.i.i.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i ], [ %i.al, %middle.block78 ], [ %.sroa.8.2.i.i.i.i.i.i.i.i, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.al, %scalar.ph69 ], [ %i.al, %scalar.ph69.prol.loopexit ]
  %i.jo = add i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %i.bc
  store i64 %i.jo, ptr %i.r, align 8, !alias.scope !60630, !noalias !60631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !60620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60617
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.59.0.copyload.i.i.i) ]
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.08.0.copyload.i.i.i, ptr %i.jp, align 8, !noalias !60620
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.59.0.copyload.i.i.i, ptr %i.jq, align 8, !noalias !60620
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.jr, align 8, !noalias !60620
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !60654
  %i.js = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !60654 ; 4 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.ab, label %bb.ae, !prof !77

bb.ab:                                            ; preds = %.loopexit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #66
          to label %.noexc14.i.i.i.i.i unwind label %bb.ac, !noalias !60620

.noexc14.i.i.i.i.i:                               ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtBL_37StructuralPrimitiveFieldSchedulingJobNtNtBR_7decoder23StructuralSchedulingJob13schedule_next00EBR_(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #67
          to label %.thread.i.i.i.i.i unwind label %bb.ad, !noalias !60620

bb.ad:                                            ; preds = %bb.ac
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !60620
  unreachable

bb.ae:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.js, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !60620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60620
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !60620
  %i.jw = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !60620 ; 5 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.af, label %bb.al, !prof !77

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #66
          to label %.noexc15.i.i.i.i.i unwind label %bb.ag, !noalias !60620

.noexc15.i.i.i.i.i:                               ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder15LoadedPageShardNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2t_(ptr nonnull %i.js, ptr nonnull @1183) #67
          to label %.thread.i.i.i.i.i unwind label %bb.ah, !noalias !60620

bb.ah:                                            ; preds = %bb.ag
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.ak, %bb.ah
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !60620
  unreachable

.thread.i.i.i.i.i:                                ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.aj, %bb.ag, %bb.ac
  %.pn3.i.i.i.i.i = phi { ptr, i32 } [ %i.ju, %bb.ac ], [ %i.jy, %bb.ag ], [ %eh.lpad-body13.i.i.i.i.i, %bb.aj ], [ %eh.lpad-body13.i.i.i.i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i ]
  resume { ptr, i32 } %.pn3.i.i.i.i.i

.thread4.i.i.i.i.i:                               ; preds = %bb.aa, %bb.j, %bb.i
  %eh.lpad-body13.i.i.i.i.i = phi { ptr, i32 } [ %i.jn, %bb.aa ], [ %i.z, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.59.0.copyload.i.i.i) ], !noalias !60655
  %i.ka = load ptr, ptr %.sroa.59.0.copyload.i.i.i, align 8, !invariant.load !75, !noalias !60620 ; 2 uses
  %.not.i.i3.i.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i3.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread4.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i.i) ], !noalias !60655
  invoke void %i.ka(ptr noundef nonnull %.sroa.08.0.copyload.i.i.i)
          to label %bb.aj unwind label %bb.ak, !noalias !60620

bb.aj:                                            ; preds = %bb.ai, %.thread4.i.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.59.0.copyload.i.i.i, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !range !76, !invariant.load !75, !noalias !60620 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %.thread.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.59.0.copyload.i.i.i, i64 16
  %i.kf = load i64, ptr %i.ke, align 8, !range !93, !invariant.load !75, !noalias !60620
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i.i) ], !noalias !60655
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload.i.i.i, i64 noundef %i.kc, i64 noundef range(i64 1, -9223372036854775807) %i.kf) #63, !noalias !60620
  br label %.thread.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.59.0.copyload.i.i.i, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !range !76, !invariant.load !75, !noalias !60620 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %.body.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.ak
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.59.0.copyload.i.i.i, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !range !93, !invariant.load !75, !noalias !60620
end_hunk_3
begin_hunk_4_@_RNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB5_17BinaryPageDecoderNtNtBb_7decoder20PrimitivePageDecoder6decode:bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dm, %bb.aa ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.body53 unwind label %bb.ad, !noalias !65889

_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i: ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB1p_13BooleanBufferINtNtBa_7collect12FromIteratorbE9from_iterNtNtNtB1t_4util12bit_iterator11BitIteratorE0E0CsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %.sroa.0.0.copyload.i.pre.i = load i64, ptr %i.l, align 8, !alias.scope !65896, !noalias !65897
  %.sroa.4.0.copyload.i.pre.i = load i64, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !65896, !noalias !65897
  %.sroa.5.0.copyload.i.pre.i = load ptr, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !65896, !noalias !65897
  %.sroa.6.0.copyload.i.pre.i = load i64, ptr %.sroa.620.0..sroa_idx.i, align 8, !alias.scope !65896, !noalias !65897
  %.pre.i = load i64, ptr %i.bv, align 8, !alias.scope !65896, !noalias !65897
  br label %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.i

_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i
  %i.dh = phi i64 [ %.pre.i, %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ]
  %.sroa.6.0.copyload.i.i = phi i64 [ %.sroa.6.0.copyload.i.pre.i, %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i ], [ 0, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i, %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i ], [ %.sroa.01.0.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ] ; 2 uses
  %.sroa.4.0.copyload.i.i = phi i64 [ %.sroa.4.0.copyload.i.pre.i, %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i ], [ %.sroa.4.011.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ]
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.pre.i, %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i ], [ 128, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !65896)
  store i64 128, ptr %i.l, align 8, !alias.scope !65896, !noalias !65897
  store i64 0, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !65896, !noalias !65897
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !65896, !noalias !65897
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !65889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !65898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !65898
  store i64 1, ptr %i.j, align 8, !noalias !65898
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.di, align 8, !noalias !65898
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.dj, align 8, !noalias !65898
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !65898
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !65898
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !65898
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !65898
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !65899
  %i.dk = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !65899 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.z, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !77

bb.z:                                             ; preds = %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i unwind label %bb.aa, !noalias !65898

.noexc.i.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #67
          to label %.body.i unwind label %bb.ab, !noalias !65898

bb.ab:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !65898
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %_RINvYNtNtNtCs4YAKbnGhBJc_12arrow_buffer4util12bit_iterator11BitIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8for_eachNCINvXsa_NtNtB9_6buffer7booleanNtB2k_13BooleanBufferINtNtB1b_7collect12FromIteratorbE9from_iterB3_E0ECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dk, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !65898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !65898
  store ptr %i.dk, ptr %i.k, align 8, !noalias !65898
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.do, align 8, !noalias !65898
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.dp, align 8, !noalias !65898
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, i64 noundef 0, i64 noundef %i.dh)
          to label %bb.ac unwind label %.loopexit.split-lp.i, !noalias !65886

bb.ac:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !65898
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %bb.ae unwind label %bb.n

bb.ad:                                            ; preds = %.body.i
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !65889
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !65889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !75, !noundef !75
  %i.dt = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noundef !75 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65900)
  %i.dv = icmp ugt i64 %i.du, %.sroa.0.0
  br i1 %i.dv, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i57, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i55, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i57: ; preds = %bb.ae
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 0, i64 noundef %i.du, i64 noundef 1, i64 noundef 1)
          to label %.noexc58 unwind label %bb.ag

.noexc58:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i57
  %i.dw = load i64, ptr %i.au, align 8, !alias.scope !65900, !noundef !75 ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  call void @llvm.assume(i1 %i.dx)
  %.pre = load ptr, ptr %i.at, align 8, !alias.scope !65900
  br label %bb.af

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i55: ; preds = %bb.ae
  %.not.i56 = icmp eq i64 %i.du, 0
  br i1 %.not.i56, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i55, %.noexc58
  %i.dy = phi ptr [ %.pre, %.noexc58 ], [ %i.as, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i55 ] ; 2 uses
  %i.dz = phi i64 [ %i.dw, %.noexc58 ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i55 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull readonly align 1 %i.ds, i64 %i.du, i1 false), !noalias !65900
  br label %bb.ai

bb.ag:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i57
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65901)
  call void @llvm.experimental.noalias.scope.decl(metadata !65902)
  call void @llvm.experimental.noalias.scope.decl(metadata !65903)
  call void @llvm.experimental.noalias.scope.decl(metadata !65904)
  %i.ec = load ptr, ptr %i.x, align 8, !alias.scope !65905, !nonnull !75, !noundef !75
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !65905
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ah, label %.body53

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body53 unwind label %bb.cj

bb.ai:                                            ; preds = %bb.af, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i55
  %.sroa.4134.0.copyload197 = phi ptr [ %i.dy, %bb.af ], [ %i.as, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i55 ]
  %i.ef = phi i64 [ %i.dz, %bb.af ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i55 ]
  %i.eg = add i64 %i.ef, %i.du                    ; 2 uses
  store i64 %i.eg, ptr %i.au, align 8, !alias.scope !65900
  call void @llvm.experimental.noalias.scope.decl(metadata !65906)
  call void @llvm.experimental.noalias.scope.decl(metadata !65907)
  call void @llvm.experimental.noalias.scope.decl(metadata !65908)
  call void @llvm.experimental.noalias.scope.decl(metadata !65909)
  %i.eh = load ptr, ptr %i.x, align 8, !alias.scope !65910, !nonnull !75, !noundef !75
  %i.ei = atomicrmw sub ptr %i.eh, i64 1 release, align 8, !noalias !65910
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferECsjjpCCFGI3ul_14lance_encoding.exit63

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferECsjjpCCFGI3ul_14lance_encoding.exit63 unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferECsjjpCCFGI3ul_14lance_encoding.exit63: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.o

bb.ak:                                            ; preds = %bb.h
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2795, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2994) #66
          to label %bb.at unwind label %bb.ao

bb.al:                                            ; preds = %bb.h
  br label %bb.am

bb.am:                                            ; preds = %bb.h, %bb.al
  %i.ek = phi i1 [ false, %bb.al ], [ true, %bb.h ]
  %.sroa.03.0 = phi i8 [ 64, %bb.al ], [ 32, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.el = add i64 %3, 1
  invoke fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef %2, i64 noundef %i.el)
          to label %bb.ap unwind label %bb.ao

bb.an:                                            ; preds = %.body80, %bb.ao
  %.pn38 = phi { ptr, i32 } [ %i.eo, %bb.ao ], [ %.pn36, %.body80 ] ; 2 uses
  %.sroa.019.1 = phi i1 [ %.sroa.019.2, %bb.ao ], [ %.sroa.019.3, %.body80 ]
  %i.em = add i64 %.sroa.0.0168, -1
  %i.en = icmp ult i64 %i.em, -2
  %or.cond193.not = and i1 %i.en, %.sroa.019.1
  br i1 %or.cond193.not, label %bb.cs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit

bb.ao:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit, %bb.am, %bb.ak
  %.sroa.019.2 = phi i1 [ true, %bb.ak ], [ true, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsjjpCCFGI3ul_14lance_encoding.exit ], [ %.not29, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding4data9BlockInfoEBF_.exit ], [ true, %bb.am ]
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !noundef !75 ; 10 uses
  %.not27 = icmp ult i64 %i.eq, 8
  br i1 %.not27, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !noundef !75 ; 16 uses
  %i.et = load i64, ptr %i.es, align 8, !noundef !75 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  br i1 %i.ek, label %bb.au, label %bb.av, !prof !65911

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2992) #66
          to label %bb.at unwind label %bb.as

.body80:                                          ; preds = %bb.cq, %bb.cr, %bb.ck, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit117, %bb.bh, %bb.be, %bb.ay, %bb.as
  %.pn36 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.bh ], [ %.pn30.pn.pn, %bb.ck ], [ %i.ii, %bb.ay ], [ %i.eu, %bb.as ], [ %i.iu, %bb.be ], [ %.pn30.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit117 ], [ %lpad.thr_comm, %bb.cr ], [ %lpad.thr_comm, %bb.cq ]
  %.sroa.019.3 = phi i1 [ %.not29, %bb.bh ], [ %.sroa.019.7, %bb.ck ], [ true, %bb.ay ], [ true, %bb.as ], [ true, %bb.be ], [ %.sroa.019.7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit117 ], [ true, %bb.cr ], [ true, %bb.cq ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.v) #67
          to label %bb.an unwind label %bb.cj

bb.as:                                            ; preds = %.invoke, %bb.bn, %bb.ar
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.at:                                            ; preds = %_RNvMso_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9DataBlock14as_fixed_width.exit.thread, %bb.ar, %bb.ak, %bb.i
  unreachable

bb.au:                                            ; preds = %bb.aq
  %i.ev = lshr i64 %i.eq, 3                       ; 7 uses
  %.idx191 = lshr i64 %i.eq, 1
  %i.ew = and i64 %.idx191, 9223372036854775804   ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !65912
  %i.ex = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ew, i64 noundef range(i64 1, 17) 4) #63, !noalias !65912 ; 11 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %.invoke, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.au
  %min.iters.check235 = icmp ult i64 %i.eq, 80
  br i1 %min.iters.check235, label %.preheader.i.i.i.preheader249, label %vector.memcheck236

vector.memcheck236:                               ; preds = %.preheader.i.i.i.preheader
  %i.ez = shl nuw nsw i64 %i.ev, 2
  %i.fa = getelementptr i8, ptr %i.ex, i64 %i.ez
  %i.fb = and i64 %i.eq, -8
  %i.fc = getelementptr i8, ptr %i.es, i64 %i.fb
  %bound0 = icmp ult ptr %i.ex, %i.fc
  %bound1 = icmp ult ptr %i.es, %i.fa
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.preheader249, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck236
  %n.vec238 = and i64 %i.ev, 2305843009213693948  ; 3 uses
  %broadcast.splatinsert239 = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat240 = shufflevector <2 x i64> %broadcast.splatinsert239, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph237
  %index242 = phi i64 [ 0, %vector.ph237 ], [ %index.next245, %vector.body241 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index242 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load243 = load <2 x i64>, ptr %i.fd, align 8, !alias.scope !65913, !noalias !65914
  %wide.load244 = load <2 x i64>, ptr %i.fe, align 8, !alias.scope !65913, !noalias !65914
  %i.ff = sub <2 x i64> %wide.load243, %broadcast.splat240
  %i.fg = sub <2 x i64> %wide.load244, %broadcast.splat240
  %i.fh = trunc <2 x i64> %i.ff to <2 x i32>
  %i.fi = trunc <2 x i64> %i.fg to <2 x i32>
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index242 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store <2 x i32> %i.fh, ptr %i.fj, align 4, !alias.scope !65915, !noalias !65916
  store <2 x i32> %i.fi, ptr %i.fk, align 4, !alias.scope !65915, !noalias !65916
  %index.next245 = add nuw i64 %index242, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next245, %n.vec238
  br i1 %i.fl, label %middle.block246, label %vector.body241, !llvm.loop !65757

middle.block246:                                  ; preds = %vector.body241
  %cmp.n247 = icmp eq i64 %i.ev, %n.vec238
  br i1 %cmp.n247, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decode0EE9from_iterB31_.exit, label %.preheader.i.i.i.preheader249

.preheader.i.i.i.preheader249:                    ; preds = %vector.memcheck236, %.preheader.i.i.i.preheader, %middle.block246
  %.ph = phi i64 [ 0, %vector.memcheck236 ], [ 0, %.preheader.i.i.i.preheader ], [ %n.vec238, %middle.block246 ] ; 3 uses
  %xtraiter252 = and i64 %i.ev, 3                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.i.i.i.preheader249, %.preheader.i.i.i.prol
  %i.fm = phi i64 [ %i.fr, %.preheader.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.preheader249 ] ; 3 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.preheader.i.i.i.prol ], [ 0, %.preheader.i.i.i.preheader249 ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.fm
  %.val16.i.i.i.i.i.i.prol = load i64, ptr %i.fn, align 8, !noalias !65914, !noundef !75
  %i.fo = sub i64 %.val16.i.i.i.i.i.i.prol, %i.et
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fm
  store i32 %i.fp, ptr %i.fq, align 4, !noalias !65917
  %i.fr = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol, !llvm.loop !65758

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i.preheader249
  %.unr255 = phi i64 [ %.ph, %.preheader.i.i.i.preheader249 ], [ %i.fr, %.preheader.i.i.i.prol ]
  %i.fs = sub nsw i64 %.ph, %i.ev
  %i.ft = icmp ugt i64 %i.fs, -4
  br i1 %i.ft, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decode0EE9from_iterB31_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %i.fu = phi i64 [ %i.go, %.preheader.i.i.i ], [ %.unr255, %.preheader.i.i.i.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.fu
  %.val16.i.i.i.i.i.i = load i64, ptr %i.fv, align 8, !noalias !65914, !noundef !75
  %i.fw = sub i64 %.val16.i.i.i.i.i.i, %i.et
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fu
  store i32 %i.fx, ptr %i.fy, align 4, !noalias !65917
  %i.fz = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.fz
  %.val16.i.i.i.i.i.i.1 = load i64, ptr %i.ga, align 8, !noalias !65914, !noundef !75
  %i.gb = sub i64 %.val16.i.i.i.i.i.i.1, %i.et
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fz
  store i32 %i.gc, ptr %i.gd, align 4, !noalias !65917
  %i.ge = add nuw nsw i64 %i.fu, 2                ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ge
  %.val16.i.i.i.i.i.i.2 = load i64, ptr %i.gf, align 8, !noalias !65914, !noundef !75
  %i.gg = sub i64 %.val16.i.i.i.i.i.i.2, %i.et
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ge
  store i32 %i.gh, ptr %i.gi, align 4, !noalias !65917
  %i.gj = add nuw nsw i64 %i.fu, 3                ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.gj
  %.val16.i.i.i.i.i.i.3 = load i64, ptr %i.gk, align 8, !noalias !65914, !noundef !75
  %i.gl = sub i64 %.val16.i.i.i.i.i.i.3, %i.et
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gj
  store i32 %i.gm, ptr %i.gn, align 4, !noalias !65917
  %i.go = add nuw nsw i64 %i.fu, 4                ; 2 uses
  %i.gp = icmp eq i64 %i.go, %i.ev
  br i1 %i.gp, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decode0EE9from_iterB31_.exit, label %.preheader.i.i.i, !llvm.loop !65759

bb.av:                                            ; preds = %bb.aq
  %.idx = and i64 %i.eq, -8                       ; 4 uses
  %i.gq = lshr i64 %i.eq, 3                       ; 5 uses
  %.not.i.i.i = icmp ugt i64 %.idx, 9223372036854775800
  br i1 %.not.i.i.i, label %.invoke, label %bb.aw, !prof !80

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !65918
  %i.gr = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 17) 8) #63, !noalias !65918 ; 10 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %.invoke, label %.preheader.i.i.i72.preheader

.preheader.i.i.i72.preheader:                     ; preds = %bb.aw
  %min.iters.check = icmp ult i64 %i.eq, 48
  %i.gt = ptrtoaddr ptr %i.gr to i64
  %4 = ptrtoaddr ptr %i.es to i64
  %i.gu = sub i64 %4, %i.gt
  %diff.check = icmp ugt i64 %i.gu, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.i.i.i72.preheader250, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i72.preheader
  %n.vec = and i64 %i.gq, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load = load <2 x i64>, ptr %i.gv, align 8, !noalias !65919
  %wide.load231 = load <2 x i64>, ptr %i.gw, align 8, !noalias !65919
  %i.gx = sub <2 x i64> %wide.load, %broadcast.splat
  %i.gy = sub <2 x i64> %wide.load231, %broadcast.splat
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <2 x i64> %i.gx, ptr %i.gz, align 8, !noalias !65920
  store <2 x i64> %i.gy, ptr %i.ha, align 8, !noalias !65920
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !65785

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decodes_0EE9from_iterB31_.exit, label %.preheader.i.i.i72.preheader250

.preheader.i.i.i72.preheader250:                  ; preds = %.preheader.i.i.i72.preheader, %middle.block
  %.ph251 = phi i64 [ 0, %.preheader.i.i.i72.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.gq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i72.prol.loopexit, label %.preheader.i.i.i72.prol

.preheader.i.i.i72.prol:                          ; preds = %.preheader.i.i.i72.preheader250, %.preheader.i.i.i72.prol
  %i.hc = phi i64 [ %i.hg, %.preheader.i.i.i72.prol ], [ %.ph251, %.preheader.i.i.i72.preheader250 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i72.prol ], [ 0, %.preheader.i.i.i72.preheader250 ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.hc
  %.val16.i.i.i.i.i.i73.prol = load i64, ptr %i.hd, align 8, !noalias !65919, !noundef !75
  %i.he = sub i64 %.val16.i.i.i.i.i.i73.prol, %i.et
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hc
  store i64 %i.he, ptr %i.hf, align 8, !noalias !65920
  %i.hg = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i72.prol.loopexit, label %.preheader.i.i.i72.prol, !llvm.loop !65786

.preheader.i.i.i72.prol.loopexit:                 ; preds = %.preheader.i.i.i72.prol, %.preheader.i.i.i72.preheader250
  %.unr = phi i64 [ %.ph251, %.preheader.i.i.i72.preheader250 ], [ %i.hg, %.preheader.i.i.i72.prol ]
  %i.hh = sub nsw i64 %.ph251, %i.gq
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decodes_0EE9from_iterB31_.exit, label %.preheader.i.i.i72

.invoke:                                          ; preds = %bb.av, %bb.aw, %bb.au
  %i.hj = phi i64 [ 4, %bb.au ], [ 8, %bb.aw ], [ 0, %bb.av ]
  %i.hk = phi i64 [ %i.ew, %bb.au ], [ %.idx, %bb.aw ], [ %.idx, %bb.av ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.hj, i64 %i.hk) #66
          to label %.cont unwind label %bb.as

.cont:                                            ; preds = %.invoke
  unreachable

.preheader.i.i.i72:                               ; preds = %.preheader.i.i.i72.prol.loopexit, %.preheader.i.i.i72
  %i.hl = phi i64 [ %i.ib, %.preheader.i.i.i72 ], [ %.unr, %.preheader.i.i.i72.prol.loopexit ] ; 6 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.hl
  %.val16.i.i.i.i.i.i73 = load i64, ptr %i.hm, align 8, !noalias !65919, !noundef !75
  %i.hn = sub i64 %.val16.i.i.i.i.i.i73, %i.et
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hl
  store i64 %i.hn, ptr %i.ho, align 8, !noalias !65920
  %i.hp = add nuw nsw i64 %i.hl, 1                ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.hp
  %.val16.i.i.i.i.i.i73.1 = load i64, ptr %i.hq, align 8, !noalias !65919, !noundef !75
  %i.hr = sub i64 %.val16.i.i.i.i.i.i73.1, %i.et
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hp
  store i64 %i.hr, ptr %i.hs, align 8, !noalias !65920
  %i.ht = add nuw nsw i64 %i.hl, 2                ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ht
  %.val16.i.i.i.i.i.i73.2 = load i64, ptr %i.hu, align 8, !noalias !65919, !noundef !75
  %i.hv = sub i64 %.val16.i.i.i.i.i.i73.2, %i.et
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ht
  store i64 %i.hv, ptr %i.hw, align 8, !noalias !65920
  %i.hx = add nuw nsw i64 %i.hl, 3                ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.hx
  %.val16.i.i.i.i.i.i73.3 = load i64, ptr %i.hy, align 8, !noalias !65919, !noundef !75
  %i.hz = sub i64 %.val16.i.i.i.i.i.i73.3, %i.et
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hx
  store i64 %i.hz, ptr %i.ia, align 8, !noalias !65920
  %i.ib = add nuw nsw i64 %i.hl, 4                ; 2 uses
  %i.ic = icmp eq i64 %i.ib, %i.gq
  br i1 %i.ic, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decodes_0EE9from_iterB31_.exit, label %.preheader.i.i.i72, !llvm.loop !65787

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decode0EE9from_iterB31_.exit: ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block246
  %i.id = shl nuw nsw i64 %i.ev, 2                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !65921
  store i64 1, ptr %i.i, align 8, !noalias !65921
  %i.ie = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.ie, align 8, !noalias !65921
  %i.if = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ex, ptr %i.if, align 8, !noalias !65921
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.id, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !65921
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !65921
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !65921
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.id, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !65921
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !65922
  %i.ig = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !65922 ; 3 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.ax, label %bb.ba, !prof !77

bb.ax:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decode0EE9from_iterB31_.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i79 unwind label %bb.ay, !noalias !65921

.noexc.i79:                                       ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i) #67
          to label %.body80 unwind label %bb.az, !noalias !65921

bb.az:                                            ; preds = %bb.ay
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !65921
  unreachable

bb.ba:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decode0EE9from_iterB31_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ig, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !65921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !65921
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bg, %bb.ba
  %.sink223 = phi ptr [ %i.is, %bb.bg ], [ %i.ig, %bb.ba ]
  %.sink222 = phi ptr [ %i.gr, %bb.bg ], [ %i.ex, %bb.ba ]
  %.sink = phi i64 [ %i.ip, %bb.bg ], [ %i.id, %bb.ba ]
  store ptr %.sink223, ptr %i.u, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sink222, ptr %.sroa.4143.0..sroa_idx, align 8
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink, ptr %.sroa.5144.0..sroa_idx, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val43 = load ptr, ptr %i.ik, align 8          ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val44 = load i64, ptr %i.il, align 8, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %2, ptr %i.h, align 8
  %i.im = lshr i64 %.val44, 3                     ; 4 uses
  %i.in = icmp ult i64 %2, %i.im
  br i1 %i.in, label %bb.bi, label %bb.bc, !prof !78

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.im, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  br label %.invoke224

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decodes_0EE9from_iterB31_.exit: ; preds = %.preheader.i.i.i72.prol.loopexit, %.preheader.i.i.i72, %middle.block
  %i.io = icmp sgt i64 %i.eq, -1
  %i.ip = and i64 %i.eq, 9223372036854775800      ; 3 uses
  call void @llvm.assume(i1 %i.io)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !65923
  store i64 1, ptr %i.e, align 8, !noalias !65923
  %i.iq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.iq, align 8, !noalias !65923
  %i.ir = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.gr, ptr %i.ir, align 8, !noalias !65923
  %.sroa.42.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.ip, ptr %.sroa.42.0..sroa_idx.i84, align 8, !noalias !65923
  %.sroa.53.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i85, align 8, !noalias !65923
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 8, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i86, align 8, !noalias !65923
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.ip, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i87, align 8, !noalias !65923
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !65924
  %i.is = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !65924 ; 3 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.bd, label %bb.bg, !prof !77

bb.bd:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical6binaryNtB2V_17BinaryPageDecoderNtNtB31_7decoder20PrimitivePageDecoder6decodes_0EE9from_iterB31_.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i90 unwind label %bb.be, !noalias !65923

.noexc.i90:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #67
          to label %.body80 unwind label %bb.bf, !noalias !65923
end_hunk_4
