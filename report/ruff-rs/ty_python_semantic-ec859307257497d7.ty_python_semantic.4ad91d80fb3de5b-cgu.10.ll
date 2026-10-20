Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.10?download=true
inline.NumInlined: 9275
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1c_11constraints16ConstraintBoundsjEEEB1e_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1j_11constraints16ConstraintBoundsjEEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjtEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjtEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjtEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTjtEEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjtEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTjtEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync15UniqueArcUninitNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerNtNtBG_5alloc6GlobalEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6521)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !6521, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !alias.scope !6521
  br i1 %i.c, label %bb.b, label %bb.d, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !6521, !nonnull !10, !noundef !10
  %i.f = load i64, ptr %0, align 8, !range !43, !alias.scope !6521, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6521, !noundef !10
  %i.i = tail call { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %i.f, i64 noundef %i.h), !noalias !6521 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs1m_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerNtNtB8_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #59, !noalias !6521
  br label %_RNvXs1m_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerNtNtB8_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #58, !noalias !6521
  unreachable

_RNvXs1m_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerNtNtB8_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync15UniqueArcUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtNtBG_5alloc6GlobalEEB1r_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6524)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !6524, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !alias.scope !6524
  br i1 %i.c, label %bb.b, label %bb.d, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !6524, !nonnull !10, !noundef !10
  %i.f = load i64, ptr %0, align 8, !range !43, !alias.scope !6524, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6524, !noundef !10
  %i.i = tail call { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %i.f, i64 noundef %i.h), !noalias !6524 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs1m_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtNtB8_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #59, !noalias !6524
  br label %_RNvXs1m_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtNtB8_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #58, !noalias !6524
  unreachable

_RNvXs1m_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtNtB8_5alloc6GlobalENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EECsoTR8nlGN3X_18ty_python_semantic(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !22, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6525, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.c, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !22, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit5, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6525, !invariant.load !10
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit5: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEEECsoTR8nlGN3X_18ty_python_semantic(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit5, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.0.08.i = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.08.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.08.i, 1         ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6550)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !6551, !noundef !10 ; 2 uses
  %.not2.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !6551
  br i1 %.not2.i.i.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.val.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.sroa.0.0.val.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i.i.i.i.i.i, align 8, !noalias !6552, !noundef !10 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.03.i.i.i.i.i.i.i.i, align 8, !noalias !6552
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6555)
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !6556, !noundef !10 ; 2 uses
  %.not2.i.i.i1.i.i.i.i.i = icmp eq ptr %i.h, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !6556
  br i1 %.not2.i.i.i1.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.lr.ph.i.i.i2.i.i.i.i.i

.lr.ph.i.i.i2.i.i.i.i.i:                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i, %.lr.ph.i.i.i2.i.i.i.i.i
  %.sroa.0.03.i.i.i3.i.i.i.i.i = phi ptr [ %.sroa.0.0.val.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i2.i.i.i.i.i ], [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.val.i.i.i4.i.i.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i3.i.i.i.i.i, align 8, !noalias !6557, !noundef !10 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.03.i.i.i3.i.i.i.i.i, align 8, !noalias !6557
  %.not.i.i.i5.i.i.i.i.i = icmp eq ptr %.sroa.0.0.val.i.i.i4.i.i.i.i.i, null
  br i1 %.not.i.i.i5.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.lr.ph.i.i.i2.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.lr.ph.i.i.i2.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTableNtNtCs45bxiIjzMqg_5salsa8interned8ValueKeyEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i15, 1                ; 2 uses
  %i.k = icmp eq i64 %i.j, %.8.val
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %i.l = icmp eq i64 %i.c, %.8.val
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.c
  %.sroa.0.1.i15 = phi i64 [ %i.j, %bb.c ], [ %i.c, %.body.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.1.i15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 128 dereferenceable(128) %i.m) #57
          to label %bb.c unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.o = shl nuw nsw i64 %.8.val, 7
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.o, i64 noundef 128) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api5mutex5MutexNtNtCs6ZNDpZDiPlA_11parking_lot9raw_mutex8RawMutexNtNtCs45bxiIjzMqg_5salsa8interned15IngredientShardEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic.exit5: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4
  ret void

._crit_edge:                                      ; preds = %bb.c, %.body.i
  %i.p = shl nuw nsw i64 %.8.val, 7
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.p, i64 noundef 128) #59
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i6 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i6
  %i.f = add nuw nsw i64 %.sroa.0.0.i6, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph8
  %i.g = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i7 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #57
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph8
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8) #59
  resume { ptr, i32 } %i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef 8) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintEEB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw nsw i64 %.val1, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.c, i64 noundef 4) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.c = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.c, i64 noundef 4) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1g_(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit.i.i
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i
  %.sroa.0.0.i21 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [88 x i8], ptr %.0.val, i64 %.sroa.0.0.i21 ; 6 uses
  %i.c = add nuw nsw i64 %.sroa.0.0.i21, 1        ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #57
          to label %.body.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph23
  %i.j = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.k = icmp eq i64 %i.j, %.8.val
  br i1 %i.k, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph23

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  %i.m = icmp eq i64 %i.c, %.8.val
  br i1 %i.m, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph23

.lr.ph23:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i22 = phi i64 [ %i.j, %bb.f ], [ %i.c, %.body.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %.0.val, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_(ptr noalias noundef align 8 dereferenceable(88) %i.n) #57
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph23
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.f, %.body.i
  %i.p = mul nuw nsw i64 %.8.val, 88
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.p, i64 noundef 8) #59
  resume { ptr, i32 } %eh.lpad-body.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_.exit.i
  %i.q = mul nuw nsw i64 %.8.val, 88
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.q, i64 noundef 8) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1i_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit5, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i
  %.sroa.0.0.i6 = phi i64 [ %i.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i6
  %i.f = add nuw nsw i64 %.sroa.0.0.i6, 1         ; 4 uses
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i: ; preds = %.lr.ph8
  %i.g = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i
  %.sroa.0.1.i7 = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i7
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph8
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i, %bb.b
  %i.m = mul nuw nsw i64 %i.c, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8) #59
  resume { ptr, i32 } %i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i
  %i.n = mul nuw nsw i64 %i.c, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef 8) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit5: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.c = shl nuw nsw i64 %.val1, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.c, i64 noundef 4) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEEB1i_(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit5, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit.i
  %.sroa.0.012.i = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %.0.val, i64 %.sroa.0.012.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.012.i, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6584)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6588)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 47
  %i.f = load i8, ptr %i.e, align 1, !range !31, !alias.scope !6589, !noundef !10
  %i.g = and i8 %i.f, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.g, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6590)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !6591, !nonnull !10, !noundef !10
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.h = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !6592
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit.i, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.c, %.8.val
  br i1 %i.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.c, %.8.val
  br i1 %i.l, label %.loopexit, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit11.i
  %.sroa.0.113.i = phi i64 [ %i.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit11.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %.0.val, i64 %.sroa.0.113.i ; 2 uses
  %i.n = add i64 %.sroa.0.113.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6593)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6597)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 47
  %i.q = load i8, ptr %i.p, align 1, !range !31, !alias.scope !6598, !noundef !10
  %i.r = and i8 %i.q, -2
  %switch.i.i.i.i.i7.i = icmp eq i8 %i.r, -48
  br i1 %switch.i.i.i.i.i7.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit11.i

bb.e:                                             ; preds = %.lr.ph15.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6599)
  %.pn.i.i.i.i.i.i8.i = load ptr, ptr %i.o, align 8, !alias.scope !6600, !nonnull !10, !noundef !10
  %.sroa.0.0.i.i.i.i.i.i9.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i8.i, i64 -8
  %i.s = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i9.i, i64 1 release, align 8, !noalias !6601
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit11.i, !prof !20

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit11.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit11.i: ; preds = %bb.f, %bb.e, %.lr.ph15.i
  %i.u = icmp eq i64 %i.n, %.8.val
  br i1 %i.u, label %.loopexit, label %.lr.ph15.i

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit.i
  %i.w = mul nuw nsw i64 %.8.val, 56
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.w, i64 noundef 8) #59
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_.exit5: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4
  ret void

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEBJ_.exit11.i, %bb.d
  %i.x = mul nuw nsw i64 %.8.val, 56
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.x, i64 noundef 8) #59
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEEB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !10
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6611)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !6612, !noundef !10 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !6613
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerE9drop_slowBL_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints18OwnedConstraintSetEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtB1l_10ConstraintEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdNtNtB1l_7support9SupportIdEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1f_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1m_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1m_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1f_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints13SourceOrderIdNtB1l_11SourceOrderEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdNtB1l_16InteriorNodeDataEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdNtNtB1l_7support9SupportIdEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1f_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1m_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1m_.exit.i: ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic5types23ApplyTypeMappingVisitorEBF_:bb.a
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ab, align 8, !noalias !6964
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1D_31ApplyMaterializationEquivalenceTNtB1D_4TypeB3i_EbKj1_EEEEB1F_.exit24

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtBH_31ApplyMaterializationEquivalenceTNtBH_4TypeB2l_EbKj1_EE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1D_31ApplyMaterializationEquivalenceTNtB1D_4TypeB3i_EbKj1_EEEEB1F_.exit24

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1D_31ApplyMaterializationEquivalenceTNtB1D_4TypeB3i_EbKj1_EEEEB1F_.exit24: ; preds = %bb.w, %bb.x, %bb.y
  ret void

bb.z:                                             ; preds = %bb.u, %bb.b, %bb.d, %bb.g, %bb.j, %bb.m, %bb.p
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCscdodAO9FK5_5alloc2rc2RcINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic13CycleDetectorNtB1D_31ApplyMaterializationEquivalenceTNtB1D_4TypeB3i_EbKj1_EEEEB1F_.exit: ; preds = %bb.t, %bb.s, %bb.u
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7019)
  %i.a = load i64, ptr %0, align 8, !range !37, !alias.scope !7019, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.g
    i64 2, label %bb.i
    i64 3, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7023)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.d = load i8, ptr %i.c, align 1, !range !31, !alias.scope !7024, !noundef !10
  %i.e = and i8 %i.d, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7025)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7026, !nonnull !10, !noundef !10
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !7026
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit, !prof !20

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7027)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.i = load i8, ptr %i.h, align 1, !range !13, !alias.scope !7028, !noundef !10 ; 2 uses
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7032)
  %i.k = and i8 %i.i, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.k, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7033)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7034, !nonnull !10, !noundef !10
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.l = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !7034
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit, !prof !20

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7038)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.o = load i8, ptr %i.n, align 1, !range !31, !alias.scope !7039, !noundef !10
  %i.p = and i8 %i.o, -2
  %switch.i.i.i.i1.i = icmp eq i8 %i.p, -48
  br i1 %switch.i.i.i.i1.i, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7040)
  %.pn.i.i.i.i.i2.i = load ptr, ptr %i.b, align 8, !alias.scope !7041, !nonnull !10, !noundef !10
  %.sroa.0.0.i.i.i.i.i3.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i2.i, i64 -8
  %i.q = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i3.i, i64 1 release, align 8, !noalias !7041
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit, !prof !20

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7045)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.t = load i8, ptr %i.s, align 1, !range !31, !alias.scope !7046, !noundef !10
  %i.u = and i8 %i.t, -2
  %switch.i.i.i.i5.i = icmp eq i8 %i.u, -48
  br i1 %switch.i.i.i.i5.i, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7047)
  %.pn.i.i.i.i.i6.i = load ptr, ptr %i.b, align 8, !alias.scope !7048, !nonnull !10, !noundef !10
  %.sroa.0.0.i.i.i.i.i7.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i6.i, i64 -8
  %i.v = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i7.i, i64 1 release, align 8, !noalias !7048
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit, !prof !20

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7052)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.y = load i8, ptr %i.x, align 1, !range !31, !alias.scope !7053, !noundef !10
  %i.z = and i8 %i.y, -2
  %switch.i.i.i.i9.i = icmp eq i8 %i.z, -48
  br i1 %switch.i.i.i.i9.i, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7054)
  %.pn.i.i.i.i.i10.i = load ptr, ptr %i.b, align 8, !alias.scope !7055, !nonnull !10, !noundef !10
  %.sroa.0.0.i.i.i.i.i11.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i10.i, i64 -8
  %i.aa = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i11.i, i64 1 release, align 8, !noalias !7055
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit, !prof !20

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i: ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.c
  tail call void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit.sink.split.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10PathBoundsEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !10
  %switch = icmp samesign ult i64 %i.a, 2
  br i1 %switch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSIBC_SNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEEB1l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7058)
  %cond = icmp eq i64 %.val1, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSIBC_SNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEEB1l_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i2 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.0.i.i2 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i2, 1       ; 4 uses
  %.val8.i.i = load ptr, ptr %i.e, align 8, !alias.scope !7058, !nonnull !10, !noundef !10
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %.val9.i.i = load i64, ptr %i.g, align 8, !alias.scope !7058, !noundef !10
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1g_(ptr nonnull %.val8.i.i, i64 %.val9.i.i)
          to label %bb.c unwind label %bb.e, !noalias !7058

bb.d:                                             ; preds = %.lr.ph4
  %i.h = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.i = icmp eq i64 %i.h, %.val1
  br i1 %i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph4

bb.e:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.f, %.val1
  br i1 %i.k, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i3 = phi i64 [ %i.h, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.1.i.i3 ; 2 uses
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !7058, !nonnull !10, !noundef !10
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val7.i.i = load i64, ptr %i.m, align 8, !alias.scope !7058, !noundef !10
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1g_(ptr nonnull %.val.i.i, i64 %.val7.i.i) #57
          to label %bb.d unwind label %bb.f, !noalias !7058

bb.f:                                             ; preds = %.lr.ph4
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !7058
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d, %bb.e
  %i.o = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.o, i64 noundef 8) #59
  resume { ptr, i32 } %i.j

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.c
  %i.p = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef 8) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSIBC_SNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEEB1l_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSIBC_SNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEEB1l_.exit: ; preds = %bb.b, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10SequentMapEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #57
          to label %common.resume.i.i.i.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.c, %bb.b
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints15PathAssignmentsEBH_(ptr noalias noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentEEB1d_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1i_12ConstraintIdtEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_(ptr noalias noundef align 8 dereferenceable(56) %i.d) #57
          to label %.body10 unwind label %bb.ac

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentEEB1d_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentEEB1d_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1G_12ConstraintIdtEEEEB1K_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %.body10 unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7SequentEEB1d_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1d_12ConstraintIdtEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1h_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1g_12ConstraintIdtEEEB1k_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1k_12ConstraintIdtEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %.body10 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1g_12ConstraintIdtEEEB1k_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1k_12ConstraintIdtEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1i_12ConstraintIdtEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit unwind label %bb.j

.body10:                                          ; preds = %bb.j, %bb.g, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.j ], [ %i.i, %bb.g ], [ %i.h, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjtEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.l) #57
          to label %.body12 unwind label %bb.ac

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1g_12ConstraintIdtEEEB1k_.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body10

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1i_12ConstraintIdtEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1g_12ConstraintIdtEEEB1k_.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjtEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints20ConstraintAssignmentTNtB1i_12ConstraintIdtEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjtEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerEBH_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i24 = load ptr, ptr %i.g, align 8, !alias.scope !7094, !nonnull !10, !noundef !10
  %i.h = shl nuw nsw i64 %.val1.i22, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24, i64 noundef %i.h, i64 noundef 4) #59, !noalias !7094
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit25

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit25: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i23, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10ConstraintEEB1g_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7096)
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !7097, !nonnull !10, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load i64, ptr %i.j, align 8, !alias.scope !7097, !noundef !10 ; 2 uses
  %i.k = ptrtoint ptr %.val.i.i to i64            ; 3 uses
  %i.l = lshr i64 %.val1.i.i, 3
  %i.m = shl i64 %i.k, 3
  %i.n = and i64 %i.m, 56
  %i.o = and i64 %.val1.i.i, 7
  %i.p = add nuw nsw i64 %i.o, 63
  %i.q = add nuw nsw i64 %i.p, %i.l
  %i.r = add nuw nsw i64 %i.q, %i.n
  %i.s = lshr i64 %i.r, 6                         ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit25
  %i.u = and i64 %i.k, -8
  %i.v = getelementptr i8, ptr %.val.i.i, i64 %i.u
  %i.w = sub i64 0, %i.k
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w     ; 2 uses
  %i.y = shl nuw nsw i64 %i.s, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.y, i64 noundef 8) #59, !noalias !7097
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit25
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i26 = load i64, ptr %i.z, align 8, !alias.scope !7095, !noundef !10 ; 2 uses
  %i.aa = icmp eq i64 %.val1.i26, 0
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i27 = load ptr, ptr %i.ab, align 8, !alias.scope !7095, !nonnull !10, !noundef !10
  %i.ac = shl nuw nsw i64 %.val1.i26, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27, i64 noundef %i.ac, i64 noundef 4) #59, !noalias !7095
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEEB1d_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEEB1d_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtB1n_7typevar20BoundTypeVarIdentityEEB1p_.exit unwind label %bb.d

.body:                                            ; preds = %bb.d, %bb.b
  %.pn4 = phi { ptr, i32 } [ %i.ad, %bb.b ], [ %i.aj, %bb.d ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7098)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i28 = load i64, ptr %i.af, align 8, !alias.scope !7098, !noundef !10 ; 2 uses
  %i.ag = icmp eq i64 %.val1.i28, 0
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i29

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i29: ; preds = %.body
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i30 = load ptr, ptr %i.ah, align 8, !alias.scope !7098, !nonnull !10, !noundef !10
  %i.ai = shl nuw nsw i64 %.val1.i28, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i30, i64 noundef %i.ai, i64 noundef 4) #59, !noalias !7098
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEEB1d_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtB1n_7typevar20BoundTypeVarIdentityEEB1p_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEEB1d_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7099)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i31 = load i64, ptr %i.ak, align 8, !alias.scope !7099, !noundef !10 ; 2 uses
  %i.al = icmp eq i64 %.val1.i31, 0
  br i1 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit34, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i32

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i32: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtB1n_7typevar20BoundTypeVarIdentityEEB1p_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i33 = load ptr, ptr %i.am, align 8, !alias.scope !7099, !nonnull !10, !noundef !10
  %i.an = shl nuw nsw i64 %.val1.i31, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i33, i64 noundef %i.an, i64 noundef 4) #59, !noalias !7099
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit34

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i29, %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7100)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i35 = load i64, ptr %i.ao, align 8, !alias.scope !7100, !noundef !10 ; 2 uses
  %i.ap = icmp eq i64 %.val1.i35, 0
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit38, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i36

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i36: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i37 = load ptr, ptr %i.aq, align 8, !alias.scope !7100, !nonnull !10, !noundef !10
  %i.ar = shl nuw nsw i64 %.val1.i35, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i37, i64 noundef %i.ar, i64 noundef 4) #59, !noalias !7100
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit38

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit34: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i32, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsipcY9BhxV6q_10ruff_index3vec8IndexVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9TypeVarIdNtNtB1n_7typevar20BoundTypeVarIdentityEEB1p_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i39 = load i64, ptr %i.as, align 8, !alias.scope !7101, !noundef !10 ; 2 uses
  %i.at = icmp eq i64 %.val1.i39, 0
  br i1 %i.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit42, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i40

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i40: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i41 = load ptr, ptr %i.au, align 8, !alias.scope !7101, !nonnull !10, !noundef !10
  %i.av = shl nuw nsw i64 %.val1.i39, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i41, i64 noundef %i.av, i64 noundef 4) #59, !noalias !7101
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit42

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit38: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i36, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw) #57
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1i_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) #57
          to label %.body52 unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit42: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i40, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints16InteriorNodeDataEEB1g_.exit34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7103)
  %.val.i.i43 = load ptr, ptr %i.ay, align 8, !alias.scope !7104, !nonnull !10, !noundef !10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i44 = load i64, ptr %i.az, align 8, !alias.scope !7104, !noundef !10 ; 2 uses
  %i.ba = ptrtoint ptr %.val.i.i43 to i64         ; 3 uses
  %i.bb = lshr i64 %.val1.i.i44, 3
  %i.bc = shl i64 %i.ba, 3
  %i.bd = and i64 %i.bc, 56
  %i.be = and i64 %.val1.i.i44, 7
  %i.bf = add nuw nsw i64 %i.be, 63
  %i.bg = add nuw nsw i64 %i.bf, %i.bb
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  %i.bi = lshr i64 %i.bh, 6                       ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i46, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i45

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i45: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit42
  %i.bk = and i64 %i.ba, -8
  %i.bl = getelementptr i8, ptr %.val.i.i43, i64 %i.bk
  %i.bm = sub i64 0, %i.ba
  %i.bn = getelementptr i8, ptr %i.bl, i64 %i.bm  ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bi, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.bo, i64 noundef 8) #59, !noalias !7104
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i46: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i45, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit42
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val1.i47 = load i64, ptr %i.bp, align 8, !alias.scope !7102, !noundef !10 ; 2 uses
  %i.bq = icmp eq i64 %.val1.i47, 0
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit50, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i48

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i48: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i46
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val.i49 = load ptr, ptr %i.br, align 8, !alias.scope !7102, !nonnull !10, !noundef !10
  %i.bs = shl nuw nsw i64 %.val1.i47, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i49, i64 noundef %i.bs, i64 noundef 4) #59, !noalias !7102
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit50

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit50: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i48, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i46
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7105)
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !7105, !nonnull !10, !noundef !10 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !7105, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %i.bw, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1i_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i.i: ; preds = %.lr.ph
  %i.bx = icmp eq i64 %i.bz, %i.bw
  br i1 %i.bx, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit50, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i.i
  %.sroa.0.0.i.i68 = phi i64 [ %i.bz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit50 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.sroa.0.0.i.i68
  %i.bz = add nuw nsw i64 %.sroa.0.0.i.i68, 1     ; 4 uses
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i.i unwind label %bb.e, !noalias !7105

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i.i: ; preds = %.lr.ph70
  %i.ca = add i64 %.sroa.0.1.i.i69, 1             ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.bw
  br i1 %i.cb, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i51, label %.lr.ph70

bb.e:                                             ; preds = %.lr.ph
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = icmp eq i64 %i.bz, %i.bw
  br i1 %i.cd, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i51, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i.i
  %.sroa.0.1.i.i69 = phi i64 [ %i.ca, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i.i ], [ %i.bz, %bb.e ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.sroa.0.1.i.i69
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i.i unwind label %bb.f, !noalias !7105

bb.f:                                             ; preds = %.lr.ph70
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !7105
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i51: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit7.i.i, %bb.e
  %i.cg = mul nuw nsw i64 %i.bw, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.cg, i64 noundef 8) #59, !noalias !7105
  br label %.body52

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEBJ_.exit.i.i
  %i.ch = mul nuw nsw i64 %i.bw, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.ch, i64 noundef 8) #59, !noalias !7105
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1i_.exit

.body52:                                          ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i51, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit38
  %.pn12 = phi { ptr, i32 } [ %.pn4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit38 ], [ %i.cc, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i51 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ci) #57
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val18 = load i64, ptr %i.cj, align 8, !noundef !10 ; 2 uses
  %i.ck = icmp eq i64 %.val18, 0
  br i1 %i.ck, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1g_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i62

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1i_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit50, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7107)
  %.val.i.i54 = load ptr, ptr %i.cl, align 8, !alias.scope !7108, !nonnull !10, !noundef !10 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val1.i.i55 = load i64, ptr %i.cm, align 8, !alias.scope !7108, !noundef !10 ; 2 uses
  %i.cn = ptrtoint ptr %.val.i.i54 to i64         ; 3 uses
  %i.co = lshr i64 %.val1.i.i55, 3
  %i.cp = shl i64 %i.cn, 3
  %i.cq = and i64 %i.cp, 56
  %i.cr = and i64 %.val1.i.i55, 7
  %i.cs = add nuw nsw i64 %i.cr, 63
  %i.ct = add nuw nsw i64 %i.cs, %i.co
  %i.cu = add nuw nsw i64 %i.ct, %i.cq
  %i.cv = lshr i64 %i.cu, 6                       ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i57, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i56

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i56: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1i_.exit
  %i.cx = and i64 %i.cn, -8
  %i.cy = getelementptr i8, ptr %.val.i.i54, i64 %i.cx
  %i.cz = sub i64 0, %i.cn
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz  ; 2 uses
  %i.db = shl nuw nsw i64 %i.cv, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.db, i64 noundef 8) #59, !noalias !7108
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i57

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i57: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i56, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support7SupportEEB1i_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i58 = load i64, ptr %i.dc, align 8, !alias.scope !7106, !noundef !10 ; 2 uses
  %i.dd = icmp eq i64 %.val1.i58, 0
  br i1 %i.dd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit61, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i59

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i59: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i57
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i60 = load ptr, ptr %i.de, align 8, !alias.scope !7106, !nonnull !10, !noundef !10
  %i.df = shl nuw nsw i64 %.val1.i58, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i60, i64 noundef %i.df, i64 noundef 4) #59, !noalias !7106
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit61

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i62: ; preds = %.body52
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val17 = load ptr, ptr %i.dg, align 8, !nonnull !10, !noundef !10
  %i.dh = shl nuw nsw i64 %.val18, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.dh, i64 noundef 4) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1g_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit61: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i4.i59, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec5boxed6BitBoxyNtNtBG_5order4Msb0EECsoTR8nlGN3X_18ty_python_semantic.exit.i57
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val16 = load i64, ptr %i.di, align 8, !noundef !10 ; 2 uses
  %i.dj = icmp eq i64 %.val16, 0
  br i1 %i.dj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1g_.exit64, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i63

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i63: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit61
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.dk, align 8, !nonnull !10, !noundef !10
  %i.dl = shl nuw nsw i64 %.val16, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.dl, i64 noundef 4) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1g_.exit64

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1g_.exit64: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core4rank10RankBitBoxECsoTR8nlGN3X_18ty_python_semantic.exit61, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i63
  ret void

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints7support9SupportIdEEB1i_.exit38
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints11SourceOrderEEB1g_.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i62, %.body52
  resume { ptr, i32 } %.pn12
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEBH_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #57
          to label %common.resume.i.i.i.i.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %bb.c, %bb.b
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic26DefinitionReferenceVisitorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic23ActiveRecursionDetectorNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEEBI_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor13TypeCollectorEBH_(ptr noalias noundef align 8 dereferenceable(152) %i.c) #57
          to label %bb.f unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic23ActiveRecursionDetectorNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEEBI_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !range !18, !alias.scope !7117, !noundef !10
  %i.f = icmp eq i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic23ActiveRecursionDetectorNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEEBI_.exit
  tail call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor13TypeCollectorEBH_.exit

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6cyclic23ActiveRecursionDetectorNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEEBI_.exit
  tail call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor13TypeCollectorEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor13TypeCollectorEBH_.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
end_hunk_2
begin_hunk_3_@_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder6finish:bb.a
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtBJ_23ConstraintBoundsBuilder6finish0EBN_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  invoke void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType13from_elementsINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtB8_4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEB2b_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtBJ_23ConstraintBoundsBuilder6finish0EBN_.exit, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints10UpperBoundEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.d) #57
          to label %bb.k unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtBJ_23ConstraintBoundsBuilder6finish0EBN_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit.i, %bb.i
  %.sroa.03.0 = phi i32 [ %.sroa.03.0.copyload, %bb.i ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuE9shrink_toBO_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef 0)
          to label %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound13shrink_to_fit.exit unwind label %bb.h

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13743
  %.sroa.03.0.copyload = load i32, ptr %i.b, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtBJ_23ConstraintBoundsBuilder6finish0EBN_.exit

_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound13shrink_to_fit.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtBJ_23ConstraintBoundsBuilder6finish0EBN_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.s = xor i8 %i.i, -1
  %.sroa.06.0 = and i8 %i.g, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %5, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %6, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.03.0, ptr %i.v, align 8
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3, i64 12, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sroa.06.0, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_upper(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.g = call noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB4_4Type26has_unspecialized_type_var(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !13755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13754
  br i1 %i.g, label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13754
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type22bottom_materialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !13753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13754
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type19top_materialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !13753
  %i.h = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d), !noalias !13753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13754
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.i, align 8, !alias.scope !13753
  br label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 1, ptr %i.j, align 1, !alias.scope !13753
  br label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit

_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13756)
  call void @llvm.experimental.noalias.scope.decl(metadata !13757)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !13758, !noundef !10
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.i, label %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.thread.i

_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.i: ; preds = %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit
  %i.o = call { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_EBS_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @214), !noalias !13757
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound10add_clause.exit, label %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.thread.i

_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.thread.i: ; preds = %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.i, %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit
  %.val.i = load i32, ptr %4, align 4, !range !27, !alias.scope !13757, !noundef !10 ; 3 uses
  %i.r = icmp ne i32 %.val.i, 17
  call void @llvm.assume(i1 %i.r)
  %i.s = add nsw i32 %.val.i, -4
  %i.t = icmp samesign ugt i32 %.val.i, 3
  %narrow.i.i = select i1 %i.t, i32 %i.s, i32 13
  switch i32 %narrow.i.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread5.i [
    i32 1, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i
    i32 2, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i
  ]

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i: ; preds = %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.val1.i = load i8, ptr %i.u, align 4, !alias.scope !13757
  %spec.select.i.i = trunc i8 %.val1.i to i1
  br i1 %spec.select.i.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread5.i

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread5.i: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i, %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !noalias !13756
  %i.v = call { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a), !noalias !13757 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13759
  br label %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound10add_clause.exit

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i: ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.i, %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.thread.i
  call void @_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuE5clearBO_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k), !noalias !13757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13759
  store i32 6, ptr %i.b, align 4, !noalias !13759
  %i.w = call { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b), !noalias !13757 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13759
  br label %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound10add_clause.exit

_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound10add_clause.exit: ; preds = %_RNvMsb_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10UpperBound8is_never.exit.i, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread5.i, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8is_never.exit.thread.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_9PathBound5exact(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !noalias !13764
  call void @_RINvXs6_NtCs5e9M2GLoJMY_8indexmap3setINtB6_8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtB1F_4iter6traits7collect12FromIteratorBO_E9from_iterABO_j1_EBS_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13763
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8, !alias.scope !13769, !nonnull !10, !noundef !10 ; 4 uses
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load i64, ptr %i.c, align 8, !alias.scope !13769, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %.val1, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEBH_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.0.i.i.i5
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i.i5, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !noalias !13770

bb.c:                                             ; preds = %.lr.ph7
  %i.g = add i64 %.sroa.0.1.i.i.i6, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i6 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.1.i.i.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #57
          to label %bb.c unwind label %bb.e, !noalias !13770

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !13770
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %.val1, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef 8) #59, !noalias !13770
  %i.n = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataRNtNtBG_5alloc6GlobalEEB1f_.exit, label %bb.f

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.b
  %i.o = mul nuw nsw i64 %.val1, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.o, i64 noundef 8) #59, !noalias !13770
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEBH_.exit

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataRNtNtBG_5alloc6GlobalEEB1f_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataRNtNtBG_5alloc6GlobalEEB1f_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEBH_.exit: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.s = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataRNtNtBG_5alloc6GlobalEEB1f_.exit4, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEBH_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataRNtNtBG_5alloc6GlobalEEB1f_.exit4

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataRNtNtBG_5alloc6GlobalEEB1f_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataRNtNtBG_5alloc6GlobalEEB1f_.exit4: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEBH_.exit, %bb.h, %bb.i
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataRNtNtBG_5alloc6GlobalEEB1f_.exit: ; preds = %bb.g, %bb.f, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i
  resume { ptr, i32 } %i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerE9drop_slowBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerEBH_(ptr noalias noundef align 8 dereferenceable(216) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerRNtNtBG_5alloc6GlobalEEB1f_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerRNtNtBG_5alloc6GlobalEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 232, i64 noundef 8) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerRNtNtBG_5alloc6GlobalEEB1f_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerRNtNtBG_5alloc6GlobalEEB1f_.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerRNtNtBG_5alloc6GlobalEEB1f_.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 232, i64 noundef 8) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerRNtNtBG_5alloc6GlobalEEB1f_.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerRNtNtBG_5alloc6GlobalEEB1f_.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints23OwnedConstraintSetInnerRNtNtBG_5alloc6GlobalEEB1f_.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10PathBounds13default_solve(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noundef nonnull align 8 %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 4                ; 5 uses
  %.sroa.891 = alloca [12 x i8], align 4          ; 8 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 5 uses
  %i.h = alloca [16 x i8], align 4                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 4                ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  %i.l = alloca [16 x i8], align 4                ; 4 uses
  %i.m = alloca [16 x i8], align 4                ; 4 uses
  %i.n = alloca [32 x i8], align 4                ; 9 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 4                 ; 5 uses
  %i.q = alloca [16 x i8], align 4                ; 4 uses
  %i.r = alloca [16 x i8], align 4                ; 4 uses
  %i.s = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.69 = alloca [12 x i8], align 4           ; 5 uses
  %.sroa.323 = alloca [12 x i8], align 4          ; 2 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 2 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 4                ; 5 uses
  %i.v = alloca [16 x i8], align 4                ; 5 uses
  %i.w = alloca [16 x i8], align 4                ; 7 uses
  %i.x = alloca [16 x i8], align 4                ; 13 uses
  %i.y = alloca [56 x i8], align 8                ; 9 uses
  %i.z = alloca [16 x i8], align 4                ; 6 uses
  %i.aa = alloca [16 x i8], align 4               ; 5 uses
  %i.ab = alloca [16 x i8], align 4               ; 7 uses
  %.sroa.670 = alloca [12 x i8], align 4          ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !range !21, !noundef !10
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.af = load i32, ptr %i.ae, align 4, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13847)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 8, !alias.scope !13848 ; 5 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i, -1 ; 5 uses
  br i1 %.not.i, label %_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_9PathBound14lower_or_never.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.670, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, i64 12, i1 false), !alias.scope !13849
  br label %_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_9PathBound14lower_or_never.exit

_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_9PathBound14lower_or_never.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ 6, %bb.a ], [ %.sroa.0.0.copyload.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ah = tail call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB8_20BoundTypeVarInstance7typevarDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.ad, i32 noundef %i.af, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.ai = extractvalue { i32, i32 } %i.ah, 0
  %i.aj = extractvalue { i32, i32 } %i.ah, 1
  call void @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance28require_bound_or_constraints(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ab, i32 noundef %i.ai, i32 noundef %i.aj, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  %i.ak = load i32, ptr %i.ab, align 4, !range !24, !noundef !10
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMsm_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_9PathBound14lower_or_never.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.an = load i32, ptr %i.am, align 4, !range !21, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !10
  %i.aq = call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars8_1__NtB8_18TypeVarConstraints8elementsDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.an, i32 noundef %i.ap, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.at, 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %.outer._crit_edge.thread, label %.lr.ph.lr.ph

.outer._crit_edge.thread:                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.be

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !10
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_3
begin_hunk_4_@_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_10PathBounds7compute:bb.a

bb.c:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints12ConstraintIdINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_(ptr noalias noundef align 8 dereferenceable(56) %i.ao) #57
          to label %common.resume unwind label %bb.d, !noalias !13988

bb.d:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !13988
  unreachable

common.resume:                                    ; preds = %.body, %bb.cq, %bb.cr, %bb.bh, %bb.bi, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.gq, %bb.cq ], [ %i.bj, %bb.c ], [ %i.ej, %bb.bh ], [ %i.ek, %bb.bi ], [ %i.gr, %bb.cr ], [ %.pn51.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage23calculate_source_orders.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 56, i1 false), !noalias !13989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !13987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %switch.selectcmp.i.i = icmp eq i32 %5, -2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1, i32 2
  %switch.selectcmp1.i.i = icmp eq i32 %5, -1
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i32 0, i32 %switch.select.i.i
  switch i32 %switch.select2.i.i, label %default.unreachable245 [
    i32 0, label %bb.bc
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

default.unreachable245:                           ; preds = %bb.h, %bb.bq, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage23calculate_source_orders.exit
  unreachable

bb.e:                                             ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage23calculate_source_orders.exit
  br label %bb.bc

bb.f:                                             ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage23calculate_source_orders.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !13990
  store i64 0, ptr %i.an, align 8, !noalias !13990
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8, !noalias !13990
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 4 uses
  store i64 0, ptr %i.bm, align 8, !noalias !13990
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.br = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  br label %bb.h

bb.g:                                             ; preds = %.body.i
  br i1 %.sroa.020.2.i, label %.body49.thread67.loopexit.split-lp.i, label %.body

.body49.thread67.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.i, %bb.az
  %lpad.loopexit.split-lp285 = landingpad { ptr, i32 }
          cleanup
  br label %.body49.thread67.loopexit.split-lp.i

bb.h:                                             ; preds = %bb.bb, %bb.f
  %i.bt = phi i64 [ 0, %bb.f ], [ %i.dx, %bb.bb ] ; 4 uses
  %.sroa.0.0.i = phi i32 [ %5, %bb.f ], [ %i.dn, %bb.bb ] ; 3 uses
  %switch.selectcmp.i39.i = icmp eq i32 %.sroa.0.0.i, -2
  %switch.select.i40.i = select i1 %switch.selectcmp.i39.i, i32 1, i32 2
  %switch.selectcmp1.i41.i = icmp eq i32 %.sroa.0.0.i, -1
  %switch.select2.i42.i = select i1 %switch.selectcmp1.i41.i, i32 0, i32 %switch.select.i40.i
  switch i32 %switch.select2.i42.i, label %default.unreachable245 [
    i32 0, label %bb.j
    i32 1, label %.loopexit174
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !13990
  invoke void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage18interior_node_data(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %4, i32 noundef %.sroa.0.0.i)
          to label %bb.ao unwind label %.body49.thread67.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13991

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !13990
  store i64 0, ptr %i.ai, align 8, !alias.scope !13992, !noalias !13990
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !13992, !noalias !13990
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !13992, !noalias !13990
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @57, i64 32, i1 false), !noalias !13990
  %i.bu = load ptr, ptr %i.bl, align 8, !noalias !13990, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13993
  store ptr %i.a, ptr %i.aa, align 8, !noalias !13994
  %i.bv = icmp samesign ult i64 %i.bt, 2
  br i1 %i.bv, label %bb.o, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp samesign ult i64 %i.bt, 21
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB14_11constraints16ConstraintBoundsjENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyjNCNvMso_B2f_NtB2f_10PathBounds32compute_simple_bound_conjunctions_0E0INtNtB30_3vec3VecBZ_EEB16_(ptr noalias noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 192153584101141163) %i.bt, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.o unwind label %bb.n, !noalias !13995

bb.m:                                             ; preds = %bb.k
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1r_11constraints16ConstraintBoundsjENCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_11sort_by_keyjNCNvMso_B2C_NtB2C_10PathBounds32compute_simple_bound_conjunctions_0E0EB1t_(ptr noalias noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 192153584101141163) %i.bt, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.o unwind label %bb.n, !noalias !13995

.body.i:                                          ; preds = %bb.u, %bb.p, %bb.n
  %.sroa.020.2.i = phi i1 [ false, %bb.p ], [ %.sroa.020.3.i, %bb.n ], [ false, %bb.u ]
  %.pn.i = phi { ptr, i32 } [ %i.ce, %bb.p ], [ %i.bx, %bb.n ], [ %i.cn, %bb.u ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1k_11constraints23ConstraintBoundsBuilderINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1m_(ptr noalias noundef align 8 dereferenceable(56) %i.ai) #57
          to label %bb.g unwind label %bb.al, !noalias !13995

bb.n:                                             ; preds = %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1t_11constraints16ConstraintBoundsjEEEB1v_.exit46.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i, %bb.m, %bb.l
  %.sroa.020.3.i = phi i1 [ true, %bb.m ], [ false, %bb.r ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1t_11constraints16ConstraintBoundsjEEEB1v_.exit46.i ], [ false, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i ], [ true, %bb.l ]
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13993
  %i.by = load ptr, ptr %i.bl, align 8, !noalias !13990, !nonnull !10, !noundef !10 ; 4 uses
  %i.bz = load i64, ptr %i.an, align 8, !range !22, !noalias !13990, !noundef !10
  %i.ca = load i64, ptr %i.bm, align 8, !noalias !13990, !noundef !10 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 192153584101141163
  call void @llvm.assume(i1 %i.cb)
  %.idx.i = mul nuw nsw i64 %i.ca, 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !13990
  store ptr %i.by, ptr %i.ah, align 8, !noalias !13990
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr %i.by, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !13990
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.bz, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !13990
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store ptr %i.cc, ptr %.sroa.613.0..sroa_idx.i, align 8, !noalias !13990
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.i: ; preds = %bb.o
  %.sroa.523.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.sroa.527.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.i

bb.p:                                             ; preds = %bb.ai, %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i.i, %.noexc53.i, %bb.ae, %bb.ad, %bb.ab, %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %.body.i unwind label %bb.al, !noalias !13995

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.i: ; preds = %bb.aj, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.i
  %i.cf = phi ptr [ %i.by, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph.i ], [ %i.db, %bb.aj ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13996)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store ptr %i.cg, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !13996, !noalias !13990
  %.sroa.059.0.copyload.i = load i32, ptr %i.cf, align 8, !noalias !13997 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !13997 ; 2 uses
  %.not.i58 = icmp eq i32 %.sroa.059.0.copyload.i, -2
  br i1 %.not.i58, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.i
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !13997
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !13997
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.527.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx.i, i64 12, i1 false), !noalias !13995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.527.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx.i, i64 12, i1 false), !noalias !13995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !13990
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBR_11constraints23ConstraintBoundsBuilderINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE5entryBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ai, i32 noundef %.sroa.10.0.copyload.i, i32 noundef %.sroa.11.0.copyload.i)
          to label %bb.ab unwind label %bb.p, !noalias !13995

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i: ; preds = %bb.aj, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.i, %bb.o
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1t_11constraints16ConstraintBoundsjEEEB1v_.exit46.i unwind label %bb.n, !noalias !13995

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1t_11constraints16ConstraintBoundsjEEEB1v_.exit46.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !13990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !13990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13990
  invoke void @_RINvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB5_4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBP_11constraints23ConstraintBoundsBuilderE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBR_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228)
          to label %bb.r unwind label %bb.n, !noalias !13995

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1t_11constraints16ConstraintBoundsjEEEB1v_.exit46.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !13990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13990
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %1, ptr %i.ch, align 8, !noalias !13990
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %2, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !13990
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store ptr %3, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !13990
  %i.ci = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB23_8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter5DrainNtNtBT_7typevar20BoundTypeVarInstanceNtBR_23ConstraintBoundsBuilderENCNvMso_BR_NtBR_10PathBounds32compute_simple_bound_conjunctions0_0EEBV_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ad)
          to label %bb.s unwind label %bb.n, !noalias !13995 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.cj = extractvalue { ptr, i64 } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { ptr, i64 } %i.ci, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13990
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !13998
  %i.cl = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !13998 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.t, label %bb.w, !prof !20

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #58
          to label %.noexc47.i unwind label %bb.u, !noalias !13995

.noexc47.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints9PathBoundEEB1g_(ptr nonnull %i.cj, i64 %i.ck)
          to label %.body.i unwind label %bb.v, !noalias !13995

bb.v:                                             ; preds = %bb.u
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !13995
  unreachable

bb.w:                                             ; preds = %bb.s
  store ptr %i.cj, ptr %i.cl, align 8, !noalias !13995
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.ck, ptr %.sroa.561.0..sroa_idx.i, align 8, !noalias !13995
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %bb.x, !noalias !13995

bb.x:                                             ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1I_11constraints23ConstraintBoundsBuilderEEEB1K_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ai) #57
          to label %.body unwind label %bb.aa, !noalias !13995

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.w
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1f_11constraints23ConstraintBoundsBuilderEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1h_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1i_11constraints23ConstraintBoundsBuilderEEB1k_.exit.i.i unwind label %bb.y, !noalias !13995

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1m_11constraints23ConstraintBoundsBuilderEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ai)
          to label %.body unwind label %bb.z, !noalias !13995

bb.z:                                             ; preds = %bb.y
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !13995
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !13995
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1i_11constraints23ConstraintBoundsBuilderEEB1k_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1m_11constraints23ConstraintBoundsBuilderEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1o_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ai)
          to label %.noexc unwind label %.split

.noexc:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1i_11constraints23ConstraintBoundsBuilderEEB1k_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !13990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !13990
  br label %bb.bc

bb.ab:                                            ; preds = %bb.q
  %i.cu = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs5e9M2GLoJMY_8indexmap3map5entryINtB2_5EntryNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBT_11constraints23ConstraintBoundsBuilderE10or_defaultBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ag)
          to label %bb.ac unwind label %bb.p, !noalias !13995 ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !13990
  %.not30.i = icmp eq i32 %.sroa.059.0.copyload.i, -1
  br i1 %.not30.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !13990
  store i32 %.sroa.059.0.copyload.i, ptr %i.af, align 4, !noalias !13990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.0..sroa_idx24.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.i, i64 12, i1 false), !noalias !13990
  call void @llvm.experimental.noalias.scope.decl(metadata !13999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.af, i64 16, i1 false), !noalias !14001
  call void @llvm.experimental.noalias.scope.decl(metadata !14002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !14003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.af, i64 16, i1 false), !noalias !14001
  %i.cv = invoke noundef zeroext i1 @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB4_4Type26has_unspecialized_type_var(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.w, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %.noexc52.i unwind label %bb.p, !noalias !13995

.noexc52.i:                                       ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14003
  br i1 %i.cv, label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc52.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !14003
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type22bottom_materialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.y, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.z, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %.noexc53.i unwind label %bb.p, !noalias !13995

.noexc53.i:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14003
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type19top_materialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.x, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.z, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %.noexc54.i unwind label %bb.p, !noalias !13995

.noexc54.i:                                       ; preds = %.noexc53.i
  %i.cw = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.y, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.x), !noalias !14004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !14003
  br i1 %i.cw, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc54.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  store i8 1, ptr %i.cx, align 8, !alias.scope !14005, !noalias !13995
  br label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i.i

bb.ag:                                            ; preds = %.noexc54.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 113
  store i8 1, ptr %i.cy, align 1, !alias.scope !14005, !noalias !13995
  br label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i.i

_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i.i: ; preds = %bb.ag, %bb.af, %.noexc52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14000
  %i.cz = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.cu, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.af)
          to label %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_lower.exit.i unwind label %bb.p, !noalias !13995 ; 0 uses

bb.ah:                                            ; preds = %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_lower.exit.i, %bb.ac
  %.not31.i = icmp eq i32 %.sroa.8.0.copyload.i, -1
  br i1 %.not31.i, label %bb.aj, label %bb.ai

_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_lower.exit.i: ; preds = %_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder17classify_evidence.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !13990
  br label %bb.ah

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !13990
  store i32 %.sroa.8.0.copyload.i, ptr %i.ae, align 4, !noalias !13990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.527.0..sroa_idx28.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.527.i, i64 12, i1 false), !noalias !13990
  invoke fastcc void @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_23ConstraintBoundsBuilder9add_upper(ptr noalias noundef align 8 dereferenceable(120) %i.cu, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ae)
          to label %bb.ak unwind label %bb.p, !noalias !13995

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i)
  %i.da = load ptr, ptr %.sroa.613.0..sroa_idx.i, align 8, !alias.scope !14006, !noalias !13990, !nonnull !10, !noundef !10
  %i.db = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !14006, !noalias !13990, !nonnull !10, !noundef !10 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.da
  br i1 %i.dc, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB10_11constraints16ConstraintBoundsjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB12_.exit.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !13990
  br label %bb.aj

bb.al:                                            ; preds = %.body49.thread67.loopexit.split-lp.i, %bb.p, %.body.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !13995
  unreachable

.loopexit174:                                     ; preds = %bb.h, %.loopexit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBJ_11constraints16ConstraintBoundsjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1c_11constraints16ConstraintBoundsjEEEB1e_.exit.i unwind label %bb.am, !noalias !13995

bb.am:                                            ; preds = %.loopexit174
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBQ_11constraints16ConstraintBoundsjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body unwind label %bb.an, !noalias !13995

bb.an:                                            ; preds = %bb.am
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !13995
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtB1c_11constraints16ConstraintBoundsjEEEB1e_.exit.i: ; preds = %.loopexit174
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceNtNtBQ_11constraints16ConstraintBoundsjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.bd unwind label %.split

bb.ao:                                            ; preds = %bb.i
  %.val35.i = load i32, ptr %i.bn, align 4, !noalias !13990, !noundef !10
  %i.dg = icmp eq i32 %.val35.i, -2
  %.val.i = load i32, ptr %i.bo, align 4, !noalias !13990
  %i.dh = icmp eq i32 %.val.i, -2
  %or.cond.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i, label %bb.ap, label %.loopexit.i

bb.ap:                                            ; preds = %bb.ao
  %i.di = load i32, ptr %i.am, align 4, !range !21, !noalias !13990, !noundef !10
  invoke fastcc void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage15constraint_data(ptr noalias noundef align 4 captures(none) dereferenceable(40) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %4, i32 noundef %i.di)
          to label %bb.aq unwind label %.body49.thread67.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13991

bb.aq:                                            ; preds = %bb.ap
  %i.dj = load i32, ptr %i.bp, align 8, !range !21, !noalias !13990, !noundef !10 ; 2 uses
  %i.dk = load i32, ptr %i.bq, align 4, !noalias !13990, !noundef !10 ; 2 uses
  %i.dl = invoke noundef zeroext i1 @_RNvMsi_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance12is_inferable(i32 noundef %i.dj, i32 noundef %i.dk, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %6, i32 %7)
          to label %bb.ar unwind label %.body49.thread67.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13995

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.dl, label %bb.as, label %.loopexit.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !13990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !13990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !noalias !13990
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5chainINtNtB8_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBR_EB1h_(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.al, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.br)
          to label %bb.at unwind label %.body49.thread67.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13995

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13990
  store ptr %1, ptr %i.ac, align 8, !noalias !13990
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i55, align 8, !noalias !13990
  store ptr %3, ptr %.sroa.6.0..sroa_idx.i56, align 8, !noalias !13990
  %i.dm = invoke noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2g_3any5checkB1o_NCNvMso_NtB1q_11constraintsNtB3v_10PathBounds32compute_simple_bound_conjunction0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB1s_(ptr noalias noundef nonnull align 4 dereferenceable(32) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
end_hunk_4
