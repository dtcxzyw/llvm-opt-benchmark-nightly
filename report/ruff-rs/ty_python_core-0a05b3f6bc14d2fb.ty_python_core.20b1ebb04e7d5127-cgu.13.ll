Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.13?download=true
inline.NumInlined: 1425
inline.NumDeleted: 573
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core:bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  br i1 %2, label %bb.g, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #36
  br label %bb.h

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core12program_file11ProgramFileE6fieldsB10_(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtNtCs2O29vuvTAEJ_14ty_python_core12program_file11ProgramFileEEB1e_(ptr noundef nonnull align 8 %i.a, i32 noundef %2, i32 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramE6fieldsB10_(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramEEB1e_(ptr noundef nonnull align 8 %i.a, i32 noundef %2, i32 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB7_10Expression17default_debug_fmt(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4
  %i.e = call noundef i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_22with_attached_databaseINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2f_3fmt5ErrorENCNvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB3g_10Expression17default_debug_fmt0E0INtNtB2f_6option6OptionB2a_EEB3i_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @62, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1322
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1322
  store i32 %0, ptr %i.a, align 4, !noalias !1322
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.g, align 4, !noalias !1322
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  %i.i = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1322
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_Cs2O29vuvTAEJ_14ty_python_coreNtB4_17DefinitionsByNode3get(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = call noundef align 4 ptr @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtB7_10definition17DefinitionNodeKeyNtB10_10DefinitionE3getB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.split, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRSNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7or_elseNCNvMs_BO_NtBO_17DefinitionsByNode3get0EBO_.exit

.split:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = call noundef align 8 ptr @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtB7_10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB10_10DefinitionEE3getB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !1325 ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i.i5, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRSNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7or_elseNCNvMs_BO_NtBO_17DefinitionsByNode3get0EBO_.exit, label %bb.b

bb.b:                                             ; preds = %.split
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1325, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !1325, !noundef !8
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRSNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7or_elseNCNvMs_BO_NtBO_17DefinitionsByNode3get0EBO_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRSNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7or_elseNCNvMs_BO_NtBO_17DefinitionsByNode3get0EBO_.exit: ; preds = %bb.b, %.split, %bb.a
  %.pn5.i6.pn = phi ptr [ %i.b, %bb.a ], [ null, %.split ], [ %i.e, %bb.b ]
  %.pn3.i7.pn = phi i64 [ 1, %bb.a ], [ undef, %.split ], [ %i.g, %bb.b ]
  %.pn.i8.pn = insertvalue { ptr, i64 } poison, ptr %.pn5.i6.pn, 0
  %phi.call = insertvalue { ptr, i64 } %.pn.i8.pn, i64 %.pn3.i7.pn, 1
  ret { ptr, i64 } %phi.call
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_Cs2O29vuvTAEJ_14ty_python_coreNtB4_17DefinitionsByNode8from_map(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB15_11DefinitionsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE4iterB17_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %bb.ak
  br i1 %.sroa.03.149, label %bb.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1y_11DefinitionsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit

.thread:                                          ; preds = %bb.a, %bb.g, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = invoke noundef i64 @_RINvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB6_4IterNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBN_11DefinitionsENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvXsM_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB3h_6ValuesBL_B1O_EB27_4foldjNCINvNtNtB2d_8adapters3map8map_foldRB1O_jjNCINvNvXs1_NtB4E_6filterINtB5o_6FilterppEB27_5count8to_usizeB56_NCNvMs_BP_NtBP_17DefinitionsByNode8from_map0E0NCINvXsK_NtB2b_5accumjNtB78_3Sum3sumINtB4C_3MapB41_B5d_EE0E0E0EBP_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.m, i64 noundef 0, ptr noalias noundef nonnull %i.a)
          to label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValuesNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1Y_11DefinitionsENCNvMs_B20_NtB20_17DefinitionsByNode8from_map0ENtNtNtB9_6traits8iterator8Iterator5countB20_.exit unwind label %.thread ; 5 uses

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValuesNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1Y_11DefinitionsENCNvMs_B20_NtB20_17DefinitionsByNode8from_map0ENtNtNtB9_6traits8iterator8Iterator5countB20_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.p = mul i64 %i.o, 12                         ; 3 uses
  %or.cond.i = icmp ugt i64 %i.o, 768614336404564650
  br i1 %or.cond.i, label %bb.g, label %bb.d, !prof !32

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValuesNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1Y_11DefinitionsENCNvMs_B20_NtB20_17DefinitionsByNode8from_map0ENtNtNtB9_6traits8iterator8Iterator5countB20_.exit
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1335
  %i.r = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.p, i64 noundef range(i64 1, -9223372036854775807) 4) #36, !noalias !1335 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = ptrtoint ptr %i.r to i64
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValuesNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1Y_11DefinitionsENCNvMs_B20_NtB20_17DefinitionsByNode8from_map0ENtNtNtB9_6traits8iterator8Iterator5countB20_.exit, %bb.e
  %.sroa.429.0.ph = phi i64 [ 4, %bb.e ], [ 0, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValuesNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1Y_11DefinitionsENCNvMs_B20_NtB20_17DefinitionsByNode8from_map0ENtNtNtB9_6traits8iterator8Iterator5countB20_.exit ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.429.0.ph, i64 %i.p) #33
          to label %bb.ad unwind label %.thread

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.d, %bb.f
  %.sroa.10.0 = phi i64 [ %i.t, %bb.f ], [ 4, %bb.d ]
  %.sroa.429.0 = phi i64 [ %i.o, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.u = inttoptr i64 %.sroa.10.0 to ptr
  %i.v = icmp samesign ule i64 %i.o, %.sroa.429.0
  call void @llvm.assume(i1 %i.v)
  store i64 %.sroa.429.0, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !8
  %i.aa = sub i64 %i.z, %i.o                      ; 4 uses
  %i.ab = mul i64 %i.aa, 24                       ; 3 uses
  %or.cond.i14 = icmp ugt i64 %i.aa, 384307168202282325
  br i1 %or.cond.i14, label %bb.l, label %bb.h, !prof !32

bb.h:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1336
  %i.ad = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !1336 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %i.ad to i64
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit16

bb.k:                                             ; preds = %bb.aj
  br i1 %.sroa.02.1.ph, label %bb.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1y_11DefinitionsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit

.thread44:                                        ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.l:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit, %bb.i
  %.sroa.432.0.ph = phi i64 [ 8, %bb.i ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.432.0.ph, i64 %i.ab) #33
          to label %bb.ad unwind label %.thread44

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit16: ; preds = %bb.h, %bb.j
  %.sroa.1034.0 = phi i64 [ %i.af, %bb.j ], [ 8, %bb.h ]
  %.sroa.432.0 = phi i64 [ %i.aa, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ah = inttoptr i64 %.sroa.1034.0 to ptr       ; 2 uses
  %i.ai = icmp samesign ule i64 %i.aa, %.sroa.432.0
  call void @llvm.assume(i1 %i.ai)
  store i64 %.sroa.432.0, ptr %i.k, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBP_11DefinitionsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1z_11DefinitionsEEB1B_.exit17, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit16
  %.sroa.02.2 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1z_11DefinitionsEEB1B_.exit17 ], [ true, %bb.r ], [ true, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit16 ]
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.n:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2O29vuvTAEJ_14ty_python_core.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core10definition11DefinitionsEBF_.exit, %bb.n
  %i.an = phi ptr [ %i.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core10definition11DefinitionsEBF_.exit ], [ %i.ah, %bb.n ] ; 2 uses
  %i.ao = phi i64 [ %i.bq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core10definition11DefinitionsEBF_.exit ], [ 0, %bb.n ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBV_11DefinitionsEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %bb.p unwind label %.body

.body.thread:                                     ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ah, %.body
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bv, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.bv, %bb.ah ]
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBV_11DefinitionsEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %bb.aj unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ap = load i32, ptr %i.i, align 8, !noundef !8 ; 3 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.aq = invoke { ptr, i64 } @_RNvXs2_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_11DefinitionsNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBV_11DefinitionsEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1z_11DefinitionsEEB1B_.exit17 unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1z_11DefinitionsEEB1B_.exit17: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.ar = invoke { ptr, i64 } @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtB7_10definition17DefinitionNodeKeyNtB10_10DefinitionE12from_entriesB7_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.s unwind label %bb.m       ; 2 uses

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1z_11DefinitionsEEB1B_.exit17
  %i.as = extractvalue { ptr, i64 } %i.ar, 0      ; 4 uses
  %i.at = extractvalue { ptr, i64 } %i.ar, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.au = invoke { ptr, i64 } @_RNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB5_9FrozenMapNtNtB7_10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB10_10DefinitionEE12from_entriesB7_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.u unwind label %bb.t       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1y_11DefinitionsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.t
  %i.ax = mul nuw nsw i64 %i.at, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ax, i64 noundef 4) #36
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1y_11DefinitionsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit

bb.u:                                             ; preds = %bb.s
  %i.ay = extractvalue { ptr, i64 } %i.au, 0
  %i.az = extractvalue { ptr, i64 } %i.au, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  store ptr %i.as, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ay, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.az, ptr %i.bc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.v:                                             ; preds = %bb.al, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread, %bb.ak, %bb.aj
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.body:                                            ; preds = %bb.o, %bb.ae, %bb.y
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.w:                                             ; preds = %bb.q
  %i.be = extractvalue { ptr, i64 } %i.aq, 1
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bg = invoke { ptr, i64 } @_RNvXs2_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_11DefinitionsNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bh = invoke { ptr, i64 } @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_11Definitions16into_boxed_slice(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.af unwind label %.body     ; 2 uses

bb.z:                                             ; preds = %bb.x
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1
  %.not5 = icmp eq i64 %i.bi, 0
  br i1 %.not5, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = extractvalue { ptr, i64 } %i.bg, 0
  %i.bk = load <2 x i32>, ptr %i.bj, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %2 = load i64, ptr %i.x, align 8, !alias.scope !1337, !noundef !8 ; 3 uses
  %i.bl = load i64, ptr %i.l, align 8, !range !22, !alias.scope !1337, !noundef !8
  %i.bm = icmp eq i64 %2, %i.bl
  br i1 %i.bm, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBO_10DefinitionEE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.z
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #33
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac, %bb.l, %bb.g
  unreachable

bb.ae:                                            ; preds = %bb.aa, %bb.ab
  %3 = load ptr, ptr %i.w, align 8, !alias.scope !1337, !nonnull !8, !noundef !8
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %2 ; 2 uses
  store i32 %i.ap, ptr %i.bn, align 4, !noalias !1337
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store <2 x i32> %i.bk, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !1337
  %i.bo = add i64 %2, 1
  store i64 %i.bo, ptr %i.x, align 8, !alias.scope !1337
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core10definition10Definitionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core10definition11DefinitionsEBF_.exit unwind label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core10definition11DefinitionsEBF_.exit: ; preds = %bb.ae, %bb.ai
  %i.bp = phi ptr [ %i.an, %bb.ae ], [ %i.by, %bb.ai ]
  %i.bq = phi i64 [ %i.ao, %bb.ae ], [ %i.ca, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.o

bb.af:                                            ; preds = %bb.y
  %i.br = extractvalue { ptr, i64 } %i.bh, 0      ; 3 uses
  %i.bs = extractvalue { ptr, i64 } %i.bh, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.bt = load i64, ptr %i.k, align 8, !range !22, !alias.scope !1338, !noundef !8
  %i.bu = icmp eq i64 %i.ao, %i.bt
  br i1 %i.bu, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtB7_5boxed3BoxSNtBO_10DefinitionEEE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %._crit_edge unwind label %bb.ah, !noalias !1339

._crit_edge:                                      ; preds = %bb.ag
  %.pre = load ptr, ptr %i.aj, align 8, !alias.scope !1338
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = icmp eq i64 %i.bs, 0
  br i1 %i.bw, label %.body.thread, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef %i.bx, i64 noundef 4) #36, !noalias !1340
  br label %.body.thread

bb.ai:                                            ; preds = %._crit_edge, %bb.af
  %i.by = phi ptr [ %.pre, %._crit_edge ], [ %i.an, %bb.af ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.ao ; 3 uses
  store i32 %i.ap, ptr %i.bz, align 8, !noalias !1338
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.br, ptr %.sroa.424.0..sroa_idx, align 8, !noalias !1338
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1338
  %i.ca = add i64 %i.ao, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.ak, align 8, !alias.scope !1338
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core10definition11DefinitionsEBF_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.x, %bb.q, %bb.ac
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core10definition10Definitionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.thread unwind label %bb.v

bb.aj:                                            ; preds = %bb.m, %.body.thread
  %.pn.pn.ph = phi { ptr, i32 } [ %i.al, %bb.m ], [ %.pn, %.body.thread ] ; 2 uses
  %.sroa.02.1.ph = phi i1 [ %.sroa.02.2, %bb.m ], [ true, %.body.thread ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtBG_5boxed3BoxSNtB1a_10DefinitionEEEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.k) #34
          to label %bb.k unwind label %bb.v

bb.ak:                                            ; preds = %.thread44, %bb.k
  %.sroa.03.149 = phi i1 [ true, %.thread44 ], [ false, %bb.k ]
  %.pn848 = phi { ptr, i32 } [ %i.ag, %.thread44 ], [ %.pn.pn.ph, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1a_10DefinitionEEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #34
          to label %bb.b unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1y_11DefinitionsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit: ; preds = %bb.t, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.k, %bb.al, %bb.b
  %.pn1037 = phi { ptr, i32 } [ %.pn848, %bb.b ], [ %.pn1038, %bb.al ], [ %.pn.pn.ph, %bb.k ], [ %i.av, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %i.av, %bb.t ]
  resume { ptr, i32 } %.pn1037

bb.al:                                            ; preds = %.thread, %bb.b
  %.pn1038 = phi { ptr, i32 } [ %i.n, %.thread ], [ %.pn848, %bb.b ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBR_11DefinitionsEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1y_11DefinitionsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_.exit unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10expressionNtB4_10Expression11python_file(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call noundef nonnull align 8 ptr %.val(ptr noundef nonnull %2), !inline_history !0 ; 2 uses
  %i.c = tail call noundef nonnull align 128 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionEE13get_or_createINtB1f_7JarImplB1Q_EKj0_EB1U_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB9_10Expression11ingredient_5CACHE, ptr noundef nonnull align 8 %i.b)
  %i.d = tail call noundef nonnull align 4 ptr @_RNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB5_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE15untracked_fieldB17_(ptr noundef nonnull align 128 %i.c, ptr noundef nonnull align 8 %i.b, i32 noundef range(i32 1, 0) %0, i32 noundef %1) ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !range !10, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !8
  %i.h = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId11python_file(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3)
  ret { i32, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10expressionNtB4_10Expression12program_file(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call noundef nonnull align 8 ptr %.val(ptr noundef nonnull %2), !inline_history !0 ; 2 uses
  %i.c = tail call noundef nonnull align 128 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionEE13get_or_createINtB1f_7JarImplB1Q_EKj0_EB1U_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB9_10Expression11ingredient_5CACHE, ptr noundef nonnull align 8 %i.b)
  %i.d = tail call noundef nonnull align 4 ptr @_RNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB5_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE15untracked_fieldB17_(ptr noundef nonnull align 128 %i.c, ptr noundef nonnull align 8 %i.b, i32 noundef range(i32 1, 0) %0, i32 noundef %1) ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !range !10, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !8
  %i.h = tail call { i32, i32 } @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId12program_fileDNtNtBa_2db2DbEL_EBa_(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3)
  ret { i32, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10expressionNtB4_10Expression4file(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call noundef nonnull align 8 ptr %.val(ptr noundef nonnull %2), !inline_history !0 ; 2 uses
  %i.c = tail call noundef nonnull align 128 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionEE13get_or_createINtB1f_7JarImplB1Q_EKj0_EB1U_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB9_10Expression11ingredient_5CACHE, ptr noundef nonnull align 8 %i.b)
  %i.d = tail call noundef nonnull align 4 ptr @_RNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB5_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE15untracked_fieldB17_(ptr noundef nonnull align 128 %i.c, ptr noundef nonnull align 8 %i.b, i32 noundef range(i32 1, 0) %0, i32 noundef %1) ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !range !10, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !8
  %i.h = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4file(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3)
  ret { i32, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10expressionNtB4_10Expression5scope(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call noundef nonnull align 8 ptr %.val(ptr noundef nonnull %2), !inline_history !0 ; 2 uses
  %i.c = tail call noundef nonnull align 128 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionEE13get_or_createINtB1f_7JarImplB1Q_EKj0_EB1U_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB9_10Expression11ingredient_5CACHE, ptr noundef nonnull align 8 %i.b)
  %i.d = tail call noundef nonnull align 4 ptr @_RNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB5_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE15untracked_fieldB17_(ptr noundef nonnull align 128 %i.c, ptr noundef nonnull align 8 %i.b, i32 noundef range(i32 1, 0) %0, i32 noundef %1) ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !range !10, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !8
  %i.h = insertvalue { i32, i32 } poison, i32 %i.e, 0
  %i.i = insertvalue { i32, i32 } %i.h, i32 %i.g, 1
  ret { i32, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10expressionNtB4_10Expression7program(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call noundef nonnull align 8 ptr %.val(ptr noundef nonnull %2), !inline_history !0 ; 2 uses
  %i.c = tail call noundef nonnull align 128 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_14tracked_struct14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionEE13get_or_createINtB1f_7JarImplB1Q_EKj0_EB1U_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCs2O29vuvTAEJ_14ty_python_core10expression1__NtB9_10Expression11ingredient_5CACHE, ptr noundef nonnull align 8 %i.b)
  %i.d = tail call noundef nonnull align 4 ptr @_RNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB5_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE15untracked_fieldB17_(ptr noundef nonnull align 128 %i.c, ptr noundef nonnull align 8 %i.b, i32 noundef range(i32 1, 0) %0, i32 noundef %1) ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !range !10, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !8
  %i.h = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %3)
  ret { i32, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12program_fileNtB4_11ProgramFile13resolver_file(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [12 x i8], align 4                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [12 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 10 uses
  %i.t = alloca [16 x i8], align 16               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !8, !alias.scope !1414 ; 4 uses
  %i.w = tail call noundef nonnull align 8 ptr %i.v(ptr noundef nonnull %2), !noalias !1414, !inline_history !1415 ; 2 uses
  %i.x = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core12program_file11ProgramFileEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB9_11ProgramFile10ingredient5CACHE, ptr noundef nonnull align 8 %i.w), !noalias !1414 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 328
  %i.z = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtNtCs2O29vuvTAEJ_14ty_python_core12program_file11ProgramFileEEB1e_(ptr noundef nonnull align 8 %i.y, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !1414 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !range !10, !noalias !1414, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !1414, !noundef !8
  %i.ae = tail call noundef nonnull align 8 ptr %i.v(ptr noundef nonnull %2), !noalias !1412, !inline_history !1345 ; 2 uses
  %i.af = tail call noundef nonnull align 8 ptr @_RNvMs2_NvCs56aZGHL6Dc6_7ruff_db1__NtB7_10PythonFile10ingredient(ptr noundef nonnull align 8 %i.ae), !noalias !1412 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 328
  %i.ah = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.ag, i32 noundef range(i32 1, 0) %i.ab, i32 noundef %i.ad), !noalias !1412
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = load <2 x i32>, ptr %i.ai, align 8, !noalias !1412
  %i.al = tail call noundef nonnull align 8 ptr %i.v(ptr noundef nonnull %2), !noalias !1416, !inline_history !1417 ; 2 uses
  %i.am = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core12program_file11ProgramFileEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1N_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB9_11ProgramFile10ingredient5CACHE, ptr noundef nonnull align 8 %i.al), !noalias !1416 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 328
  %i.ao = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table3getINtNtB8_8interned5ValueNtNtCs2O29vuvTAEJ_14ty_python_core12program_file11ProgramFileEEB1e_(ptr noundef nonnull align 8 %i.an, i32 noundef range(i32 1, 0) %0, i32 noundef %1), !noalias !1416 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !range !10, !noalias !1416, !noundef !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
end_hunk_0
