Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB5_6poison5mutex5MutexNtNtNtCskOWKGULsqwM_4zstd4bulk10compressor10CompressorENtNtCs40k4W9msRzi_5alloc6string6StringEE10initializeNCINvB2_11get_or_initNCNvMs_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical5block4zstdNtB49_20ZstdBufferCompressor14get_compressor0E0zEB4h_:bb.a
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
  %.val2462 = ptrtoaddr ptr %.val24 to i64
  %.idx52 = shl i64 %0, 1                         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val24, i64 %.idx52 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ac = sub nuw nsw i64 %1, %0                  ; 11 uses
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
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = icmp eq i64 %0, %1
  br i1 %i.al, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26
  %min.iters.check = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = shl i64 %i.ah, 1
  %i.an = add i64 %i.am, %i.ak
  %i.ao = add i64 %.idx52, %.val2462
  %i.ap = sub i64 %i.ao, %i.an
  %diff.check = icmp ugt i64 %i.ap, -32
  br i1 %diff.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check63 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, -16                     ; 5 uses
  %i.ar = add i64 %i.ah, %n.vec                   ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %i.aj, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <8 x i16>, ptr %i.at, align 2, !noalias !874
  %wide.load64 = load <8 x i16>, ptr %i.au, align 2, !noalias !874
  %i.av = getelementptr [2 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <8 x i16> %wide.load, ptr %i.av, align 2, !noalias !875
  store <8 x i16> %wide.load64, ptr %i.aw, align 2, !noalias !875
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !851

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.ac, -4                    ; 4 uses
  %i.ay = add i64 %i.ah, %n.vec65                 ; 2 uses
  %i.az = getelementptr [2 x i8], ptr %i.aj, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index66
  %wide.load67 = load <4 x i16>, ptr %i.ba, align 2, !noalias !874
  %i.bb = getelementptr [2 x i8], ptr %i.az, i64 %index66
  store <4 x i16> %wide.load67, ptr %i.bb, align 2, !noalias !875
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !852

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.ac, %n.vec65
  br i1 %cmp.n69, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
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
  %storemerge.i.i.i = phi i64 [ %i.ah, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26 ], [ %i.ay, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.ca, %.preheader.i ]
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
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 8, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 1, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !75 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.s, ptr %i.o, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.y, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @63, ptr noundef nonnull %i.o)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.z = icmp ugt i64 %2, 1024
  br i1 %i.z, label %bb.j, label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowShEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.y, %bb.x, %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.k, %bb.e
  %.pn113 = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %i.ak, %bb.k ], [ %i.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.ba, %bb.u ], [ %i.bd, %bb.x ], [ %i.bd, %bb.y ]
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !926, !nonnull !75, !noundef !75
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !926
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowShEECsjjpCCFGI3ul_14lance_encoding.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit unwind label %bb.ab

bb.e:                                             ; preds = %bb.j, %bb.i, %bb.b, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit133
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowShEECsjjpCCFGI3ul_14lance_encoding.exit

bb.f:                                             ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !931, !nonnull !75, !noundef !75
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !931
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit130
end_hunk_0
begin_hunk_1_@_RNvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB2_24NormalizedStructuralPlan13to_serializer:bb.a
bb.am:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31088)
  %i.hj = load i16, ptr %i.gn, align 2, !alias.scope !31089, !noalias !31087, !noundef !75 ; 2 uses
  %i.hk = add i16 %i.hj, -1
  store i16 %i.hk, ptr %i.gn, align 2, !alias.scope !31089, !noalias !31087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31090)
  %i.hl = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !alias.scope !31091, !noalias !31087, !noundef !75 ; 3 uses
  %i.hm = load i64, ptr %i.a, align 8, !range !76, !alias.scope !31091, !noalias !31087, !noundef !75
  %i.hn = icmp eq i64 %i.hl, %i.hm
  br i1 %i.hn, label %bb.an, label %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a)
          to label %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit.i unwind label %.loopexit

_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit.i: ; preds = %bb.an, %bb.am
  %i.ho = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !31091, !noalias !31087, !nonnull !75, !noundef !75
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hl
  store i8 3, ptr %i.hp, align 1, !noalias !31091
  %i.hq = add i64 %i.hl, 1
  store i64 %i.hq, ptr %.sroa.548.0..sroa_idx.i, align 8, !alias.scope !31091, !noalias !31087
  br label %bb.au

bb.ao:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31092)
  %i.hr = load i16, ptr %i.gn, align 2, !alias.scope !31093, !noalias !31087, !noundef !75 ; 3 uses
  %i.hs = add i16 %i.hr, -2
  store i16 %i.hs, ptr %i.gn, align 2, !alias.scope !31093, !noalias !31087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31094)
  %i.ht = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !alias.scope !31095, !noalias !31087, !noundef !75 ; 3 uses
  %i.hu = load i64, ptr %i.a, align 8, !range !76, !alias.scope !31095, !noalias !31087, !noundef !75
  %i.hv = icmp eq i64 %i.ht, %i.hu
  br i1 %i.hv, label %bb.ap, label %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit128.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a)
          to label %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit128.i unwind label %.loopexit

_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit128.i: ; preds = %bb.ap, %bb.ao
  %i.hw = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !31095, !noalias !31087, !nonnull !75, !noundef !75
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ht
  store i8 5, ptr %i.hx, align 1, !noalias !31095
  %i.hy = add i64 %i.ht, 1
  store i64 %i.hy, ptr %.sroa.548.0..sroa_idx.i, align 8, !alias.scope !31095, !noalias !31087
  %i.hz = add i16 %i.hr, -1
  br label %bb.au

.thread.i:                                        ; preds = %bb.as, %bb.at, %bb.aq, %bb.ar
  %.sink390 = phi i64 [ %i.ie, %bb.aq ], [ %i.ie, %bb.ar ], [ %i.ij, %bb.at ], [ %i.ij, %bb.as ] ; 2 uses
  %.sink = phi i8 [ 1, %bb.aq ], [ 1, %bb.ar ], [ 4, %bb.at ], [ 4, %bb.as ]
  %.sroa.02.0.ph.i = phi i16 [ 0, %bb.aq ], [ 0, %bb.ar ], [ %i.ih, %bb.at ], [ %i.ih, %bb.as ]
  %i.ia = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !nonnull !75, !noundef !75
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sink390
  store i8 %.sink, ptr %i.ib, align 1, !noalias !31086
  %storemerge = add i64 %.sink390, 1
  store i64 %storemerge, ptr %.sroa.548.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087
  %i.ic = load i16, ptr %i.gm, align 8, !alias.scope !31086, !noalias !31087, !noundef !75
  %i.id = add i16 %i.ic, -1
  store i16 %i.id, ptr %i.gm, align 8, !alias.scope !31086, !noalias !31087
  br label %.noexc48

bb.aq:                                            ; preds = %bb.al
  %i.ie = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !alias.scope !31096, !noalias !31087, !noundef !75 ; 3 uses
  %i.if = load i64, ptr %i.a, align 8, !range !76, !alias.scope !31096, !noalias !31087, !noundef !75
  %i.ig = icmp eq i64 %i.ie, %i.if
  br i1 %i.ig, label %bb.ar, label %.thread.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a)
          to label %.thread.i unwind label %.loopexit

bb.as:                                            ; preds = %bb.al
  %i.ih = load i16, ptr %i.gn, align 2, !alias.scope !31097, !noalias !31087, !noundef !75 ; 3 uses
  %i.ii = add i16 %i.ih, -1
  store i16 %i.ii, ptr %i.gn, align 2, !alias.scope !31097, !noalias !31087
  %i.ij = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !alias.scope !31098, !noalias !31087, !noundef !75 ; 3 uses
  %i.ik = load i64, ptr %i.a, align 8, !range !76, !alias.scope !31098, !noalias !31087, !noundef !75
  %i.il = icmp eq i64 %i.ij, %i.ik
  br i1 %i.il, label %bb.at, label %.thread.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a)
          to label %.thread.i unwind label %.loopexit

bb.au:                                            ; preds = %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit128.i, %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit.i
  %.sroa.02.0.i42 = phi i16 [ %i.hr, %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit128.i ], [ 0, %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit.i ]
  %.sroa.0.0.i43 = phi i16 [ %i.hz, %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit128.i ], [ %i.hj, %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext12checkout_def.exit.i ]
  %i.im = load i16, ptr %i.gm, align 8, !alias.scope !31086, !noalias !31087, !noundef !75
  %i.in = add i16 %i.im, -1
  store i16 %i.in, ptr %i.gm, align 8, !alias.scope !31086, !noalias !31087
  invoke fastcc void @_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext18do_record_validity(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hg, i16 noundef %.sroa.0.0.i43)
          to label %.noexc48 unwind label %.loopexit

.noexc48:                                         ; preds = %bb.au, %.thread.i
  %.sroa.02.0151.i = phi i16 [ %.sroa.02.0.ph.i, %.thread.i ], [ %.sroa.02.0.i42, %bb.au ]
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.016.0183, i64 56
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !31087, !noalias !31086, !noundef !75
  %i.iq = load i64, ptr %i.gq, align 8, !alias.scope !31086, !noalias !31087, !noundef !75 ; 6 uses
  %i.ir = add i64 %i.iq, %i.ip                    ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.noexc48
  store i64 0, ptr %i.go, align 8, !alias.scope !31086, !noalias !31087
  br label %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext14record_offsets.exit

bb.aw:                                            ; preds = %.noexc48
  %i.it = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !noundef !75 ; 6 uses
  %i.iu = icmp ult i64 %i.it, 4611686018427387904
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = add i64 %i.ir, -1                       ; 2 uses
  %.not124.i = icmp ult i64 %i.it, %i.iv
  br i1 %.not124.i, label %.invoke, label %bb.ax, !prof !81

.invoke:                                          ; preds = %bb.da, %bb.cw, %bb.cv, %bb.cm, %bb.az, %bb.aw, %.lr.ph348.i
  %i.iw = phi ptr [ @1571, %.lr.ph348.i ], [ @1569, %bb.aw ], [ @1596, %bb.da ], [ @1576, %bb.az ], [ @1596, %bb.cm ], [ @1602, %bb.cv ], [ @1602, %bb.cw ]
  %i.ix = phi i64 [ 25, %.lr.ph348.i ], [ 59, %bb.aw ], [ 59, %bb.az ], [ 59, %bb.cm ], [ 59, %bb.cv ], [ 59, %bb.cw ], [ 59, %bb.da ]
  %i.iy = phi ptr [ @1572, %.lr.ph348.i ], [ @1570, %bb.aw ], [ @1607, %bb.da ], [ @1577, %bb.az ], [ @1597, %bb.cm ], [ @1603, %bb.cv ], [ @1606, %bb.cw ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.iw, i64 noundef %i.ix, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iy) #66
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.iz = load i64, ptr %.sroa.944.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !noundef !75 ; 6 uses
  %i.ja = icmp ult i64 %i.iz, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ja)
  %i.jb = icmp eq i64 %i.iz, 0
  br i1 %i.jb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jc = load ptr, ptr %.sroa.741.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !nonnull !75, !noundef !75 ; 3 uses
  %i.jd = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !noundef !75 ; 3 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %i.jd ; 6 uses
  %i.jf = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !nonnull !75, !noundef !75 ; 3 uses
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.it
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.016.0183, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !31087, !noalias !31086, !noundef !75 ; 2 uses
  %i.jj = icmp ult i64 %i.ji, 2
  %i.jk = ptrtoint ptr %i.jf to i64
  %i.jl = ptrtoint ptr %i.jc to i64               ; 3 uses
  br i1 %i.jj, label %._crit_edge349.i, label %.lr.ph348.preheader.i

.lr.ph348.preheader.i:                            ; preds = %bb.ay
  %i.jm = load ptr, ptr %.sroa.016.0183, align 8, !alias.scope !31087, !noalias !31086, !nonnull !75, !noundef !75
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = shl i64 %i.jd, 1
  %i.jp = add i64 %i.jo, %i.jl
  %i.jq = add i64 %i.jp, -2
  br label %.lr.ph348.i

bb.az:                                            ; preds = %bb.ax
  %.not125.i = icmp samesign ult i64 %i.iz, %i.iv
  br i1 %.not125.i, label %.invoke, label %bb.bg, !prof !81

._crit_edge349.loopexit.i:                        ; preds = %._crit_edge340.i
  %.sroa.0.0.copyload.i.i.i.1.i.i.pre.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !31099, !noalias !31100
  %.sroa.02.0.copyload.i.i.i.1.i.i.pre.i = load i64, ptr %.sroa.741.0..sroa_idx.i, align 8, !alias.scope !31101, !noalias !31102
  br label %._crit_edge349.i

._crit_edge349.i:                                 ; preds = %._crit_edge349.loopexit.i, %bb.ay
  %.sroa.02.0.copyload.i.i.i.1.i.i.i = phi i64 [ %i.jl, %bb.ay ], [ %.sroa.02.0.copyload.i.i.i.1.i.i.pre.i, %._crit_edge349.loopexit.i ]
  %.sroa.0.0.copyload.i.i.i.1.i.i.i = phi i64 [ %i.jk, %bb.ay ], [ %.sroa.0.0.copyload.i.i.i.1.i.i.pre.i, %._crit_edge349.loopexit.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ 0, %bb.ay ], [ %i.lc, %._crit_edge349.loopexit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31104)
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.gi, align 8, !alias.scope !31105, !noalias !31106
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.gj, align 8, !alias.scope !31107, !noalias !31108
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i, ptr %i.gi, align 8, !alias.scope !31105, !noalias !31106
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.gj, align 8, !alias.scope !31107, !noalias !31108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31110)
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge333.i, %._crit_edge349.i
  %storemerge186 = phi i64 [ %.sroa.02.0.copyload.i.i.i.1.i.i142.i, %._crit_edge333.i ], [ %.sroa.02.0.copyload.i.i.i.1.i.i.i, %._crit_edge349.i ]
  %storemerge185 = phi i64 [ %.sroa.0.0.copyload.i.i.i.1.i.i141.i, %._crit_edge333.i ], [ %.sroa.0.0.copyload.i.i.i.1.i.i.i, %._crit_edge349.i ]
  %storemerge105 = phi i64 [ %i.lp, %._crit_edge333.i ], [ %i.jd, %._crit_edge349.i ]
  %.sroa.04.1.i = phi i64 [ %.sroa.04.3.lcssa.i, %._crit_edge333.i ], [ %.sroa.04.0.lcssa.i, %._crit_edge349.i ]
  store i64 %storemerge186, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087
  store i64 %storemerge185, ptr %.sroa.741.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087
  store i64 %storemerge105, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087
  store i64 %i.it, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087
  store i64 %.sroa.04.1.i, ptr %i.go, align 8, !alias.scope !31086, !noalias !31087
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.016.0183, i64 64
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !31087, !noalias !31086, !noundef !75
  %i.jt = add i64 %i.js, %i.iq
  store i64 %i.jt, ptr %i.gq, align 8, !alias.scope !31086, !noalias !31087
  br label %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext14record_offsets.exit

.lr.ph348.i:                                      ; preds = %._crit_edge340.i, %.lr.ph348.preheader.i
  %.sroa.04.0346.i = phi i64 [ %i.lc, %._crit_edge340.i ], [ 0, %.lr.ph348.preheader.i ]
  %.sroa.011.0345.i = phi ptr [ %.sroa.011.1.lcssa.i, %._crit_edge340.i ], [ %i.jc, %.lr.ph348.preheader.i ] ; 4 uses
  %.sroa.014.0344.i = phi ptr [ %i.kb, %._crit_edge340.i ], [ %i.jf, %.lr.ph348.preheader.i ] ; 3 uses
  %.sroa.0.0148343.i = phi ptr [ %i.jv, %._crit_edge340.i ], [ %i.jn, %.lr.ph348.preheader.i ] ; 2 uses
  %.sroa.5.0342.i = phi i64 [ %i.ju, %._crit_edge340.i ], [ %i.ji, %.lr.ph348.preheader.i ] ; 2 uses
  %.sroa.011.0345.i461 = ptrtoaddr ptr %.sroa.011.0345.i to i64 ; 2 uses
  %i.ju = add i64 %.sroa.5.0342.i, -1
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0148343.i, i64 8 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !31086, !noundef !75 ; 2 uses
  %i.jx = load i64, ptr %.sroa.0.0148343.i, align 8, !noalias !31086, !noundef !75 ; 2 uses
  %i.jy = sub i64 %i.jw, %i.jx                    ; 5 uses
  %i.jz = icmp sgt i64 %i.jy, 0
  br i1 %i.jz, label %bb.bb, label %.invoke, !prof !78

bb.bb:                                            ; preds = %.lr.ph348.i
  %i.ka = icmp eq ptr %.sroa.014.0344.i, %i.jg
  br i1 %i.ka, label %.invoke391, label %bb.bc, !prof !81

bb.bc:                                            ; preds = %bb.bb
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.014.0344.i, i64 2
  %i.kc = icmp eq ptr %.sroa.011.0345.i, %i.je
  br i1 %i.kc, label %.invoke391, label %bb.bd, !prof !81

.invoke391:                                       ; preds = %.lr.ph179.split.preheader.i.i, %._crit_edge.us.i.i, %.lr.ph155.split.us.i.i, %._crit_edge.i.i, %.lr.ph155.split.i.i, %.lr.ph179.split.us.i.i, %.lr.ph201.split.us.i.i, %.lr.ph201.split.i.i, %bb.bw, %bb.bu, %bb.bv, %bb.bt, %bb.bp, %bb.bo, %._crit_edge.i, %bb.bh, %bb.bk, %bb.bj, %bb.bi, %.lr.ph332.i, %bb.bc, %bb.bb, %bb.de, %bb.dd, %bb.dc, %.lr.ph.us.i.i, %bb.dg, %scalar.ph554, %bb.dk, %bb.dj, %bb.di, %.lr.ph.i.i, %scalar.ph536.3, %scalar.ph536.2, %scalar.ph536.1, %scalar.ph536, %scalar.ph536.prol, %bb.cp, %.lr.ph189.us.i.i, %scalar.ph523.3, %scalar.ph523.2, %scalar.ph523.1, %scalar.ph523, %scalar.ph523.prol, %bb.ct, %.lr.ph189.i.i, %bb.bz, %bb.by, %bb.bx, %.lr.ph.i, %bb.br, %.lr.ph307.i, %.lr.ph339.i.3, %.lr.ph339.i.2, %.lr.ph339.i.1, %.lr.ph339.i, %.lr.ph339.i.prol
  %i.kd = phi ptr [ @1574, %bb.bc ], [ @1601, %.lr.ph201.split.us.i.i ], [ @1604, %scalar.ph536.3 ], [ @1573, %.lr.ph339.i.3 ], [ @1594, %.lr.ph.i ], [ @1583, %.lr.ph307.i ], [ @1595, %bb.bh ], [ @1612, %bb.dj ], [ @1600, %.lr.ph189.i.i ], [ @1615, %.lr.ph155.split.i.i ], [ @1611, %bb.de ], [ @1600, %.lr.ph189.us.i.i ], [ @1598, %scalar.ph523.3 ], [ @1615, %.lr.ph155.split.us.i.i ], [ @1601, %.lr.ph201.split.i.i ], [ @1605, %.lr.ph179.split.us.i.i ], [ @1580, %bb.bi ], [ @1609, %scalar.ph554 ], [ @1573, %.lr.ph339.i.prol ], [ @1573, %.lr.ph339.i ], [ @1573, %.lr.ph339.i.1 ], [ @1573, %.lr.ph339.i.2 ], [ @1582, %bb.br ], [ @1593, %bb.bx ], [ @1592, %bb.by ], [ @1591, %bb.bz ], [ @1599, %bb.ct ], [ @1598, %scalar.ph523.prol ], [ @1598, %scalar.ph523 ], [ @1598, %scalar.ph523.1 ], [ @1598, %scalar.ph523.2 ], [ @1599, %bb.cp ], [ @1604, %scalar.ph536.prol ], [ @1604, %scalar.ph536 ], [ @1604, %scalar.ph536.1 ], [ @1604, %scalar.ph536.2 ], [ @1611, %bb.dk ], [ @1614, %.lr.ph.i.i ], [ @1613, %bb.di ], [ @1608, %bb.dg ], [ @1614, %.lr.ph.us.i.i ], [ @1613, %bb.dc ], [ @1612, %bb.dd ], [ @1575, %bb.bb ], [ @1579, %bb.bj ], [ @1578, %bb.bk ], [ @1581, %.lr.ph332.i ], [ @1586, %bb.bv ], [ @1589, %bb.bu ], [ @1590, %._crit_edge.i ], [ @1585, %bb.bo ], [ @1588, %bb.bw ], [ @1587, %bb.bt ], [ @1584, %bb.bp ], [ @1610, %._crit_edge.i.i ], [ @1610, %._crit_edge.us.i.i ], [ @1605, %.lr.ph179.split.preheader.i.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kd) #66
          to label %.cont392 unwind label %.loopexit.split-lp

.cont392:                                         ; preds = %.invoke391
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.ke = load i16, ptr %.sroa.014.0344.i, align 2, !noalias !31086, !noundef !75 ; 2 uses
  %i.kf = icmp eq i16 %i.ke, 0
  %spec.store.select.i = select i1 %i.kf, i16 %i.hf, i16 %i.ke
  store i16 %spec.store.select.i, ptr %.sroa.011.0345.i, align 2, !noalias !31086
  %.sroa.011.1335.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0345.i, i64 2 ; 4 uses
  %.not351.i = icmp eq i64 %i.jy, 1
  br i1 %.not351.i, label %._crit_edge340.i, label %.lr.ph339.i.preheader

.lr.ph339.i.preheader:                            ; preds = %bb.bd
  %i.kg = sub i64 %i.jq, %.sroa.011.0345.i461
  %i.kh = lshr i64 %i.kg, 1
  %i.ki = add i64 %i.jw, -2
  %i.kj = sub i64 %i.ki, %i.jx
  %i.kk = tail call i64 @llvm.umin.i64(i64 %i.kh, i64 %i.kj) ; 2 uses
  %min.iters.check462 = icmp samesign ult i64 %i.kk, 16
  %i.kl = sub i64 %i.jl, %.sroa.011.0345.i461
  %i.km = trunc i64 %i.kl to i1
  %or.cond = select i1 %min.iters.check462, i1 true, i1 %i.km
  br i1 %or.cond, label %.lr.ph339.i.preheader584, label %vector.ph463

.lr.ph339.i.preheader584:                         ; preds = %vector.body465, %.lr.ph339.i.preheader
  %.sroa.011.1337.i.ph = phi ptr [ %.sroa.011.1335.i, %.lr.ph339.i.preheader ], [ %i.kx, %vector.body465 ] ; 2 uses
  %.sroa.0103.0336.i.ph = phi i64 [ 1, %.lr.ph339.i.preheader ], [ %i.ky, %vector.body465 ] ; 3 uses
  %i.kn = sub i64 %i.jy, %.sroa.0103.0336.i.ph    ; 2 uses
  %i.ko = add i64 %i.kn, -1
  %xtraiter659 = and i64 %i.kn, 3                 ; 2 uses
  %lcmp.mod660.not = icmp eq i64 %xtraiter659, 0
  br i1 %lcmp.mod660.not, label %.lr.ph339.i.prol.loopexit, label %.lr.ph339.i.prol

.lr.ph339.i.prol:                                 ; preds = %.lr.ph339.i.preheader584, %bb.be
  %.sroa.011.1337.i.prol = phi ptr [ %.sroa.011.1.i.prol, %bb.be ], [ %.sroa.011.1337.i.ph, %.lr.ph339.i.preheader584 ] ; 3 uses
  %.sroa.0103.0336.i.prol = phi i64 [ %i.kq, %bb.be ], [ %.sroa.0103.0336.i.ph, %.lr.ph339.i.preheader584 ]
  %prol.iter661 = phi i64 [ %prol.iter661.next, %bb.be ], [ 0, %.lr.ph339.i.preheader584 ]
  %i.kp = icmp eq ptr %.sroa.011.1337.i.prol, %i.je
  br i1 %i.kp, label %.invoke391, label %bb.be, !prof !81

bb.be:                                            ; preds = %.lr.ph339.i.prol
  %i.kq = add nuw nsw i64 %.sroa.0103.0336.i.prol, 1 ; 2 uses
  store i16 0, ptr %.sroa.011.1337.i.prol, align 2, !noalias !31086
  %.sroa.011.1.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.011.1337.i.prol, i64 2 ; 3 uses
  %prol.iter661.next = add i64 %prol.iter661, 1   ; 2 uses
  %prol.iter661.cmp.not = icmp eq i64 %prol.iter661.next, %xtraiter659
  br i1 %prol.iter661.cmp.not, label %.lr.ph339.i.prol.loopexit, label %.lr.ph339.i.prol, !llvm.loop !31005

.lr.ph339.i.prol.loopexit:                        ; preds = %bb.be, %.lr.ph339.i.preheader584
  %.sroa.011.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph339.i.preheader584 ], [ %.sroa.011.1.i.prol, %bb.be ]
  %.sroa.011.1337.i.unr = phi ptr [ %.sroa.011.1337.i.ph, %.lr.ph339.i.preheader584 ], [ %.sroa.011.1.i.prol, %bb.be ]
  %.sroa.0103.0336.i.unr = phi i64 [ %.sroa.0103.0336.i.ph, %.lr.ph339.i.preheader584 ], [ %i.kq, %bb.be ]
  %i.kr = icmp ult i64 %i.ko, 3
  br i1 %i.kr, label %._crit_edge340.i, label %.lr.ph339.i

vector.ph463:                                     ; preds = %.lr.ph339.i.preheader
  %i.ks = add nuw i64 %i.kk, 1                    ; 2 uses
  %i.kt = and i64 %i.ks, 15                       ; 2 uses
  %i.ku = icmp eq i64 %i.kt, 0
  %i.kv = select i1 %i.ku, i64 16, i64 %i.kt
  %n.vec464 = sub i64 %i.ks, %i.kv
  %n.vec464.fr = freeze i64 %n.vec464             ; 3 uses
  %i.kw = shl i64 %n.vec464.fr, 1
  %i.kx = getelementptr i8, ptr %.sroa.011.1335.i, i64 %i.kw
  %i.ky = add i64 %n.vec464.fr, 1
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next467, %vector.body465 ] ; 2 uses
  %i.kz = shl i64 %index466, 1
  %next.gep = getelementptr i8, ptr %.sroa.011.1335.i, i64 %i.kz ; 2 uses
  %i.la = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> zeroinitializer, ptr %next.gep, align 2, !noalias !31086
  store <8 x i16> zeroinitializer, ptr %i.la, align 2, !noalias !31086
  %index.next467 = add nuw i64 %index466, 16      ; 2 uses
  %i.lb = icmp eq i64 %index.next467, %n.vec464.fr
  br i1 %i.lb, label %.lr.ph339.i.preheader584, label %vector.body465, !llvm.loop !31006

._crit_edge340.i:                                 ; preds = %.lr.ph339.i.prol.loopexit, %bb.bf, %bb.bd
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.1335.i, %bb.bd ], [ %.sroa.011.1.i.lcssa.unr, %.lr.ph339.i.prol.loopexit ], [ %.sroa.011.1.i.3, %bb.bf ]
  %i.lc = add i64 %i.jy, %.sroa.04.0346.i         ; 2 uses
  %i.ld = icmp ult i64 %.sroa.5.0342.i, 3
  br i1 %i.ld, label %._crit_edge349.loopexit.i, label %.lr.ph348.i

.lr.ph339.i:                                      ; preds = %.lr.ph339.i.prol.loopexit, %bb.bf
  %.sroa.011.1337.i = phi ptr [ %.sroa.011.1.i.3, %bb.bf ], [ %.sroa.011.1337.i.unr, %.lr.ph339.i.prol.loopexit ] ; 6 uses
  %.sroa.0103.0336.i = phi i64 [ %i.li, %bb.bf ], [ %.sroa.0103.0336.i.unr, %.lr.ph339.i.prol.loopexit ]
  %i.le = icmp eq ptr %.sroa.011.1337.i, %i.je
  br i1 %i.le, label %.invoke391, label %.lr.ph339.i.1, !prof !81

.lr.ph339.i.1:                                    ; preds = %.lr.ph339.i
  store i16 0, ptr %.sroa.011.1337.i, align 2, !noalias !31086
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.1337.i, i64 2 ; 2 uses
  %i.lf = icmp eq ptr %.sroa.011.1.i, %i.je
  br i1 %i.lf, label %.invoke391, label %.lr.ph339.i.2, !prof !81

.lr.ph339.i.2:                                    ; preds = %.lr.ph339.i.1
  store i16 0, ptr %.sroa.011.1.i, align 2, !noalias !31086
  %.sroa.011.1.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.011.1337.i, i64 4 ; 2 uses
  %i.lg = icmp eq ptr %.sroa.011.1.i.1, %i.je
  br i1 %i.lg, label %.invoke391, label %.lr.ph339.i.3, !prof !81

.lr.ph339.i.3:                                    ; preds = %.lr.ph339.i.2
  store i16 0, ptr %.sroa.011.1.i.1, align 2, !noalias !31086
  %.sroa.011.1.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.011.1337.i, i64 6 ; 2 uses
  %i.lh = icmp eq ptr %.sroa.011.1.i.2, %i.je
  br i1 %i.lh, label %.invoke391, label %bb.bf, !prof !81

bb.bf:                                            ; preds = %.lr.ph339.i.3
  %i.li = add nuw nsw i64 %.sroa.0103.0336.i, 4   ; 2 uses
  store i16 0, ptr %.sroa.011.1.i.2, align 2, !noalias !31086
  %.sroa.011.1.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.011.1337.i, i64 8 ; 2 uses
  %exitcond394.not.i.3 = icmp eq i64 %i.li, %i.jy
  br i1 %exitcond394.not.i.3, label %._crit_edge340.i, label %.lr.ph339.i, !llvm.loop !31007

bb.bg:                                            ; preds = %bb.az
  %i.lj = load ptr, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !nonnull !75, !noundef !75 ; 4 uses
  %i.lk = ptrtoaddr ptr %i.lj to i64              ; 4 uses
  %i.ll = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !noundef !75 ; 4 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %i.ll ; 4 uses
  %i.ln = load ptr, ptr %.sroa.741.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !nonnull !75, !noundef !75 ; 4 uses
  %i.lo = ptrtoaddr ptr %i.ln to i64              ; 4 uses
  %i.lp = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !noundef !75 ; 4 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.lp ; 6 uses
  %i.lr = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !nonnull !75, !noundef !75 ; 4 uses
  %i.ls = ptrtoaddr ptr %i.lr to i64              ; 2 uses
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.it ; 3 uses
  %i.lu = load ptr, ptr %.sroa.643.0..sroa_idx.i, align 8, !alias.scope !31086, !noalias !31087, !nonnull !75, !noundef !75 ; 4 uses
  %i.lv = ptrtoaddr ptr %i.lu to i64              ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.lu, i64 %i.iz ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.016.0183, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !alias.scope !31087, !noalias !31086, !noundef !75 ; 2 uses
  %i.lz = icmp ult i64 %i.ly, 2
  br i1 %i.lz, label %.preheader.i, label %.lr.ph319.i

.lr.ph319.i:                                      ; preds = %bb.bg
  %i.ma = load ptr, ptr %.sroa.016.0183, align 8, !alias.scope !31087, !noalias !31086, !nonnull !75, !noundef !75
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = add i16 %.sroa.02.0151.i, 32767
  %i.md = shl i64 %i.lp, 1
  %i.me = add i64 %i.md, %i.lo
  %i.mf = add i64 %i.me, -2
  %i.mg = shl i64 %i.ll, 1
  %i.mh = add i64 %i.mg, %i.lk
  %i.mi = add i64 %i.mh, -2
  br label %bb.bh

.preheader.i:                                     ; preds = %.loopexit.i, %bb.bg
  %.sroa.059.0.lcssa.i = phi i64 [ 0, %bb.bg ], [ %.sroa.059.2.lcssa.i, %.loopexit.i ] ; 7 uses
  %.sroa.053.0.lcssa.i = phi ptr [ %i.lu, %bb.bg ], [ %.sroa.053.2.lcssa.i, %.loopexit.i ] ; 6 uses
  %.sroa.048.0.lcssa.i = phi ptr [ %i.lr, %bb.bg ], [ %i.pi, %.loopexit.i ] ; 6 uses
  %.sroa.036.0.lcssa.i = phi ptr [ %i.ln, %bb.bg ], [ %.sroa.036.4.i, %.loopexit.i ] ; 6 uses
  %.sroa.025.0.lcssa.i = phi ptr [ %i.lj, %bb.bg ], [ %i.qs, %.loopexit.i ] ; 6 uses
  %.sroa.04.2.lcssa.i = phi i64 [ 0, %bb.bg ], [ %.sroa.04.5.i, %.loopexit.i ] ; 2 uses
  %.sroa.053.0.lcssa.i472 = ptrtoaddr ptr %.sroa.053.0.lcssa.i to i64 ; 4 uses
  %.sroa.025.0.lcssa.i473 = ptrtoaddr ptr %.sroa.025.0.lcssa.i to i64 ; 5 uses
  %.sroa.048.0.lcssa.i474 = ptrtoaddr ptr %.sroa.048.0.lcssa.i to i64 ; 4 uses
  %.sroa.036.0.lcssa.i475 = ptrtoaddr ptr %.sroa.036.0.lcssa.i to i64 ; 5 uses
  %i.mj = icmp ult i64 %.sroa.059.0.lcssa.i, %i.iq
  br i1 %i.mj, label %.lr.ph332.preheader.i, label %._crit_edge333.i

.lr.ph332.preheader.i:                            ; preds = %.preheader.i
  %i.mk = sub nuw i64 %i.iq, %.sroa.059.0.lcssa.i
  %i.ml = add i64 %i.mk, %.sroa.04.2.lcssa.i
  %i.mm = shl i64 %i.lp, 1
  %i.mn = add i64 %i.mm, %i.lo
  %i.mo = sub i64 %i.mn, %.sroa.036.0.lcssa.i475
  %i.mp = lshr i64 %i.mo, 1
  %i.mq = xor i64 %.sroa.059.0.lcssa.i, -1
  %i.mr = add i64 %i.iq, %i.mq
  %i.ms = tail call i64 @llvm.umin.i64(i64 %i.mp, i64 %i.mr)
  %i.mt = freeze i64 %i.ms
  %i.mu = shl nuw nsw i64 %i.it, 1
  %i.mv = add i64 %i.mu, %i.ls
  %i.mw = sub i64 %i.mv, %.sroa.048.0.lcssa.i474
  %.fr = freeze i64 %i.mw
  %i.mx = lshr i64 %.fr, 1
  %i.my = shl i64 %i.ll, 1
  %i.mz = add i64 %i.my, %i.lk
  %i.na = sub i64 %i.mz, %.sroa.025.0.lcssa.i473
  %i.nb = lshr i64 %i.na, 1
  %i.nc = shl nuw nsw i64 %i.iz, 1
  %i.nd = add i64 %i.nc, %i.lv
  %i.ne = sub i64 %i.nd, %.sroa.053.0.lcssa.i472
  %i.nf = lshr i64 %i.ne, 1
  %i.ng = tail call i64 @llvm.umin.i64(i64 %i.mt, i64 %i.mx)
  %i.nh = tail call i64 @llvm.umin.i64(i64 %i.ng, i64 %i.nb)
  %i.ni = tail call i64 @llvm.umin.i64(i64 %i.nh, i64 %i.nf) ; 2 uses
  %i.nj = add nuw i64 %i.ni, 1                    ; 2 uses
  %min.iters.check484 = icmp samesign ult i64 %i.ni, 24
  br i1 %min.iters.check484, label %.lr.ph332.i.preheader, label %vector.scevcheck471

.lr.ph332.i.preheader:                            ; preds = %vector.body487, %vector.memcheck, %vector.scevcheck471, %.lr.ph332.preheader.i
  %.sroa.025.1330.i.ph = phi ptr [ %.sroa.025.0.lcssa.i, %vector.memcheck ], [ %.sroa.025.0.lcssa.i, %vector.scevcheck471 ], [ %.sroa.025.0.lcssa.i, %.lr.ph332.preheader.i ], [ %i.ob, %vector.body487 ]
  %.sroa.036.1329.i.ph = phi ptr [ %.sroa.036.0.lcssa.i, %vector.memcheck ], [ %.sroa.036.0.lcssa.i, %vector.scevcheck471 ], [ %.sroa.036.0.lcssa.i, %.lr.ph332.preheader.i ], [ %i.oc, %vector.body487 ]
  %.sroa.048.1328.i.ph = phi ptr [ %.sroa.048.0.lcssa.i, %vector.memcheck ], [ %.sroa.048.0.lcssa.i, %vector.scevcheck471 ], [ %.sroa.048.0.lcssa.i, %.lr.ph332.preheader.i ], [ %i.od, %vector.body487 ]
  %.sroa.053.1327.i.ph = phi ptr [ %.sroa.053.0.lcssa.i, %vector.memcheck ], [ %.sroa.053.0.lcssa.i, %vector.scevcheck471 ], [ %.sroa.053.0.lcssa.i, %.lr.ph332.preheader.i ], [ %i.oe, %vector.body487 ]
  %.sroa.059.1326.i.ph = phi i64 [ %.sroa.059.0.lcssa.i, %vector.memcheck ], [ %.sroa.059.0.lcssa.i, %vector.scevcheck471 ], [ %.sroa.059.0.lcssa.i, %.lr.ph332.preheader.i ], [ %i.of, %vector.body487 ]
  br label %.lr.ph332.i

vector.scevcheck471:                              ; preds = %.lr.ph332.preheader.i
  %i.nk = sub i64 %i.lv, %.sroa.053.0.lcssa.i472
  %i.nl = sub i64 %i.lk, %.sroa.025.0.lcssa.i473
  %i.nm = sub i64 %i.ls, %.sroa.048.0.lcssa.i474
  %i.nn = sub i64 %i.lo, %.sroa.036.0.lcssa.i475
  %i.no = or i64 %i.nk, %i.nl
  %i.np = or i64 %i.no, %i.nm
  %i.nq = or i64 %i.np, %i.nn
  %i.nr = and i64 %i.nq, 1
  %.not576 = icmp eq i64 %i.nr, 0
  br i1 %.not576, label %vector.memcheck, label %.lr.ph332.i.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck471
  %i.ns = sub i64 %.sroa.025.0.lcssa.i473, %.sroa.036.0.lcssa.i475
  %diff.check = icmp ugt i64 %i.ns, -32
  %i.nt = sub i64 %.sroa.053.0.lcssa.i472, %.sroa.025.0.lcssa.i473
  %diff.check476 = icmp ugt i64 %i.nt, -32
  %conflict.rdx = or i1 %diff.check, %diff.check476
  %i.nu = sub i64 %.sroa.025.0.lcssa.i473, %.sroa.048.0.lcssa.i474
  %diff.check477 = icmp ugt i64 %i.nu, -32
  %conflict.rdx478 = or i1 %conflict.rdx, %diff.check477
  %i.nv = sub i64 %.sroa.053.0.lcssa.i472, %.sroa.036.0.lcssa.i475
  %diff.check479 = icmp ugt i64 %i.nv, -32
  %conflict.rdx480 = or i1 %conflict.rdx478, %diff.check479
  %i.nw = sub i64 %.sroa.048.0.lcssa.i474, %.sroa.036.0.lcssa.i475
  %diff.check481 = icmp ugt i64 %i.nw, -32
  %conflict.rdx482 = or i1 %conflict.rdx480, %diff.check481
  br i1 %conflict.rdx482, label %.lr.ph332.i.preheader, label %vector.ph485
end_hunk_1
begin_hunk_2_@_RNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_20SparseStructuralPlan8validate:bb.a
  store ptr %i.ac, ptr %i.l, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4216.0..sroa_idx, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ab, ptr %i.og, align 8
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4220.0..sroa_idx, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.ad, ptr %i.oh, align 8
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4224.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @1669, ptr noundef nonnull %i.l), !noalias !37611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.0435.0.copyload = load i64, ptr %i.m, align 8 ; 3 uses
  %.sroa.5437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5437.0.copyload = load ptr, ptr %.sroa.5437.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6440.0.copyload = load i64, ptr %.sroa.6440.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !37612
  %i.oi = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !37612 ; 5 uses
  %i.oj = icmp eq ptr %i.oi, null
  br i1 %i.oj, label %bb.cu, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit285, !prof !77

bb.cu:                                            ; preds = %.split267
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc320 unwind label %bb.cv

.noexc320:                                        ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.cu
  %i.ok = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ol = icmp eq i64 %.sroa.0435.0.copyload, 0
  br i1 %i.ol, label %common.resume, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5437.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5437.0.copyload, i64 noundef %.sroa.0435.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !37613
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit285: ; preds = %.split267
  store i64 %.sroa.0435.0.copyload, ptr %i.oi, align 8
  %.sroa.5437.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store ptr %.sroa.5437.0.copyload, ptr %.sroa.5437.0..sroa_idx438, align 8
  %.sroa.6440.0..sroa_idx441 = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store i64 %.sroa.6440.0.copyload, ptr %.sroa.6440.0..sroa_idx441, align 8
  store i8 0, ptr %0, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.oi, ptr %.sroa.4114.0..sroa_idx, align 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.5115.0..sroa_idx, align 8
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1670, ptr %.sroa.6116.0..sroa_idx, align 8
  br label %bb.cz

bb.cx:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cz

bb.cy:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %.sroa.0100.0, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.om = icmp eq ptr %i.bd, %i.at
  br i1 %i.om, label %._crit_edge, label %bb.h

bb.cz:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit285, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.da

bb.da:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit286, %bb.cs, %bb.ch, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB5_18DecodeConstantTask12slice_levels(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !75
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.c, align 8            ; 3 uses
  %.val243 = ptrtoaddr ptr %.val2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.d, align 8
  %.idx.i = shl nuw nsw i64 %3, 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.f = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.f, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %min.iters.check = icmp samesign ult i64 %3, 4
  br i1 %min.iters.check, label %.preheader.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %3, 576460752303423484         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi38 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %wide.vec = load <4 x i64>, ptr %i.g, align 8, !noalias !37640 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec39 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec40 = load <4 x i64>, ptr %i.i, align 8, !noalias !37640 ; 2 uses
  %strided.vec41 = shufflevector <4 x i64> %wide.vec40, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec42 = shufflevector <4 x i64> %wide.vec40, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.j = sub <2 x i64> %vec.phi, %strided.vec
  %i.k = sub <2 x i64> %vec.phi38, %strided.vec41
  %i.l = add <2 x i64> %i.j, %strided.vec39       ; 2 uses
  %i.m = add <2 x i64> %i.k, %strided.vec42       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !37616

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i, label %.preheader.i.preheader69

.preheader.i.preheader69:                         ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.o, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader69, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.t, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader69 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.s, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader69 ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.04.0.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.p, align 8, !noalias !37640, !noundef !75
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val13.i.i = load i64, ptr %i.q, align 8, !noalias !37640, !noundef !75
  %i.r = sub i64 %.sroa.02.0.i.i, %.val.i.i
  %i.s = add i64 %i.r, %.val13.i.i                ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.u = icmp eq i64 %i.t, %3
  br i1 %i.u, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i, label %.preheader.i, !llvm.loop !37617

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i: ; preds = %.preheader.i, %middle.block, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %middle.block ], [ %i.s, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37640
  %i.v = shl i64 %.sroa.0.0.i.i, 1                ; 4 uses
  %i.w = icmp slt i64 %.sroa.0.0.i.i, 0
  %.not.i.i = icmp ugt i64 %i.v, 9223372036854775806
  %or.cond.i.i = or i1 %i.w, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %bb.c, !prof !80

bb.c:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !37641
  %i.y = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !37641 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.y to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.f:                                             ; preds = %bb.d, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i
  %.sroa.4.0.ph.i = phi i64 [ 2, %bb.d ], [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.v) #66, !noalias !37640
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.e, %bb.c
  %.sroa.10.0.i = phi i64 [ %i.aa, %bb.e ], [ 2, %bb.c ]
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %.sroa.10.0.i to ptr       ; 2 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ac)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8, !noalias !37640
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !37640
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !noalias !37640
  br i1 %i.f, label %_RNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB7_18DecodeConstantTask12slice_levels0Bf_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.af = lshr i64 %.val3, 1                      ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, %.lr.ph.i
  %i.ag = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.as, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %i.ah = phi i64 [ 0, %.lr.ph.i ], [ %storemerge.i.i.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 3 uses
  %.sroa.0.018.i = phi ptr [ %2, %.lr.ph.i ], [ %i.ai, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 16 ; 2 uses
  %i.aj = load i64, ptr %.sroa.0.018.i, align 8, !noalias !37640, !noundef !75 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !37640, !noundef !75 ; 6 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %.not.i = icmp ugt i64 %i.al, %i.af
  %or.cond.i = or i1 %i.am, %.not.i
  br i1 %or.cond.i, label %bb.h, label %bb.i, !prof !100

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.aj, i64 noundef %i.al, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @686) #66
          to label %bb.m unwind label %.loopexit.split-lp.i, !noalias !37640

bb.i:                                             ; preds = %bb.g
  %.idx10.i = shl i64 %i.aj, 1                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx10.i ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37642)
  %i.ao = sub nuw nsw i64 %i.al, %i.aj            ; 11 uses
  %i.ap = load i64, ptr %i.a, align 8, !range !76, !alias.scope !37643, !noalias !37640, !noundef !75
  %i.aq = sub i64 %i.ap, %i.ah
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ah, i64 noundef %i.ao, i64 noundef 2, i64 noundef 2)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !37640

.noexc.i:                                         ; preds = %bb.j
  %.pre.i.i = load i64, ptr %i.ae, align 8, !alias.scope !37642, !noalias !37640
  %.pre.i = load ptr, ptr %i.ad, align 8, !alias.scope !37642, !noalias !37640
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %.noexc.i, %bb.i
  %i.as = phi ptr [ %i.ag, %bb.i ], [ %.pre.i, %.noexc.i ] ; 9 uses
  %i.at = phi i64 [ %i.ah, %bb.i ], [ %.pre.i.i, %.noexc.i ] ; 8 uses
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = icmp eq i64 %i.aj, %i.al
  br i1 %i.av, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %min.iters.check45 = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check45, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = shl i64 %i.at, 1
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %.idx10.i, %.val243
  %i.az = sub i64 %i.ay, %i.ax
  %diff.check = icmp ugt i64 %i.az, -32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i64 %i.ao, 16
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph47

vector.ph47:                                      ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ao, 12
  %n.vec48 = and i64 %i.ao, -16                   ; 5 uses
  %i.bb = add i64 %i.at, %n.vec48                 ; 2 uses
  %i.bc = getelementptr [2 x i8], ptr %i.as, i64 %i.at
  br label %vector.body49

vector.body49:                                    ; preds = %vector.ph47, %vector.body49
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next52, %vector.body49 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index50 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <8 x i16>, ptr %i.bd, align 2, !noalias !37644
  %wide.load51 = load <8 x i16>, ptr %i.be, align 2, !noalias !37644
  %i.bf = getelementptr [2 x i8], ptr %i.bc, i64 %index50 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <8 x i16> %wide.load, ptr %i.bf, align 2, !noalias !37645
  store <8 x i16> %wide.load51, ptr %i.bg, align 2, !noalias !37645
  %index.next52 = add nuw i64 %index50, 16        ; 2 uses
  %i.bh = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.bh, label %middle.block53, label %vector.body49, !llvm.loop !37636

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %i.ao, %n.vec48
  br i1 %cmp.n54, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block53
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec48, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.ao, -4                    ; 4 uses
  %i.bi = add i64 %i.at, %n.vec56                 ; 2 uses
  %i.bj = getelementptr [2 x i8], ptr %i.as, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index57
  %wide.load58 = load <4 x i16>, ptr %i.bk, align 2, !noalias !37644
  %i.bl = getelementptr [2 x i8], ptr %i.bj, i64 %index57
  store <4 x i16> %wide.load58, ptr %i.bl, align 2, !noalias !37645
  %index.next59 = add nuw i64 %index57, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next59, %n.vec56
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37637

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.ao, %n.vec56
  br i1 %cmp.n60, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.at, %iter.check ], [ %i.at, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec48, %vec.epilog.iter.check ], [ %n.vec56, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %i.bn = phi i64 [ %i.bq, %.preheader.i.i.prol ], [ %.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.prol = phi i64 [ %i.br, %.preheader.i.i.prol ], [ %.sroa.01.0.i.i.i.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i.prol
  %.val16.i.i.i.i.i.prol = load i16, ptr %i.bo, align 2, !noalias !37644, !noundef !75
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.bn
  store i16 %.val16.i.i.i.i.i.prol, ptr %i.bp, align 2, !noalias !37645
  %i.bq = add i64 %i.bn, 1                        ; 3 uses
  %i.br = add nuw i64 %.sroa.01.0.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !37638

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.i.i.preheader ], [ %i.bq, %.preheader.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.preheader.i.i.preheader ], [ %i.bq, %.preheader.i.i.prol ]
  %.sroa.01.0.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.ph, %.preheader.i.i.preheader ], [ %i.br, %.preheader.i.i.prol ]
  %i.bs = sub i64 %.sroa.01.0.i.i.i.i.i.ph, %i.al
  %i.bt = add i64 %i.bs, %i.aj
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %i.bv = phi i64 [ %i.ck, %.preheader.i.i ], [ %.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.cl, %.preheader.i.i ], [ %.sroa.01.0.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i
  %.val16.i.i.i.i.i = load i16, ptr %i.bw, align 2, !noalias !37644, !noundef !75
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.bv
  store i16 %.val16.i.i.i.i.i, ptr %i.bx, align 2, !noalias !37645
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %.val16.i.i.i.i.i.1 = load i16, ptr %i.bz, align 2, !noalias !37644, !noundef !75
  %i.ca = getelementptr [2 x i8], ptr %i.as, i64 %i.bv
  %i.cb = getelementptr i8, ptr %i.ca, i64 2
  store i16 %.val16.i.i.i.i.i.1, ptr %i.cb, align 2, !noalias !37645
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.val16.i.i.i.i.i.2 = load i16, ptr %i.cd, align 2, !noalias !37644, !noundef !75
  %i.ce = getelementptr [2 x i8], ptr %i.as, i64 %i.bv
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  store i16 %.val16.i.i.i.i.i.2, ptr %i.cf, align 2, !noalias !37645
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 6
  %.val16.i.i.i.i.i.3 = load i16, ptr %i.ch, align 2, !noalias !37644, !noundef !75
  %i.ci = getelementptr [2 x i8], ptr %i.as, i64 %i.bv
  %i.cj = getelementptr i8, ptr %i.ci, i64 6
  store i16 %.val16.i.i.i.i.i.3, ptr %i.cj, align 2, !noalias !37645
  %i.ck = add i64 %i.bv, 4                        ; 2 uses
  %i.cl = add nuw i64 %.sroa.01.0.i.i.i.i.i, 4    ; 2 uses
  %i.cm = icmp eq i64 %i.cl, %i.ao
  br i1 %i.cm, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.preheader.i.i, !llvm.loop !37639

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block53, %vec.epilog.middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %storemerge.i.i.i.i = phi i64 [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ], [ %i.bi, %vec.epilog.middle.block ], [ %i.bb, %middle.block53 ], [ %.lcssa.unr, %.preheader.i.i.prol.loopexit ], [ %i.ck, %.preheader.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i.i, ptr %i.ae, align 8, !noalias !37640
  %i.cn = icmp eq ptr %i.ai, %i.e
  br i1 %i.cn, label %_RNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB7_18DecodeConstantTask12slice_levels0Bf_.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.val.i = load i64, ptr %i.a, align 8, !noalias !37640 ; 2 uses
  %i.co = icmp eq i64 %.val.i, 0
  br i1 %i.co, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val4.i = load ptr, ptr %i.ad, align 8, !noalias !37640, !nonnull !75, !noundef !75
  %i.cp = shl nuw i64 %.val.i, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !37640
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.m:                                             ; preds = %bb.h
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %lpad.phi.i

_RNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB7_18DecodeConstantTask12slice_levels0Bf_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37640
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB7_18DecodeConstantTask12slice_levels0Bf_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs5_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_15RepDefUnraveler12is_all_valid(ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !99, !noundef !75
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37648)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !37648, !noundef !75 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_25SparseStructuralUnraveler12is_all_valid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.d, -1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !37648, !noundef !75
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_RNvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_25SparseStructuralUnraveler12is_all_valid.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !37648, !nonnull !75, !noundef !75
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %i.f ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !range !105, !noalias !37648, !noundef !75 ; 2 uses
  %i.n = icmp ne i64 %i.m, 4
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ult i64 %i.m, 3            ; 2 uses
  %..i = select i1 %i.o, i64 96, i64 40
  %.21.i = select i1 %i.o, i64 64, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.21.i ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i8, ptr %i.r, align 8, !range !89, !noalias !37648, !noundef !75
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i64, ptr %i.q, align 8, !range !106, !noalias !37648, !noundef !75 ; 2 uses
  %i.v = xor i64 %i.u, -9223372036854775808
  %i.w = icmp slt i64 %i.u, 0
  %i.x = select i1 %i.w, i64 %i.v, i64 3          ; 4 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.g, %bb.f
  unreachable

bb.f:                                             ; preds = %bb.d
  switch i64 %i.x, label %bb.e [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.g:                                             ; preds = %bb.d
  switch i64 %i.x, label %bb.e [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !37648, !noundef !75 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i, %bb.g
  %.sroa.014.0.i = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.k ], [ %i.x, %bb.g ]
  %i.ab = icmp eq i64 %.sroa.014.0.i, 0
  br label %_RNvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_25SparseStructuralUnraveler12is_all_valid.exit

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sink19.i = phi i64 [ 16, %bb.h ], [ 8, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink19.i
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !37648, !noundef !75
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  br label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !37648, !noundef !75 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m, %bb.f
  %.sroa.012.0.i = phi i64 [ %i.af, %bb.m ], [ %i.ak, %bb.o ], [ %i.x, %bb.f ]
  %i.ah = load i64, ptr %i.p, align 8, !noalias !37648, !noundef !75
  %i.ai = icmp eq i64 %.sroa.012.0.i, %i.ah
end_hunk_2
begin_hunk_3_@_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNvXsg_B1I_NtB1I_19SimpleStructDecoderNtNtB1O_7decoder18LogicalPageDecoder5drain0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1O_:bb.a

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter7IterMutNtNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6struct10ChildStateENCNvXsg_B1J_NtB1J_19SimpleStructDecoderNtNtB1P_7decoder18LogicalPageDecoder5drain0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5R_12try_for_each4callNtB1J_19CompositeDecodeTaskINtNtNtB7_3ops12control_flow11ControlFlowB73_ENcNtB7u_5Break0E0B7u_EB1P_.exit.thread17 unwind label %bb.ao, !noalias !60445

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
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.04.0.i.i.i.i.i.i.i.i, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %.val.i.i.i.i.i.i.i, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.11.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.x, %bb.g ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !60621, !noalias !60622, !nonnull !75, !noundef !75 ; 16 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 4 uses
  %.idx8.i.i.i.i.i.i = shl i64 %.sroa.0.0.i.i.i.i.i.i.i, 2 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx8.i.i.i.i.i.i ; 11 uses
  %.idx.i.i.i.i.i.i = shl i64 %.sroa.5.0.i.i.i.i.i.i.i, 2 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i ; 3 uses
  %.idx10.i.i.i.i.i.i = shl i64 %.sroa.11.0.i.i.i.i.i.i.i, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx10.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60623)
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub nuw nsw i64 %.sroa.5.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 11 uses
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
  %i.bh = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60631, !nonnull !75 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 2 uses
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
  %i.bs = shl i64 %.sroa.02.0.i.i.i.i.i.i.i, 2
  %i.bt = add i64 %i.bs, %i.bi
  %i.bu = add i64 %.idx8.i.i.i.i.i.i, %i.ae
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
end_hunk_3
begin_hunk_4_@_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive12PageLoadTaskENCNvXsD_B23_NtB23_37StructuralPrimitiveFieldSchedulingJobNtNtB29_7decoder23StructuralSchedulingJob13schedule_next0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB29_:bb.a

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
  %i.gy = add i64 %i.gx, %i.gw
  %i.gz = add i64 %.idx8.i.i.i.i.i.i, %i.ae
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
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.8.8.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hi, %scalar.ph.prol ], [ %.sroa.8.8.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.hg, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hh = getelementptr [4 x i8], ptr %i.gv, i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.prol, ptr %i.hh, align 4, !noalias !60649
  %i.hi = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !60589

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.8.8.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.8.8.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.hi, %scalar.ph.prol ]
  %i.hj = sub i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i
  %i.hk = add i64 %i.hj, %.sroa.8.8.i.i.i.i.i.i.i.i.ph
  %i.hl = icmp ugt i64 %i.hk, -4
  br i1 %i.hl, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.8.8.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %scalar.ph ], [ %.sroa.8.8.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.8.8.i.i.i.i.i.i.i.i
  %.val10.i.i.i38.i.i.i.i.i.i.i.i = load i32, ptr %i.hm, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hn = getelementptr [4 x i8], ptr %i.gv, i64 %.sroa.8.8.i.i.i.i.i.i.i.i
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i, ptr %i.hn, align 4, !noalias !60649
  %i.ho = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ho
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.hp, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hq = getelementptr [4 x i8], ptr %i.gv, i64 %i.ho
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.1, ptr %i.hq, align 4, !noalias !60649
  %i.hr = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hr
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.hs, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.ht = getelementptr [4 x i8], ptr %i.gv, i64 %i.hr
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.2, ptr %i.ht, align 4, !noalias !60649
  %i.hu = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hu
  %.val10.i.i.i38.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.hv, align 4, !alias.scope !60647, !noalias !60648, !noundef !75
  %i.hw = getelementptr [4 x i8], ptr %i.gv, i64 %i.hu
  store i32 %.val10.i.i.i38.i.i.i.i.i.i.i.i.3, ptr %i.hw, align 4, !noalias !60649
  %i.hx = add nuw i64 %.sroa.8.8.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, %i.aj
  br i1 %i.hy, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !60590

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.x
  %i.hz = icmp eq i64 %.sroa.11.0.i.i.i.i.i.i.i, 0
  br i1 %i.hz, label %.loopexit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i
  %i.ia = load ptr, ptr %i.s, align 8, !alias.scope !60630, !noalias !60650, !nonnull !75, !noundef !75 ; 2 uses
  %i.ib = getelementptr [4 x i8], ptr %i.ia, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 6 uses
  %min.iters.check70 = icmp ult i64 %.sroa.11.0.i.i.i.i.i.i.i, 16
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %bb.z
  %i.ic = ptrtoaddr ptr %i.ia to i64
  %i.id = add i64 %.idx.i.i.i.i.i.i, %i.ic
  %i.ie = shl i64 %.sroa.02.0.i.i.i.i.i.i.i, 2
  %i.if = add i64 %i.id, %i.ie
  %i.ig = add i64 %.idx8.i.i.i.i.i.i, %i.ae
  %i.ih = sub i64 %i.ig, %i.if
  %diff.check68 = icmp ugt i64 %i.ih, -32
  br i1 %diff.check68, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck67
  %n.vec72 = and i64 %.sroa.11.0.i.i.i.i.i.i.i, -8 ; 4 uses
  %i.ii = add i64 %i.aj, %n.vec72
  %i.ij = getelementptr [4 x i8], ptr %i.ib, i64 %i.aj
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body73 ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index74 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %wide.load75 = load <4 x i32>, ptr %i.ik, align 4, !alias.scope !60651, !noalias !60652
  %wide.load76 = load <4 x i32>, ptr %i.il, align 4, !alias.scope !60651, !noalias !60652
  %i.im = getelementptr [4 x i8], ptr %i.ij, i64 %index74 ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 16
  store <4 x i32> %wide.load75, ptr %i.im, align 4, !noalias !60653
  store <4 x i32> %wide.load76, ptr %i.in, align 4, !noalias !60653
  %index.next77 = add nuw i64 %index74, 8         ; 2 uses
  %i.io = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.io, label %middle.block78, label %vector.body73, !llvm.loop !60603

middle.block78:                                   ; preds = %vector.body73
  %cmp.n79 = icmp eq i64 %.sroa.11.0.i.i.i.i.i.i.i, %n.vec72
  br i1 %cmp.n79, label %.loopexit.i.i.i.i.i, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %vector.memcheck67, %bb.z, %middle.block78
  %.ph152 = phi i64 [ %i.aj, %vector.memcheck67 ], [ %i.aj, %bb.z ], [ %i.ii, %middle.block78 ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck67 ], [ 0, %bb.z ], [ %n.vec72, %middle.block78 ] ; 3 uses
  %xtraiter154 = and i64 %.sroa.11.0.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %scalar.ph69.prol.loopexit, label %scalar.ph69.prol

scalar.ph69.prol:                                 ; preds = %scalar.ph69.preheader, %scalar.ph69.prol
  %i.ip = phi i64 [ %i.is, %scalar.ph69.prol ], [ %.ph152, %scalar.ph69.preheader ] ; 2 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.it, %scalar.ph69.prol ], [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %scalar.ph69.preheader ] ; 2 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %scalar.ph69.prol ], [ 0, %scalar.ph69.preheader ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.iq, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.ir = getelementptr [4 x i8], ptr %i.ib, i64 %i.ip
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.prol, ptr %i.ir, align 4, !noalias !60653
  %i.is = add i64 %i.ip, 1                        ; 2 uses
  %i.it = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %scalar.ph69.prol.loopexit, label %scalar.ph69.prol, !llvm.loop !60604

scalar.ph69.prol.loopexit:                        ; preds = %scalar.ph69.prol, %scalar.ph69.preheader
  %.unr = phi i64 [ %.ph152, %scalar.ph69.preheader ], [ %i.is, %scalar.ph69.prol ]
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %scalar.ph69.preheader ], [ %i.it, %scalar.ph69.prol ]
  %i.iu = sub nsw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.ph, %.sroa.11.0.i.i.i.i.i.i.i
  %i.iv = icmp ugt i64 %i.iu, -4
  br i1 %i.iv, label %.loopexit.i.i.i.i.i, label %scalar.ph69

scalar.ph69:                                      ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69
  %i.iw = phi i64 [ %i.jl, %scalar.ph69 ], [ %.unr, %scalar.ph69.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i = phi i64 [ %i.jm, %scalar.ph69 ], [ %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i.unr, %scalar.ph69.prol.loopexit ] ; 5 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i = load i32, ptr %i.ix, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.iy = getelementptr [4 x i8], ptr %i.ib, i64 %i.iw
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i, ptr %i.iy, align 4, !noalias !60653
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.ja, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.jb = getelementptr [4 x i8], ptr %i.ib, i64 %i.iw
  %i.jc = getelementptr i8, ptr %i.jb, i64 4
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.1, ptr %i.jc, align 4, !noalias !60653
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.je, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.jf = getelementptr [4 x i8], ptr %i.ib, i64 %i.iw
  %i.jg = getelementptr i8, ptr %i.jf, i64 8
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.2, ptr %i.jg, align 4, !noalias !60653
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %.val10.i3.i.i42.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.ji, align 4, !alias.scope !60651, !noalias !60652, !noundef !75
  %i.jj = getelementptr [4 x i8], ptr %i.ib, i64 %i.iw
  %i.jk = getelementptr i8, ptr %i.jj, i64 12
  store i32 %.val10.i3.i.i42.i.i.i.i.i.i.i.i.3, ptr %i.jk, align 4, !noalias !60653
  %i.jl = add i64 %i.iw, 4
  %i.jm = add nuw i64 %.sroa.01.0.i2.i.i41.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, %.sroa.11.0.i.i.i.i.i.i.i
  br i1 %i.jn, label %.loopexit.i.i.i.i.i, label %scalar.ph69, !llvm.loop !60605

bb.aa:                                            ; preds = %bb.e
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.thread4.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block78, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.gs, %_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs40k4W9msRzi_5alloc11collections9vec_deque4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2T_9EnumeratepEB25_4fold9enumeratemuNCINvNvB25_8for_each4callTjmENCINvMs1_B17_INtB17_8VecDequemE10write_iterBP_E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.8.5.i.i.i.i.i.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtBY_8adapters3map8map_foldRmmuNvYmNtNtBb_5clone5Clone5cloneNCINvNvXs_NtB1L_9enumerateINtB2T_9EnumeratepEBS_4fold9enumeratemuNCINvNvBS_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB4n_8VecDequemE10write_iterINtNtB1L_6cloned6ClonedINtNtB4n_4iter4ItermEEE0E0E0E0ECsjjpCCFGI3ul_14lance_encoding.exit.i.i39.i.i.i.i.i.i.i.i ], [ %i.al, %middle.block78 ], [ %.sroa.8.2.i.i.i.i.i.i.i.i, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters6cloned14clone_try_foldmuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2q_9try_trait17NeverShortCircuituEENCINvNvXs_NtB1I_4takeINtB3P_4TakepEBL_8try_fold5checkmuB30_NCINvMB33_B30_10wrap_mut_2umNCINvNvXs_NtB1I_9enumerateINtB5e_9EnumeratepEBL_4fold9enumeratemuNCINvNvBL_8for_each4callTjmENCINvMs1_NtNtCs40k4W9msRzi_5alloc11collections9vec_dequeINtB6I_8VecDequemE10write_iterIB41_INtNtB1I_12by_ref_sized10ByRefSizedINtB1G_6ClonedINtNtB6I_4iter4ItermEEEEE0E0E0E0E0E0B2l_ECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.al, %scalar.ph69 ], [ %i.al, %scalar.ph69.prol.loopexit ]
  %i.jp = add i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %i.bc
  store i64 %i.jp, ptr %i.r, align 8, !alias.scope !60630, !noalias !60631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !60620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60617
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.59.0.copyload.i.i.i) ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.08.0.copyload.i.i.i, ptr %i.jq, align 8, !noalias !60620
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.59.0.copyload.i.i.i, ptr %i.jr, align 8, !noalias !60620
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.js, align 8, !noalias !60620
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !60654
  %i.jt = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !60654 ; 4 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.ab, label %bb.ae, !prof !77

bb.ab:                                            ; preds = %.loopexit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #66
          to label %.noexc14.i.i.i.i.i unwind label %bb.ac, !noalias !60620

.noexc14.i.i.i.i.i:                               ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCNvXsD_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtBL_37StructuralPrimitiveFieldSchedulingJobNtNtBR_7decoder23StructuralSchedulingJob13schedule_next00EBR_(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #67
          to label %.thread.i.i.i.i.i unwind label %bb.ad, !noalias !60620

bb.ad:                                            ; preds = %bb.ac
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !60620
  unreachable

bb.ae:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jt, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !60620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60620
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !60620
  %i.jx = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !60620 ; 5 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.af, label %bb.al, !prof !77
end_hunk_4
