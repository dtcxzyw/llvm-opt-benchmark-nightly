Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.01?download=true
inline.NumInlined: 8879
inline.NumDeleted: 4283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEINtNtNtB8_7sources4once4OnceB27_EEIB14_INtNtB6_4skip4SkipB1H_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter:bb.a
  %i.z = phi i64 [ 1, %bb.i ], [ %.pre18, %bb.k ], [ %.sroa.05.0.i, %bb.j ], [ 1, %bb.h ]
  %i.aa = phi i64 [ %i.m, %bb.i ], [ %.pre, %bb.k ], [ %i.u, %bb.j ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
  %i.ab = load i64, ptr %i.c, align 8, !noundef !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !37, !noundef !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = call i64 @llvm.uadd.sat.i64(i64 %i.aa, i64 %i.ab)
  %i.ah = and i64 %i.ad, %i.z
  %or.cond.not = icmp ne i64 %i.ah, 0             ; 2 uses
  %i.ai = add i64 %i.af, %i.y                     ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %i.y
  %.sroa.46.0 = select i1 %or.cond.not, i64 %i.ai, i64 undef
  %narrow = select i1 %or.cond.not, i1 %i.aj, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  store i64 %i.ag, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0, ptr %i.al, align 8
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEINtNtNtB8_7sources4once4OnceB23_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit17

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19174)
  %i.am = load ptr, ptr %i.h, align 8, !noalias !19174, !noundef !29
  %.not.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not8.i12, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  br i1 %.not8.i12, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp ne i32 %i.e, -1
  %i.ao = zext i1 %i.an to i64                    ; 2 uses
  store i64 %i.ao, ptr %0, align 8, !alias.scope !19175
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ap, align 8, !alias.scope !19175
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.aq, align 8, !alias.scope !19175
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEINtNtNtB8_7sources4once4OnceB23_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit17

bb.p:                                             ; preds = %bb.n
  store i64 0, ptr %0, align 8, !alias.scope !19174
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ar, align 8, !alias.scope !19174
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.as, align 8, !alias.scope !19174
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEINtNtNtB8_7sources4once4OnceB23_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit17

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19174
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !19174
  %i.at = load i64, ptr %i.a, align 8, !noalias !19174, !noundef !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !37, !noalias !19174, !noundef !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !19174 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19174
  %.val.i13 = load i32, ptr %1, align 8, !range !56, !noalias !19174, !noundef !29
  %i.ay = icmp ne i32 %.val.i13, -1
  %i.az = zext i1 %i.ay to i64                    ; 2 uses
  %i.ba = call i64 @llvm.uadd.sat.i64(i64 %i.at, i64 %i.az)
  %i.bb = trunc nuw i64 %i.av to i1               ; 2 uses
  %i.bc = add i64 %i.ax, %i.az                    ; 2 uses
  %i.bd = icmp uge i64 %i.bc, %i.ax
  %.sroa.46.0.i14 = select i1 %i.bb, i64 %i.bc, i64 undef
  %narrow.i15 = select i1 %i.bb, i1 %i.bd, i1 false
  %.sroa.05.0.i16 = zext i1 %narrow.i15 to i64
  store i64 %i.ba, ptr %0, align 8, !alias.scope !19174
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i16, ptr %i.be, align 8, !alias.scope !19174
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0.i14, ptr %i.bf, align 8, !alias.scope !19174
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEINtNtNtB8_7sources4once4OnceB23_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit17

bb.r:                                             ; preds = %bb.m
  tail call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEINtNtNtB8_7sources4once4OnceB23_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit17
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2r_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB31_9into_iter8IntoIterB3f_ENCNCNvMs0_NtNtNtB3l_5rules5isort10categorizeNtB5i_12KnownModules3new00ENCB5c_0EIB4m_B4B_NCB5c_s_0EEIB4m_B4B_NCB5c_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3l_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(240) %1) unnamed_addr #5 personality ptr @rust_eh_personality !guid !19230 {
bb.a:
  %.sroa.7 = alloca i64, align 8                  ; 8 uses
  %.sroa.12 = alloca i64, align 8                 ; 7 uses
  %i.a = load i64, ptr %1, align 8, !range !51, !noundef !29 ; 7 uses
  %.not = icmp eq i64 %i.a, -3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !noundef !29
  %.not8 = icmp eq ptr %i.c, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.r, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val12 = load ptr, ptr %i.d, align 8, !nonnull !29, !noundef !29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val13 = load ptr, ptr %i.e, align 8, !nonnull !29, !noundef !29
  %i.f = ptrtoint ptr %.val13 to i64
  %i.g = ptrtoint ptr %.val12 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24                  ; 2 uses
  store i64 %i.i, ptr %0, align 8, !alias.scope !19231
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8, !alias.scope !19231
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit54

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.k, align 8
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit54

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit54: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB24_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB7_3map3MapINtNtB2E_9into_iter8IntoIterB2S_ENCNCNvMs0_NtNtNtB2Y_5rules5isort10categorizeNtB4V_12KnownModules3new00ENCB4P_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit28.i50, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i24, %bb.v, %bb.u, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit, %bb.e, %bb.d
  %.sink59 = phi i64 [ 16, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit ], [ 16, %bb.d ], [ 16, %bb.e ], [ 16, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i24 ], [ 8, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB24_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB7_3map3MapINtNtB2E_9into_iter8IntoIterB2S_ENCNCNvMs0_NtNtNtB2Y_5rules5isort10categorizeNtB4V_12KnownModules3new00ENCB4P_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit28.i50 ], [ 16, %bb.v ], [ 16, %bb.u ]
  %.sroa.46.0.sink = phi i64 [ %.sroa.46.0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit ], [ %i.i, %bb.d ], [ 0, %bb.e ], [ %.sroa.46.0.i32, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i24 ], [ %.sink.i.i27.i51, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB24_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB7_3map3MapINtNtB2E_9into_iter8IntoIterB2S_ENCNCNvMs0_NtNtNtB2Y_5rules5isort10categorizeNtB4V_12KnownModules3new00ENCB4P_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit28.i50 ], [ 0, %bb.v ], [ %i.ch, %bb.u ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink59
  store i64 %.sroa.46.0.sink, ptr %i.l, align 8
  ret void

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19233)
  %.not.i = icmp eq i64 %i.a, -2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !19233, !noundef !29
  %.not8.i = icmp eq ptr %i.n, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i, label %bb.n, label %bb.k

bb.h:                                             ; preds = %bb.f
  br i1 %.not8.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val12.i = load ptr, ptr %i.o, align 8, !alias.scope !19233, !nonnull !29, !noundef !29
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val13.i = load ptr, ptr %i.p, align 8, !alias.scope !19233, !nonnull !29, !noundef !29
  %i.q = ptrtoint ptr %.val13.i to i64
  %i.r = ptrtoint ptr %.val12.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 24                  ; 2 uses
  store i64 1, ptr %.sroa.7, align 8, !alias.scope !19234
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %.sroa.7, align 8, !alias.scope !19232
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit

bb.k:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i64 %i.a, -1
  br i1 %.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !19235, !nonnull !29, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !19235, !nonnull !29, !noundef !29
  %i.w = ptrtoint ptr %.val4.i.i.i.i to i64
  %i.x = ptrtoint ptr %.val.i.i.i.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.7.0.i.i.i = phi i64 [ %i.z, %bb.l ], [ 0, %bb.k ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !range !31, !alias.scope !19236, !noundef !29
  %.not55.i.i.i = icmp eq i64 %i.ab, -1
  br i1 %.not55.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i63.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !19237, !nonnull !29, !noundef !29
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val4.i64.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !19237, !nonnull !29, !noundef !29
  %i.ae = ptrtoint ptr %.val4.i64.i.i.i to i64
  %i.af = ptrtoint ptr %.val.i63.i.i.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = udiv exact i64 %i.ag, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i: ; preds = %bb.m, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.ah, %bb.m ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i ]
  %i.ai = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ak = load i64, ptr %i.aj, align 8, !range !52, !alias.scope !19236, !noundef !29
  %.not56.i.i.i = icmp eq i64 %i.ak, -1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !19236
  %i.am = icmp eq i64 %.val.i.i.i, 0
  %or.cond.i.i.i = select i1 %.not56.i.i.i, i1 true, i1 %i.am ; 3 uses
  %spec.select.i = select i1 %or.cond.i.i.i, i64 %i.ai, i64 undef
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.i = load ptr, ptr %i.an, align 8, !alias.scope !19233, !nonnull !29, !noundef !29
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val11.i = load ptr, ptr %i.ao, align 8, !alias.scope !19233, !nonnull !29, !noundef !29
  %i.ap = ptrtoint ptr %.val11.i to i64
  %i.aq = ptrtoint ptr %.val.i to i64
  %i.ar = sub nuw i64 %i.ap, %i.aq
  %i.as = udiv exact i64 %i.ar, 24                ; 2 uses
  %i.at = add nuw nsw i64 %i.as, %i.ai
  %i.au = add i64 %i.as, %spec.select.i           ; 2 uses
  %i.av = icmp uge i64 %i.au, %i.ai
  %.sroa.46.0.i = select i1 %or.cond.i.i.i, i64 %i.au, i64 undef
  %narrow.i = select i1 %or.cond.i.i.i, i1 %i.av, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %.sroa.05.0.i, ptr %.sroa.7, align 8, !alias.scope !19232
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit

bb.n:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19241)
  %.not.i.i14.i = icmp eq i64 %i.a, -1
  br i1 %.not.i.i14.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i15.i = load ptr, ptr %i.aw, align 8, !alias.scope !19242, !nonnull !29, !noundef !29
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i16.i = load ptr, ptr %i.ax, align 8, !alias.scope !19242, !nonnull !29, !noundef !29
  %i.ay = ptrtoint ptr %.val4.i.i.i16.i to i64
  %i.az = ptrtoint ptr %.val.i.i.i15.i to i64
  %i.ba = sub nuw i64 %i.ay, %i.az
  %i.bb = udiv exact i64 %i.ba, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i: ; preds = %bb.o, %bb.n
  %.sroa.7.0.i.i18.i = phi i64 [ %i.bb, %bb.o ], [ 0, %bb.n ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !range !31, !alias.scope !19243, !noundef !29
  %.not55.i.i19.i = icmp eq i64 %i.bd, -1
  br i1 %.not55.i.i19.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i, label %bb.p

bb.p:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i63.i.i20.i = load ptr, ptr %i.be, align 8, !alias.scope !19244, !nonnull !29, !noundef !29
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val4.i64.i.i21.i = load ptr, ptr %i.bf, align 8, !alias.scope !19244, !nonnull !29, !noundef !29
  %i.bg = ptrtoint ptr %.val4.i64.i.i21.i to i64
  %i.bh = ptrtoint ptr %.val.i63.i.i20.i to i64
  %i.bi = sub nuw i64 %i.bg, %i.bh
  %i.bj = udiv exact i64 %i.bi, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i: ; preds = %bb.p, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i
  %.sroa.8.0.i.i23.i = phi i64 [ %i.bj, %bb.p ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i ]
  %i.bk = add nuw nsw i64 %.sroa.8.0.i.i23.i, %.sroa.7.0.i.i18.i ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bm = load i64, ptr %i.bl, align 8, !range !52, !alias.scope !19243, !noundef !29
  %.not56.i.i24.i = icmp eq i64 %i.bm, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i.i25.i = load i64, ptr %i.bn, align 8, !alias.scope !19243
  %i.bo = icmp eq i64 %.val.i.i25.i, 0
  %or.cond.i.i26.i = select i1 %.not56.i.i24.i, i1 true, i1 %i.bo
  br i1 %or.cond.i.i26.i, label %bb.q, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit

bb.q:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i
  store i64 %i.bk, ptr %.sroa.12, align 8, !alias.scope !19245
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i, %bb.q, %bb.i, %bb.j, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i
  %.sroa.0.0 = phi i64 [ 0, %bb.j ], [ %i.t, %bb.i ], [ %i.at, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i ], [ %i.bk, %bb.q ], [ %i.bk, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i ]
  %.sink33.i.sroa.phi = phi ptr [ %.sroa.12, %bb.j ], [ %.sroa.12, %bb.i ], [ %.sroa.12, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i ], [ %.sroa.7, %bb.q ], [ %.sroa.7, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i ]
  %.sroa.46.0.sink.i = phi i64 [ 0, %bb.j ], [ %i.t, %bb.i ], [ %.sroa.46.0.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i ], [ 1, %bb.q ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i ]
  store i64 %.sroa.46.0.sink.i, ptr %.sink33.i.sroa.phi, align 8, !alias.scope !19232
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8. = load i64, ptr %.sroa.7, align 8, !range !37, !noundef !29
  %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.16. = load i64, ptr %.sroa.12, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val = load ptr, ptr %i.bp, align 8, !nonnull !29, !noundef !29
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val11 = load ptr, ptr %i.bq, align 8, !nonnull !29, !noundef !29
  %i.br = ptrtoint ptr %.val11 to i64
  %i.bs = ptrtoint ptr %.val to i64
  %i.bt = sub nuw i64 %i.br, %i.bs
  %i.bu = udiv exact i64 %i.bt, 24                ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, %.sroa.0.0
  %i.bw = trunc nuw i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8. to i1 ; 2 uses
  %i.bx = add i64 %i.bu, %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.16. ; 2 uses
  %i.by = icmp uge i64 %i.bx, %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.16.
  %.sroa.46.0 = select i1 %i.bw, i64 %i.bx, i64 undef
  %narrow = select i1 %i.bw, i1 %i.by, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  store i64 %i.bv, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.bz, align 8
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit54

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19247)
  %.not.i14 = icmp eq i64 %i.a, -2
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !19247, !noundef !29
  %.not8.i15 = icmp eq ptr %i.cb, null            ; 2 uses
  br i1 %.not.i14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not8.i15, label %bb.z, label %bb.w

bb.t:                                             ; preds = %bb.r
  br i1 %.not8.i15, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val12.i52 = load ptr, ptr %i.cc, align 8, !alias.scope !19247, !nonnull !29, !noundef !29
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val13.i53 = load ptr, ptr %i.cd, align 8, !alias.scope !19247, !nonnull !29, !noundef !29
  %i.ce = ptrtoint ptr %.val13.i53 to i64
  %i.cf = ptrtoint ptr %.val12.i52 to i64
  %i.cg = sub nuw i64 %i.ce, %i.cf
  %i.ch = udiv exact i64 %i.cg, 24                ; 2 uses
  store i64 %i.ch, ptr %0, align 8, !alias.scope !19248
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ci, align 8, !alias.scope !19248
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit54

bb.v:                                             ; preds = %bb.t
  store i64 0, ptr %0, align 8, !alias.scope !19246
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.cj, align 8, !alias.scope !19246
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit54

bb.w:                                             ; preds = %bb.s
  %.not.i.i.i16 = icmp eq i64 %i.a, -1
  br i1 %.not.i.i.i16, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i19, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i17 = load ptr, ptr %i.ck, align 8, !alias.scope !19249, !nonnull !29, !noundef !29
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i.i18 = load ptr, ptr %i.cl, align 8, !alias.scope !19249, !nonnull !29, !noundef !29
  %i.cm = ptrtoint ptr %.val4.i.i.i.i18 to i64
  %i.cn = ptrtoint ptr %.val.i.i.i.i17 to i64
  %i.co = sub nuw i64 %i.cm, %i.cn
  %i.cp = udiv exact i64 %i.co, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i19

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i19: ; preds = %bb.x, %bb.w
  %.sroa.7.0.i.i.i20 = phi i64 [ %i.cp, %bb.x ], [ 0, %bb.w ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !range !31, !alias.scope !19250, !noundef !29
  %.not55.i.i.i21 = icmp eq i64 %i.cr, -1
  br i1 %.not55.i.i.i21, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i24, label %bb.y

bb.y:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i19
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i63.i.i.i22 = load ptr, ptr %i.cs, align 8, !alias.scope !19251, !nonnull !29, !noundef !29
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val4.i64.i.i.i23 = load ptr, ptr %i.ct, align 8, !alias.scope !19251, !nonnull !29, !noundef !29
  %i.cu = ptrtoint ptr %.val4.i64.i.i.i23 to i64
  %i.cv = ptrtoint ptr %.val.i63.i.i.i22 to i64
  %i.cw = sub nuw i64 %i.cu, %i.cv
  %i.cx = udiv exact i64 %i.cw, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i24

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i.i24: ; preds = %bb.y, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i19
  %.sroa.8.0.i.i.i25 = phi i64 [ %i.cx, %bb.y ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i.i19 ]
  %i.cy = add nuw nsw i64 %.sroa.8.0.i.i.i25, %.sroa.7.0.i.i.i20 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.da = load i64, ptr %i.cz, align 8, !range !52, !alias.scope !19250, !noundef !29
  %.not56.i.i.i26 = icmp eq i64 %i.da, -1
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i.i.i27 = load i64, ptr %i.db, align 8, !alias.scope !19250
  %i.dc = icmp eq i64 %.val.i.i.i27, 0
  %or.cond.i.i.i28 = select i1 %.not56.i.i.i26, i1 true, i1 %i.dc ; 3 uses
  %spec.select.i29 = select i1 %or.cond.i.i.i28, i64 %i.cy, i64 undef
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.i30 = load ptr, ptr %i.dd, align 8, !alias.scope !19247, !nonnull !29, !noundef !29
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val11.i31 = load ptr, ptr %i.de, align 8, !alias.scope !19247, !nonnull !29, !noundef !29
  %i.df = ptrtoint ptr %.val11.i31 to i64
  %i.dg = ptrtoint ptr %.val.i30 to i64
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = udiv exact i64 %i.dh, 24                ; 2 uses
  %i.dj = add nuw nsw i64 %i.di, %i.cy
  %i.dk = add i64 %i.di, %spec.select.i29         ; 2 uses
  %i.dl = icmp uge i64 %i.dk, %i.cy
  %.sroa.46.0.i32 = select i1 %or.cond.i.i.i28, i64 %i.dk, i64 undef
  %narrow.i33 = select i1 %or.cond.i.i.i28, i1 %i.dl, i1 false
  %.sroa.05.0.i34 = zext i1 %narrow.i33 to i64
  store i64 %i.dj, ptr %0, align 8, !alias.scope !19246
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i34, ptr %i.dm, align 8, !alias.scope !19246
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit54

bb.z:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19255)
  %.not.i.i14.i37 = icmp eq i64 %i.a, -1
  br i1 %.not.i.i14.i37, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i40, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i15.i38 = load ptr, ptr %i.dn, align 8, !alias.scope !19256, !nonnull !29, !noundef !29
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i16.i39 = load ptr, ptr %i.do, align 8, !alias.scope !19256, !nonnull !29, !noundef !29
  %i.dp = ptrtoint ptr %.val4.i.i.i16.i39 to i64
  %i.dq = ptrtoint ptr %.val.i.i.i15.i38 to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  %i.ds = udiv exact i64 %i.dr, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i40

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i40: ; preds = %bb.aa, %bb.z
  %.sroa.7.0.i.i18.i41 = phi i64 [ %i.ds, %bb.aa ], [ 0, %bb.z ]
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.du = load i64, ptr %i.dt, align 8, !range !31, !alias.scope !19257, !noundef !29
  %.not55.i.i19.i42 = icmp eq i64 %i.du, -1
  br i1 %.not55.i.i19.i42, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i45, label %bb.ab

bb.ab:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i40
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i63.i.i20.i43 = load ptr, ptr %i.dv, align 8, !alias.scope !19258, !nonnull !29, !noundef !29
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val4.i64.i.i21.i44 = load ptr, ptr %i.dw, align 8, !alias.scope !19258, !nonnull !29, !noundef !29
  %i.dx = ptrtoint ptr %.val4.i64.i.i21.i44 to i64
  %i.dy = ptrtoint ptr %.val.i63.i.i20.i43 to i64
  %i.dz = sub nuw i64 %i.dx, %i.dy
  %i.ea = udiv exact i64 %i.dz, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i45

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i45: ; preds = %bb.ab, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i40
  %.sroa.8.0.i.i23.i46 = phi i64 [ %i.ea, %bb.ab ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit.i.i17.i40 ]
  %i.eb = add nuw nsw i64 %.sroa.8.0.i.i23.i46, %.sroa.7.0.i.i18.i41 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ed = load i64, ptr %i.ec, align 8, !range !52, !alias.scope !19257, !noundef !29
  %.not56.i.i24.i47 = icmp eq i64 %i.ed, -1
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i.i25.i48 = load i64, ptr %i.ee, align 8, !alias.scope !19257
  %i.ef = icmp eq i64 %.val.i.i25.i48, 0
  %or.cond.i.i26.i49 = select i1 %.not56.i.i24.i47, i1 true, i1 %i.ef
  br i1 %or.cond.i.i26.i49, label %bb.ac, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB24_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB7_3map3MapINtNtB2E_9into_iter8IntoIterB2S_ENCNCNvMs0_NtNtNtB2Y_5rules5isort10categorizeNtB4V_12KnownModules3new00ENCB4P_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit28.i50

bb.ac:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i45
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eb, ptr %i.eg, align 8, !alias.scope !19259
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB24_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB7_3map3MapINtNtB2E_9into_iter8IntoIterB2S_ENCNCNvMs0_NtNtNtB2Y_5rules5isort10categorizeNtB4V_12KnownModules3new00ENCB4P_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit28.i50

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB24_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB7_3map3MapINtNtB2E_9into_iter8IntoIterB2S_ENCNCNvMs0_NtNtNtB2Y_5rules5isort10categorizeNtB4V_12KnownModules3new00ENCB4P_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Y_.exit28.i50: ; preds = %bb.ac, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i45
  %.sink.i.i27.i51 = phi i64 [ 1, %bb.ac ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternENCNCNvMs0_NtNtNtB2a_5rules5isort10categorizeNtB3j_12KnownModules3new00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2a_.exit65.i.i22.i45 ]
  store i64 %i.eb, ptr %0, align 8, !alias.scope !19259
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2n_3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternEEINtNtB6_3map3MapINtNtB2X_9into_iter8IntoIterB3b_ENCNCNvMs0_NtNtNtB3h_5rules5isort10categorizeNtB5e_12KnownModules3new00ENCB58_0EIB4i_B4x_NCB58_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3h_.exit54
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_10filter_map9FilterMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsEhZmuQNqkz_11ruff_linter4test13test_contentss1_0ENCB3n_s2_0EIB10_INtNtNtBa_5slice4iter4IterNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorENCB3n_s3_0EENtNtNtB8_6traits8iterator8Iterator4nextB3r_(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !19294 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19295)
  %i.l = load ptr, ptr %0, align 8, !alias.scope !19295, !noundef !29
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19297)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19298
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_8find_map5checkBW_TNtNtBa_6string6StringBW_EQNCNvNtCsEhZmuQNqkz_11ruff_linter4test13test_contentss1_0E0INtNtNtB1T_3ops12control_flow11ControlFlowB3j_EEB3Q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull %i.m), !noalias !19299
  %i.n = load i64, ptr %i.k, align 8, !range !31, !noalias !19298, !noundef !29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.n, -1
  %.sink72.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink72.i.sroa.gep6.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink72.i.sroa.gep7.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !19301
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !19302, !nonnull !29, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19298
  call void @llvm.experimental.noalias.scope.decl(metadata !19303)
  store i64 %i.n, ptr %i.j, align 8, !noalias !19304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19300
  store ptr %.sroa.6.sroa.4.0.copyload.i.i.i, ptr %i.i, align 8, !noalias !19300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19300
  %i.o = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !19300, !nonnull !29, !noundef !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !19300, !noundef !29
  %i.r = invoke noundef i16 @_RNvMNtCsEhZmuQNqkz_11ruff_linter8registryNtNtB4_5codes4Rule9from_code(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19305 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %bb.y, %._crit_edge.i.i.i.i, %bb.u, %bb.t, %bb.s, %.invoke.i.i.i.i, %bb.o, %.thread.i.i.i.i, %bb.h, %bb.f, %bb.c
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !19306)
  call void @llvm.experimental.noalias.scope.decl(metadata !19307)
  call void @llvm.experimental.noalias.scope.decl(metadata !19308)
  %i.s = load ptr, ptr %i.i, align 8, !alias.scope !19309, !noalias !19300, !nonnull !29, !noundef !29
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !19310
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.aj, !noalias !19305

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i16 %i.r, -1
  br i1 %i.v, label %bb.f, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleNtNtBL_8registry13FromCodeErrorE6unwrapBL_.exit.i.i.i.i, !prof !32

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #31
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19305

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleNtNtBL_8registry13FromCodeErrorE6unwrapBL_.exit.i.i.i.i: ; preds = %bb.e
  store i16 %i.r, ptr %i.h, align 2, !noalias !19300
  %i.w = load ptr, ptr %i.i, align 8, !noalias !19300, !nonnull !29, !noundef !29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load i64, ptr %i.x, align 8, !range !31, !noalias !19305, !noundef !29
  %.not.i.i.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleNtNtBL_8registry13FromCodeErrorE6unwrapBL_.exit.i.i.i.i
  %i.z = getelementptr i8, ptr %i.w, i64 144
  %.val.i.i.i.i = load i8, ptr %i.z, align 8, !range !111, !noalias !19305, !noundef !29
  %i.aa = icmp ne i8 %.val.i.i.i.i, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleNtNtBL_8registry13FromCodeErrorE6unwrapBL_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ false, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleNtNtBL_8registry13FromCodeErrorE6unwrapBL_.exit.i.i.i.i ], [ %i.aa, %bb.g ]
  %i.ab = invoke noundef i8 @_RNvMsk_NtCsEhZmuQNqkz_11ruff_linter5codesNtB5_4Rule7fixable(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.h)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19305 ; 2 uses

bb.i:                                             ; preds = %bb.h
  br i1 %.sroa.0.0.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %.thread.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ad = icmp eq i8 %i.ab, 2
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !86

bb.l:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.m, align 8, !alias.scope !19304, !nonnull !29, !noundef !29
  %i.af = load i8, ptr %i.ae, align 1, !range !101, !noalias !19305, !noundef !29
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.thread.i.i.i.i, label %bb.m, !prof !36

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19300
  br label %.invoke.i.i.i.i

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19300
  br label %.invoke.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.p, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19300
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic5range(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19305

bb.o:                                             ; preds = %bb.k
  %i.ah = invoke { ptr, i64 } @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic15first_help_text(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19305

bb.p:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB2h_EEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter:bb.a
_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge10.i.i.i, i64 24
  store ptr %i.n, ptr %i.d, align 8, !alias.scope !19501
  %.sroa.0.0.copyload7.i.i.i.i.i = load ptr, ptr %storemerge10.i.i.i, align 8, !noalias !19502 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload7.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.d
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19492

common.resume.i:                                  ; preds = %bb.g, %bb.f, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.g ], [ %lpad.loopexit.split-lp20, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.w, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.peel.i.i.i
  %lpad.loopexit.split-lp20 = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.b, align 8, !alias.scope !19486
  br label %common.resume.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !19486
  %.pre.i.i.i = load i64, ptr %1, align 8, !range !46, !alias.scope !19494 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19503)
  %.not.i2.i.i.i.i = icmp eq i64 %.pre.i.i.i, -2
  br i1 %.not.i2.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i
  %.sroa.716.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.716.0..sroa_idx17.i.i.i.i, align 8, !alias.scope !19504 ; 3 uses
  %.sroa.716.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.716.sroa.5.0..sroa.716.0..sroa_idx17.sroa_idx.i.i.i.i, align 8, !alias.scope !19504 ; 2 uses
  store i64 -1, ptr %1, align 8, !alias.scope !19505
  %.not1.i.i.i.i = icmp eq i64 %.pre.i.i.i, -1
  br i1 %.not1.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.peel.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit.thread.i.peel.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19506)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !19507, !noundef !29
  %.not.i4.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread10.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19509)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !19510, !nonnull !29, !noundef !29
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !19510, !nonnull !29, !noundef !29 ; 4 uses
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i11.i.i.i.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i5.i.i.i.i

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i5.i.i.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.v, ptr %i.s, align 8, !alias.scope !19510
  %.sroa.0.0.copyload7.i6.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !19511 ; 2 uses
  %.not6.i8.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload7.i6.i.i.i.i, null
  br i1 %.not6.i8.i.i.i.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i11.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i11.i.i.i.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i5.i.i.i.i, %bb.e
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread14.i unwind label %bb.f, !noalias !19512

bb.f:                                             ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i11.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.o, align 8, !alias.scope !19507
  br label %common.resume.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread14.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i11.i.i.i.i
  store ptr null, ptr %i.o, align 8, !alias.scope !19507
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread10.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.716.sroa.0.0.copyload.i.i.i.i) ]
  %i.x = icmp ult i64 %.sroa.716.sroa.5.0.copyload.i.i.i.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.716.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.716.sroa.5.0.copyload.i.i.i.i
  br label %bb.d, !llvm.loop !19474

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread10.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread14.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBE_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.g, !noalias !19513

bb.g:                                             ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread10.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %1, align 8, !alias.scope !19483
  br label %common.resume.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread10.i
  store i64 -3, ptr %1, align 8, !alias.scope !19483
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19516)
  br label %bb.h

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i5.i.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i.i.peel.i.i.i
  %.lcssa.i.i.i.sink = phi ptr [ %i.t, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i5.i.i.i.i ], [ %i.g, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i.i.peel.i.i.i ], [ %storemerge10.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ]
  %.sroa.0.19.i.ph = phi ptr [ %.sroa.0.0.copyload7.i6.i.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i5.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.peel.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i.i.peel.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB26_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i ]
  %.sroa.7.0..sroa_idx8.i.le.i.i.i.i = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.sink, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.le.i.i.i.i, i64 16, i1 false), !noalias !19513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !19483
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store ptr %.sroa.0.19.i.ph, ptr %0, align 8, !alias.scope !19517
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !alias.scope !19517
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB23_5ChainINtNtB25_7flatten7FlattenINtB3_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecBI_EEEINtNtB25_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEENtNtNtB27_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit

bb.h:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEB2m_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19519)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !19520, !noundef !29
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa), !noalias !19515
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB23_5ChainINtNtB25_7flatten7FlattenINtB3_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecBI_EEEINtNtB25_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEENtNtNtB27_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !alias.scope !19521
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB23_5ChainINtNtB25_7flatten7FlattenINtB3_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecBI_EEEINtNtB25_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEENtNtNtB27_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB23_5ChainINtNtB25_7flatten7FlattenINtB3_8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecBI_EEEINtNtB25_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEENtNtNtB27_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsEhZmuQNqkz_11ruff_linter.exit.thread.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEEINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB2h_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !19540 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !51, !noundef !29 ; 3 uses
  %.not = icmp eq i64 %i.b, -3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !29
  %.not8 = icmp eq ptr %i.d, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.j, label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit23, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !19541, !noundef !29
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !19542, !nonnull !29, !noundef !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !19542, !nonnull !29, !noundef !29
  %i.k = ptrtoint ptr %.val4.i.i.i to i64
  %i.l = ptrtoint ptr %.val.i.i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.7.0.i.i = phi i64 [ %i.n, %bb.h ], [ 0, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !19541, !noundef !29
  %.not55.i.i = icmp eq ptr %i.p, null
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i63.i.i = load ptr, ptr %i.q, align 8, !alias.scope !19543, !nonnull !29, !noundef !29
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val4.i64.i.i = load ptr, ptr %i.r, align 8, !alias.scope !19543, !nonnull !29, !noundef !29
  %i.s = ptrtoint ptr %.val4.i64.i.i to i64
  %i.t = ptrtoint ptr %.val.i63.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i: ; preds = %bb.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.v, %bb.i ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i ]
  %i.w = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 3 uses
  %switch.i.i = icmp ugt i64 %i.b, -3             ; 2 uses
  %spec.select = select i1 %switch.i.i, i64 %i.w, i64 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.x = load i64, ptr %i.a, align 8, !noundef !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !37, !noundef !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.w, i64 %i.x)
  %i.ad = trunc nuw i64 %i.z to i1
  %or.cond = and i1 %switch.i.i, %i.ad            ; 2 uses
  %i.ae = add i64 %i.ab, %spec.select             ; 2 uses
  %i.af = icmp uge i64 %i.ae, %i.w
  %.sroa.46.0 = select i1 %or.cond, i64 %i.ae, i64 undef
  %narrow = select i1 %or.cond, i1 %i.af, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  store i64 %i.ac, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0, ptr %i.ah, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19547)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !19548, !noundef !29
  %.not.i.i11 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i11, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i12 = load ptr, ptr %i.ak, align 8, !alias.scope !19549, !nonnull !29, !noundef !29
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i13 = load ptr, ptr %i.al, align 8, !alias.scope !19549, !nonnull !29, !noundef !29
  %i.am = ptrtoint ptr %.val4.i.i.i13 to i64
  %i.an = ptrtoint ptr %.val.i.i.i12 to i64
  %i.ao = sub nuw i64 %i.am, %i.an
  %i.ap = udiv exact i64 %i.ao, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i14

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i14: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i15 = phi i64 [ %i.ap, %bb.k ], [ 0, %bb.j ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !19548, !noundef !29
  %.not55.i.i16 = icmp eq ptr %i.ar, null
  br i1 %.not55.i.i16, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i19, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i14
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i63.i.i17 = load ptr, ptr %i.as, align 8, !alias.scope !19550, !nonnull !29, !noundef !29
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val4.i64.i.i18 = load ptr, ptr %i.at, align 8, !alias.scope !19550, !nonnull !29, !noundef !29
  %i.au = ptrtoint ptr %.val4.i64.i.i18 to i64
  %i.av = ptrtoint ptr %.val.i63.i.i17 to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 24
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i19

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i19: ; preds = %bb.l, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i14
  %.sroa.8.0.i.i20 = phi i64 [ %i.ax, %bb.l ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i14 ]
  %i.ay = add nuw nsw i64 %.sroa.8.0.i.i20, %.sroa.7.0.i.i15 ; 2 uses
  %switch.i.i21 = icmp ugt i64 %i.b, -3
  br i1 %switch.i.i21, label %bb.m, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit23

bb.m:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i19
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %i.az, align 8, !alias.scope !19551
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit23

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEEENtNtNtB9_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter.exit23: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i19, %bb.m
  %.sink.i.i22 = phi i64 [ 1, %bb.m ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsEhZmuQNqkz_11ruff_linter.exit65.i.i19 ]
  store i64 %i.ay, ptr %0, align 8, !alias.scope !19551
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.i22, ptr %i.ba, align 8, !alias.scope !19551
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef align 8 ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBZ_ENtNtNtB8_6traits8iterator8Iterator3nthCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #8 personality ptr @rust_eh_personality !guid !19558 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !29  ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !19559, !nonnull !29, !noundef !29 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 80
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %1, i64 %i.g) ; 2 uses
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %.sroa.0.0.i.i ; 3 uses
  %i.i = sub nuw i64 %1, %.sroa.0.0.i.i           ; 2 uses
  %.not7 = icmp ne i64 %i.i, 0
  %i.j = icmp eq ptr %i.h, %i.c
  %or.cond = select i1 %.not7, i1 true, i1 %i.j
  br i1 %or.cond, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, %bb.a
  %.sroa.0.0 = phi i64 [ %i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread ], [ %1, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !29 ; 3 uses
  %.not9 = icmp eq ptr %i.l, null
  br i1 %.not9, label %bb.d, label %bb.e

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.m, ptr %0, align 8, !alias.scope !19560
  br label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit, %bb.c, %bb.e
  %.sroa.02.0 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %i.h, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit ], [ null, %bb.c ]
  ret ptr %.sroa.02.0

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !19561, !nonnull !29, !noundef !29 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 80
  %.not.i = icmp ult i64 %.sroa.0.0, %i.s         ; 2 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.l, i64 %.sroa.0.0 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %storemerge.i = select i1 %.not.i, ptr %i.u, ptr %i.o
  %.sroa.0.0.i10 = select i1 %.not.i, ptr %i.t, ptr null
  store ptr %storemerge.i, ptr %i.k, align 8, !alias.scope !19561
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NvNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect14default_extendTINtNtCscdodAO9FK5_5alloc3vec3VecjEIB17_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB4_10SpecExtendINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTjB1J_EEEE6extendCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19572 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterTjRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.d = load i64, ptr %i.a, align 8, !noundef !29 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !37, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectTINtNtCscdodAO9FK5_5alloc3vec3VecjEIBQ_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB5_6ExtendTjB1r_EE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectTINtNtCscdodAO9FK5_5alloc3vec3VecjEIBQ_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB5_6ExtendTjB1r_EE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.d, %_RNvXsi_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendjE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.a
  %.not2 = icmp eq i64 %i.f, 0
  br i1 %.not2, label %bb.f, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !19573, !noundef !29 ; 2 uses
  %i.i = load i64, ptr %0, align 8, !range !39, !alias.scope !19573, !noundef !29
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %i.d, %i.j
  br i1 %i.k, label %bb.c, label %_RNvXsi_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendjE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit.i, !prof !32

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.h, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 8)
  br label %_RNvXsi_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendjE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXsi_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendjE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !19574, !noundef !29 ; 2 uses
  %i.o = load i64, ptr %i.l, align 8, !range !39, !alias.scope !19574, !noundef !29
  %i.p = sub i64 %i.o, %i.n
  %i.q = icmp ugt i64 %i.d, %i.p
  br i1 %i.q, label %bb.d, label %_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectTINtNtCscdodAO9FK5_5alloc3vec3VecjEIBQ_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB5_6ExtendTjB1r_EE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit, !prof !32

bb.d:                                             ; preds = %_RNvXsi_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendjE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit.i
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.n, i64 noundef range(i64 1, 0) %i.d, i64 noundef 8, i64 noundef 8)
  br label %_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectTINtNtCscdodAO9FK5_5alloc3vec3VecjEIBQ_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB5_6ExtendTjB1r_EE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectTINtNtCscdodAO9FK5_5alloc3vec3VecjEIBQ_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB5_6ExtendTjB1r_EE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterTjRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callB1s_NCINvNvNtB2q_7collect14default_extend18unchecked_extenderTINtNtCscdodAO9FK5_5alloc3vec3VecjEIB4q_B1u_EEB1s_E0E0ECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectTINtNtCscdodAO9FK5_5alloc3vec3VecjEIBQ_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB5_6ExtendTjB1r_EE14extend_reserveCsEhZmuQNqkz_11ruff_linter.exit
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterTjRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2m_8for_each4callB1s_NCINvNvNtB2q_7collect14default_extend8extenderTINtNtCscdodAO9FK5_5alloc3vec3VecjEIB4f_B1u_EEB1s_E0E0ECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtBJ_5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !19578 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29
  %i.e = load i64, ptr %i.b, align 8, !noundef !29 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19580
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !19580
  %i.f = load i64, ptr %i.a, align 8, !range !37, !noalias !19580, !noundef !29
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !100, !noalias !19580, !noundef !29 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
end_hunk_1
