Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/paths-f58747212cd60948.paths.72c98c20f93989da-cgu.0?download=true
inline.NumInlined: 58
inline.NumDeleted: 32
begin_hunk_0_@_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath7display:bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath9ends_with(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path10__ends_with(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 3 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %.not = icmp eq ptr %i.b, null
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.c
  %i.d = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 3 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %.not = icmp eq ptr %i.b, null
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.c
  %i.d = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 3 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %.not = icmp eq ptr %i.b, null
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.c
  %i.d = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsh_Cs9R0CJ7nmiec_5pathsNtB5_7AbsPath9normalize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.i.i.i.i = alloca [7 x i8], align 1     ; 4 uses
  %.sroa.10.i.i.i.i = alloca [32 x i8], align 8   ; 4 uses
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.8.i = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.11.i = alloca [32 x i8], align 8         ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.7.sroa.0.i = alloca [7 x i8], align 1    ; 6 uses
  %.sroa.7.sroa.8.i = alloca [32 x i8], align 1   ; 6 uses
  %i.d = alloca [120 x i8], align 8               ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [120 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  call void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !61
  store i8 -2, ptr %i.g, align 8, !noalias !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  call void @_RNvXsi_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h), !noalias !70
  %i.i = load i8, ptr %i.a, align 8, !range !73, !noalias !74, !noundef !4 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0.copyload.i.i.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !74 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !74 ; 2 uses
  %narrow27.i.i.i.i = call i8 @llvm.usub.sat.i8(i8 %i.i, i8 5)
  switch i8 %narrow27.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.s, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !76
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i

bb.d:                                             ; preds = %bb.b
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i

bb.e:                                             ; preds = %bb.b
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i.i.i.i) ]
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.7.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.c ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.f ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.b ]
  %.sroa.6.0.i.i = phi ptr [ undef, %bb.a ], [ %.sroa.53.0.copyload.i.i.i.i, %bb.c ], [ %.sroa.53.0.copyload.i.i.i.i, %bb.f ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.a ], [ %i.i, %bb.c ], [ 9, %bb.f ], [ 7, %bb.d ], [ 8, %bb.e ], [ 6, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  store i8 %.sroa.0.0.i.i, ptr %i.g, align 8, !alias.scope !62, !noalias !77
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i.i.i.i, i64 7, i1 false), !noalias !77
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.6.0.i.i, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !62, !noalias !77
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.7.0.i.i, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !alias.scope !62, !noalias !77
  %.sroa.710.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.710.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i.i, i64 32, i1 false), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %or.cond = icmp ult i8 %.sroa.0.0.i.i, 6
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i
  store i64 0, ptr %i.f, align 8, !noalias !57
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !57
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.528.0..sroa_idx.i, align 8, !noalias !57
  br label %bb.m

bb.h:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtCs9p4rgIae0RV_6camino13Utf8ComponentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableNtBO_14Utf8ComponentsE4peek0ECs9R0CJ7nmiec_5paths.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !57
  store i8 %.sroa.0.0.i.i, ptr %i.e, align 8, !noalias !57
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4.0..sroa_idx.i.i, i64 55, i1 false), !noalias !57
  store i8 -2, ptr %i.g, align 8, !noalias !57
  %i.j = call { ptr, i64 } @_RNvMst_Cs9p4rgIae0RV_6caminoNtB5_13Utf8Component9as_os_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e), !noalias !61 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_RNvXsJ_Cs9p4rgIae0RV_6caminoNtB5_11Utf8PathBufINtNtCshzWfHUSfYae_4core7convert4FromReE4fromCs9R0CJ7nmiec_5paths.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !81
  %i.o = call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef 1) #12, !noalias !81 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.010.ph.i.i = phi i64 [ 1, %bb.j ], [ 0, %bb.h ]
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.010.ph.i.i, i64 %i.l) #13, !noalias !85
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.k, i64 %i.l, i1 false), !noalias !86
  br label %_RNvXsJ_Cs9p4rgIae0RV_6caminoNtB5_11Utf8PathBufINtNtCshzWfHUSfYae_4core7convert4FromReE4fromCs9R0CJ7nmiec_5paths.exit.i

_RNvXsJ_Cs9p4rgIae0RV_6caminoNtB5_11Utf8PathBufINtNtCshzWfHUSfYae_4core7convert4FromReE4fromCs9R0CJ7nmiec_5paths.exit.i: ; preds = %bb.l, %bb.i
  %i.q = phi ptr [ %i.o, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.i ]
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !78, !noalias !87
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.q, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !78, !noalias !87
  %.sroa.58.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.l, ptr %.sroa.58.0..sroa_idx.i62.i, align 8, !alias.scope !78, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !57
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsJ_Cs9p4rgIae0RV_6caminoNtB5_11Utf8PathBufINtNtCshzWfHUSfYae_4core7convert4FromReE4fromCs9R0CJ7nmiec_5paths.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.g, i64 120, i1 false), !noalias !57
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.730.sroa.6.0..sroa.730.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.730.sroa.7.0..sroa.730.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.730.sroa.8.0..sroa.730.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_RINvMCs9p4rgIae0RV_6caminoNtB3_11Utf8PathBuf4pushReECs9R0CJ7nmiec_5paths.exit.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8.i)
  %.sroa.029.0.copyload.i = load i8, ptr %i.d, align 8, !noalias !57 ; 3 uses
  %.sroa.730.sroa.6.0.copyload.i = load ptr, ptr %.sroa.730.sroa.6.0..sroa.730.0..sroa_idx.sroa_idx.i, align 8, !noalias !57
  %.sroa.730.sroa.7.0.copyload.i = load i64, ptr %.sroa.730.sroa.7.0..sroa.730.0..sroa_idx.sroa_idx.i, align 8, !noalias !57
  store i8 -2, ptr %i.d, align 8, !noalias !57
  %.not59.i = icmp eq i8 %.sroa.029.0.copyload.i, -2
  br i1 %.not59.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.730.0..sroa_idx.i, i64 7, i1 false), !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.7.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.730.sroa.8.0..sroa.730.0..sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !57
  %.not61.i = icmp eq i8 %.sroa.029.0.copyload.i, -1
  br i1 %.not61.i, label %_RNvCs9R0CJ7nmiec_5paths14normalize_path.exit, label %bb.z

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXsi_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %bb.r unwind label %.loopexit65.i, !noalias !61

.loopexit65.i:                                    ; preds = %.invoke.i, %bb.ac, %bb.ab, %bb.p
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit65.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit65.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %.val.i.i = load i64, ptr %i.f, align 8, !alias.scope !88, !noalias !57 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i, 0
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs9R0CJ7nmiec_5paths.exit.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %bb.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i = load ptr, ptr %i.t, align 8, !alias.scope !88, !noalias !57, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #12, !noalias !91
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs9R0CJ7nmiec_5paths.exit.i

bb.r:                                             ; preds = %bb.p
  %i.u = load i8, ptr %i.b, align 8, !range !73, !noalias !57, !noundef !4 ; 3 uses
  %.not60.i = icmp eq i8 %i.u, -1
  br i1 %.not60.i, label %_RNvCs9R0CJ7nmiec_5paths14normalize_path.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.535.0.copyload.i = load ptr, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !57 ; 3 uses
  %.sroa.638.0.copyload.i = load i64, ptr %.sroa.638.0..sroa_idx.i, align 8, !noalias !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %narrow64.i = call i8 @llvm.usub.sat.i8(i8 %i.u, i8 5)
  switch i8 %narrow64.i, label %default.unreachable [
    i8 0, label %bb.u
    i8 1, label %bb.y
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.z
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.533.0..sroa_idx.i, i64 7, i1 false), !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.741.0..sroa_idx.i, i64 32, i1 false), !noalias !57
  br label %bb.y

bb.v:                                             ; preds = %bb.s
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.535.0.copyload.i) ]
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.s
  %.sroa.043.0.i = phi i8 [ %i.u, %bb.u ], [ 9, %bb.x ], [ 7, %bb.v ], [ 8, %bb.w ], [ 6, %bb.s ]
  %.sroa.9.0.i.a = phi ptr [ %.sroa.535.0.copyload.i, %bb.u ], [ %.sroa.535.0.copyload.i, %bb.x ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.s ]
  %.sroa.10.0.i.a = phi i64 [ %.sroa.638.0.copyload.i, %bb.u ], [ %.sroa.638.0.copyload.i, %bb.x ], [ undef, %bb.v ], [ undef, %bb.w ], [ undef, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false), !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.7.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i, i64 32, i1 false), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.sroa.7.sroa.6.0.i.a = phi ptr [ %.sroa.730.sroa.6.0.copyload.i, %bb.o ], [ %.sroa.9.0.i.a, %bb.y ] ; 2 uses
  %.sroa.7.sroa.7.0.i.a = phi i64 [ %.sroa.730.sroa.7.0.copyload.i, %bb.o ], [ %.sroa.10.0.i.a, %bb.y ] ; 2 uses
  %.sroa.04.0.i = phi i8 [ %.sroa.029.0.copyload.i, %bb.o ], [ %.sroa.043.0.i, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !57
  store i8 %.sroa.04.0.i, ptr %i.c, align 8, !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx8.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.0.i, i64 7, i1 false), !noalias !57
  store ptr %.sroa.7.sroa.6.0.i.a, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx8.sroa_idx.i, align 8, !noalias !57
  store i64 %.sroa.7.sroa.7.0.i.a, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx8.sroa_idx.i, align 8, !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx8.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.7.sroa.8.i, i64 32, i1 false), !noalias !57
  %i.v = add i8 %.sroa.04.0.i, -6
  %i.w = zext i8 %i.v to i64
  %i.x = icmp ugt i8 %.sroa.04.0.i, 5
  %i.y = add nuw nsw i64 %i.w, 1
  %i.z = select i1 %i.x, i64 %i.y, i64 0
  switch i64 %i.z, label %bb.t [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
    i64 2, label %_RINvMCs9p4rgIae0RV_6caminoNtB3_11Utf8PathBuf4pushReECs9R0CJ7nmiec_5paths.exit.i
    i64 3, label %bb.ac
    i64 4, label %.invoke.i
  ], !prof !92

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
          to label %bb.ad unwind label %.loopexit.split-lp.i, !noalias !61

bb.ab:                                            ; preds = %bb.z
  %i.aa = invoke { ptr, i64 } @_RNvMst_Cs9p4rgIae0RV_6caminoNtB5_13Utf8Component9as_os_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c)
          to label %bb.ae unwind label %.loopexit65.i, !noalias !61 ; 2 uses

_RINvMCs9p4rgIae0RV_6caminoNtB3_11Utf8PathBuf4pushReECs9R0CJ7nmiec_5paths.exit.i: ; preds = %.invoke.i, %bb.ac, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.i)
  br label %bb.n

bb.ac:                                            ; preds = %bb.z
  %i.ab = invoke noundef zeroext i1 @_RNvMCs9p4rgIae0RV_6caminoNtB2_11Utf8PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvMCs9p4rgIae0RV_6caminoNtB3_11Utf8PathBuf4pushReECs9R0CJ7nmiec_5paths.exit.i unwind label %.loopexit65.i, !noalias !61 ; 0 uses

.invoke.i:                                        ; preds = %bb.ae, %bb.z
  %i.ac = phi ptr [ %i.ae, %bb.ae ], [ %.sroa.7.sroa.6.0.i.a, %bb.z ]
  %i.ad = phi i64 [ %i.af, %bb.ae ], [ %.sroa.7.sroa.7.0.i.a, %bb.z ]
  invoke void @_RNvMsr_NtCscAsMj0W7j8b_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %_RINvMCs9p4rgIae0RV_6caminoNtB3_11Utf8PathBuf4pushReECs9R0CJ7nmiec_5paths.exit.i unwind label %.loopexit65.i, !noalias !61

bb.ad:                                            ; preds = %bb.aa
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ae = extractvalue { ptr, i64 } %i.aa, 0
  %i.af = extractvalue { ptr, i64 } %i.aa, 1
  br label %.invoke.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs9R0CJ7nmiec_5paths.exit.i: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %bb.q
  resume { ptr, i32 } %lpad.phi.i

_RNvCs9R0CJ7nmiec_5paths14normalize_path.exit:    ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMss_Cs9R0CJ7nmiec_5pathsNtB5_7RelPath11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %.sroa.01.0.copyload = load i64, ptr %i.b, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = invoke noundef zeroext i1 @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %_RNvXsn_Cs9R0CJ7nmiec_5pathsNtB5_10RelPathBufINtNtCshzWfHUSfYae_4core7convert7TryFromNtCs9p4rgIae0RV_6camino11Utf8PathBufE8try_from.exit unwind label %bb.b, !noalias !93

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %i.e, label %common.resume, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.01.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #12, !noalias !97
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %bb.b, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i ], [ %i.f, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RNvXsn_Cs9R0CJ7nmiec_5pathsNtB5_10RelPathBufINtNtCshzWfHUSfYae_4core7convert7TryFromNtCs9p4rgIae0RV_6camino11Utf8PathBufE8try_from.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  br i1 %i.c, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtCs9R0CJ7nmiec_5paths10RelPathBufNtCs9p4rgIae0RV_6camino11Utf8PathBufE6unwrapBJ_.exit, !prof !105

bb.c:                                             ; preds = %_RNvXsn_Cs9R0CJ7nmiec_5pathsNtB5_10RelPathBufINtNtCshzWfHUSfYae_4core7convert7TryFromNtCs9p4rgIae0RV_6camino11Utf8PathBufE8try_from.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  store i64 %.sroa.01.0.copyload, ptr %i.a, align 8, !noalias !100
  %.sroa.4.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.sroa.5.0..sroa_idx6, align 8, !noalias !100
  %.sroa.4.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.4.sroa.6.0..sroa_idx8, align 8, !noalias !100
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13
          to label %bb.e unwind label %bb.d, !noalias !106

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !107, !noalias !106 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %common.resume, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.d
  %.val1.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa_idx6, align 8, !alias.scope !107, !noalias !106, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #12, !noalias !110
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtCs9R0CJ7nmiec_5paths10RelPathBufNtCs9p4rgIae0RV_6camino11Utf8PathBufE6unwrapBJ_.exit: ; preds = %_RNvXsn_Cs9R0CJ7nmiec_5pathsNtB5_10RelPathBufINtNtCshzWfHUSfYae_4core7convert7TryFromNtCs9p4rgIae0RV_6camino11Utf8PathBufE8try_from.exit
  store i64 %.sroa.01.0.copyload, ptr %0, align 8, !alias.scope !106
  %.sroa.4.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.sroa.5.0..sroa_idx, align 8, !alias.scope !106
  %.sroa.4.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.4.sroa.6.0..sroa_idx, align 8, !alias.scope !106
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs0_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !111, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !111, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !111
  store ptr %i.d, ptr %i.b, align 8, !noalias !114
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.g, align 8, !noalias !114
  %i.h = tail call noundef zeroext i1 @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f), !noalias !111
  br i1 %i.h, label %_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf7as_path.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  store ptr %i.b, ptr %i.a, align 8, !noalias !114
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9p4rgIae0RV_6camino8Utf8PathNtB6_7Display3fmtCs9R0CJ7nmiec_5paths, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !114
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #15, !noalias !111
  unreachable

_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf7as_path.exit: ; preds = %bb.a
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9p4rgIae0RV_6camino8Utf8PathNtB6_7Display3fmtCs9R0CJ7nmiec_5paths(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXs6_Cs9p4rgIae0RV_6caminoNtB5_8Utf8PathNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs4_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufINtNtCshzWfHUSfYae_4core7convert5AsRefNtB5_7AbsPathE6as_ref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !117, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !117, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !117
  store ptr %i.d, ptr %i.b, align 8, !noalias !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.g, align 8, !noalias !120
  %i.h = tail call noundef zeroext i1 @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f), !noalias !117
  br i1 %i.h, label %_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf7as_path.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120
  store ptr %i.b, ptr %i.a, align 8, !noalias !120
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9p4rgIae0RV_6camino8Utf8PathNtB6_7Display3fmtCs9R0CJ7nmiec_5paths, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !120
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #15, !noalias !117
  unreachable

_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf7as_path.exit: ; preds = %bb.a
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !117
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs5_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufINtNtCshzWfHUSfYae_4core6borrow6BorrowNtB5_7AbsPathE6borrow(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !123, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !123, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  store ptr %i.d, ptr %i.b, align 8, !noalias !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.g, align 8, !noalias !126
  %i.h = tail call noundef zeroext i1 @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f), !noalias !123
  br i1 %i.h, label %_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf7as_path.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  store ptr %i.b, ptr %i.a, align 8, !noalias !126
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtCs9p4rgIae0RV_6camino8Utf8PathNtB6_7Display3fmtCs9R0CJ7nmiec_5paths, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !126
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #15, !noalias !123
  unreachable

_RNvMs9_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBuf7as_path.exit: ; preds = %bb.a
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  ret { ptr, i64 } %i.j
}
end_hunk_0
