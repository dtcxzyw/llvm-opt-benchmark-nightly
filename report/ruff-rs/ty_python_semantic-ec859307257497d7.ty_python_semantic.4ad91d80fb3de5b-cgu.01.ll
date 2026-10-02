Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.01?download=true
inline.NumInlined: 12775
inline.NumDeleted: 7325
loop-unroll.NumRuntimeUnrolled: 149
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2i_10filter_map9FilterMapNtNtBX_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB36_NtB3C_20DeclarationsIteratorNCB4n_s1_0EEE9from_iterB4t_:bb.a
  %i.s = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.t = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8569, !noalias !8570, !noundef !14 ; 5 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.c, align 8, !range !24, !alias.scope !8569, !noalias !8570, !noundef !14
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef 1, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %.loopexit.i, !noalias !8567

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i.i.i, %.lr.ph.i.i.i
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8569, !noalias !8570, !nonnull !14, !noundef !14
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.t ; 2 uses
  store i32 %i.r, ptr %i.y, align 4, !noalias !8567
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.s, ptr %i.z, align 4, !noalias !8567
  %i.aa = add nuw nsw i64 %i.t, 1
  store i64 %i.aa, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8569, !noalias !8570
  %i.ab = invoke fastcc { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s1_0EENtNtNtB8_6traits8iterator8Iterator4nextB2N_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !8567 ; 2 uses

.noexc11.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.ac = extractvalue { i32, i32 } %i.ab, 0      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2d_10filter_map9FilterMapNtNtBU_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB31_NtB3x_20DeclarationsIteratorNCB4i_s1_0EEE11spec_extendB4o_.exit.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !8567, !noalias !8571
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ad, align 8, !alias.scope !8567, !noalias !8571
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8, !alias.scope !8567, !noalias !8571
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB3k_NtB3Q_20DeclarationsIteratorNCB4C_s1_0EEE9from_iterB4I_.exit

.loopexit.i:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.e, !noalias !8567

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2d_10filter_map9FilterMapNtNtBU_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB31_NtB3x_20DeclarationsIteratorNCB4i_s1_0EEE11spec_extendB4o_.exit.i: ; preds = %.noexc11.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8571
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB3k_NtB3Q_20DeclarationsIteratorNCB4C_s1_0EEE9from_iterB4I_.exit

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8567
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB3k_NtB3Q_20DeclarationsIteratorNCB4C_s1_0EEE9from_iterB4I_.exit: ; preds = %bb.c, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2d_10filter_map9FilterMapNtNtBU_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names0_0EIB31_NtB3x_20DeclarationsIteratorNCB4i_s1_0EEE11spec_extendB4o_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8568
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2i_10filter_map9FilterMapNtNtBX_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB36_NtB3C_20DeclarationsIteratorNCB4n_s3_0EEE9from_iterB4t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8582
  %i.d = tail call fastcc { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator4nextB2N_(ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !8581 ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8582
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !8581
  %i.g = load i64, ptr %i.a, align 8, !range !28, !noalias !8582, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !60, !noalias !8582, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i
  %i.l = load i64, ptr %i.k, align 8, !noalias !8582
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #31, !noalias !8581
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i
  %i.m = load ptr, ptr %i.k, align 8, !noalias !8582, !nonnull !14, !noundef !14 ; 3 uses
  %i.n = icmp ugt i64 %i.j, 3
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8582
  store i32 %i.e, ptr %i.m, align 4, !noalias !8581
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.f, ptr %i.o, align 4, !noalias !8581
  store i64 %i.j, ptr %i.c, align 8, !noalias !8582
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8582
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !8582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !8581
  %i.p = invoke fastcc { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator4nextB2N_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !8581 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.q = extractvalue { i32, i32 } %i.p, 0        ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2d_10filter_map9FilterMapNtNtBU_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB31_NtB3x_20DeclarationsIteratorNCB4i_s3_0EEE11spec_extendB4o_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc11.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.ab, %.noexc11.i ], [ %i.p, %.noexc.i ]
  %i.r = phi i32 [ %i.ac, %.noexc11.i ], [ %i.q, %.noexc.i ]
  %i.s = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.t = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8583, !noalias !8584, !noundef !14 ; 5 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.c, align 8, !range !24, !alias.scope !8583, !noalias !8584, !noundef !14
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef 1, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %.loopexit.i, !noalias !8581

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i.i.i, %.lr.ph.i.i.i
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8583, !noalias !8584, !nonnull !14, !noundef !14
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.t ; 2 uses
  store i32 %i.r, ptr %i.y, align 4, !noalias !8581
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.s, ptr %i.z, align 4, !noalias !8581
  %i.aa = add nuw nsw i64 %i.t, 1
  store i64 %i.aa, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8583, !noalias !8584
  %i.ab = invoke fastcc { i32, i32 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator4nextB2N_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !8581 ; 2 uses

.noexc11.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.ac = extractvalue { i32, i32 } %i.ab, 0      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2d_10filter_map9FilterMapNtNtBU_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB31_NtB3x_20DeclarationsIteratorNCB4i_s3_0EEE11spec_extendB4o_.exit.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !8581, !noalias !8585
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ad, align 8, !alias.scope !8581, !noalias !8585
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8, !alias.scope !8581, !noalias !8585
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB3k_NtB3Q_20DeclarationsIteratorNCB4C_s3_0EEE9from_iterB4I_.exit

.loopexit.i:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapNtNtCs2O29vuvTAEJ_14ty_python_core7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB10_NtB1v_20DeclarationsIteratorNCB2H_s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2N_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.e, !noalias !8581

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2d_10filter_map9FilterMapNtNtBU_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB31_NtB3x_20DeclarationsIteratorNCB4i_s3_0EEE11spec_extendB4o_.exit.i: ; preds = %.noexc11.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8585
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB3k_NtB3Q_20DeclarationsIteratorNCB4C_s3_0EEE9from_iterB4I_.exit

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8581
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB3k_NtB3Q_20DeclarationsIteratorNCB4C_s3_0EEE9from_iterB4I_.exit: ; preds = %bb.c, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2d_10filter_map9FilterMapNtNtBU_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names2_0EIB31_NtB3x_20DeclarationsIteratorNCB4i_s3_0EEE11spec_extendB4o_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8582
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB2i_10filter_map9FilterMapNtNtBX_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_name0ENCB4p_s_0EE9from_iterB4v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 4                 ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8629)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8630
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8631
  store ptr %i.k, ptr %i.g, align 8, !noalias !8632
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %1, ptr %i.l, align 8, !noalias !8632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8632
  call void @_RNvXsa_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_30BindingWithConstraintsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j), !noalias !8629
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !range !19, !noalias !8632, !noundef !14 ; 2 uses
  %.not16.i.i.i.i.i = icmp eq i32 %i.n, -1
  br i1 %.not16.i.i.i.i.i, label %.loopexit34.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %.sroa.611.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.p = phi i32 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.611.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i, align 4, !noalias !8632 ; 3 uses
  %i.q = icmp ne i32 %i.p, 0
  %.not7.i.i.i.i.i.i = icmp eq i32 %.sroa.611.0.copyload.i.i.i.i.i, 0
  %.not.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not7.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8632 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8633
  store i32 %.sroa.611.0.copyload.i.i.i.i.i, ptr %i.e, align 4, !noalias !8634
  store i32 %.sroa.7.0.copyload.i.i.i.i.i, ptr %i.o, align 4, !noalias !8634
  %i.r = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names_0INtB7_5FnMutTRNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !8635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8633
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8632
  call void @_RNvXsa_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_30BindingWithConstraintsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j), !noalias !8629
  %i.s = load i32, ptr %i.m, align 8, !range !19, !noalias !8632, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.s, -1
  br i1 %.not.i.i.i.i.i, label %.loopexit34.i, label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8630
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !8629
  %i.t = load i64, ptr %i.d, align 8, !range !28, !noalias !8630, !noundef !14
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !60, !noalias !8630, !noundef !14 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !8630
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #31, !noalias !8629
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !8630, !nonnull !14, !noundef !14 ; 3 uses
  %i.aa = icmp ugt i64 %i.w, 3
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8630
  store i32 %.sroa.611.0.copyload.i.i.i.i.i, ptr %i.z, align 4, !noalias !8629
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %.sroa.7.0.copyload.i.i.i.i.i, ptr %i.ab, align 4, !noalias !8629
  store i64 %i.w, ptr %i.i, align 8, !noalias !8630
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8630
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !8630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !noalias !8629
  call void @llvm.experimental.noalias.scope.decl(metadata !8636)
  call void @llvm.experimental.noalias.scope.decl(metadata !8637)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8638
  store ptr %i.ad, ptr %i.c, align 16, !noalias !8639
  store ptr %i.h, ptr %i.ae, align 8, !noalias !8639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8639
  invoke void @_RNvXsa_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_30BindingWithConstraintsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !8629

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ah = load i32, ptr %i.af, align 8, !range !19, !noalias !8639, !noundef !14 ; 2 uses
  %.not16.i.i.i.i.i3.i.i = icmp eq i32 %i.ah, -1
  br i1 %.not16.i.i.i.i.i3.i.i, label %.loopexit14.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc.i
  %2 = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.h, i64 1
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = phi i32 [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.be, %.lr.ph.i.i.i.i.i.i.i.backedge ]
  %.sroa.611.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !8639 ; 3 uses
  %i.aj = icmp ne i32 %i.ai, 0
  %.not7.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.611.0.copyload.i.i.i.i.i.i.i, 0
  %.not.i.i.i.i.i.i.i.i = select i1 %i.aj, i1 true, i1 %.not7.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.sroa.7.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !8639 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8640
  store i32 %.sroa.611.0.copyload.i.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !8641
  store i32 %.sroa.7.0.copyload.i.i.i.i.i.i.i, ptr %i.ag, align 4, !noalias !8641
  %i.ak = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_names_0INtB7_5FnMutTRNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !8629

.noexc9.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8640
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8639
  invoke void @_RNvXsa_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_30BindingWithConstraintsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !8629

.noexc10.i:                                       ; preds = %bb.h
  %i.al = load i32, ptr %i.af, align 8, !range !19, !noalias !8639, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.al, -1
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit14.i, label %.lr.ph.i.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.i.backedge:                    ; preds = %.noexc10.i, %.noexc12.i
  %.be = phi i32 [ %i.al, %.noexc10.i ], [ %i.au, %.noexc12.i ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8638
  %i.am = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8642, !noalias !8643, !noundef !14 ; 5 uses
  %i.an = icmp ult i64 %i.am, 1152921504606846976
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.i, align 8, !range !24, !alias.scope !8642, !noalias !8643, !noundef !14
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, label %.noexc11.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.am, i64 noundef 1, i64 noundef 4, i64 noundef 8)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !8629

.noexc11.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %bb.i
  %i.aq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8642, !noalias !8643, !nonnull !14, !noundef !14
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.am ; 2 uses
  store i32 %.sroa.611.0.copyload.i.i.i.i.i.i.i, ptr %i.ar, align 4, !noalias !8629
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %.sroa.7.0.copyload.i.i.i.i.i.i.i, ptr %i.as, align 4, !noalias !8629
  %i.at = add nuw nsw i64 %i.am, 1
  store i64 %i.at, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8642, !noalias !8643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8638
  store <2 x ptr> %3, ptr %i.c, align 16, !noalias !8639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8639
  invoke void @_RNvXsa_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_30BindingWithConstraintsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !8629

.noexc12.i:                                       ; preds = %.noexc11.i
  %i.au = load i32, ptr %i.af, align 8, !range !19, !noalias !8639, !noundef !14 ; 2 uses
  %.not16.i.i.i.i.i.i.i = icmp eq i32 %i.au, -1
  br i1 %.not16.i.i.i.i.i.i.i, label %.loopexit14.i, label %.lr.ph.i.i.i.i.i.i.i.backedge

.loopexit34.i:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8631
  store i64 0, ptr %0, align 8, !alias.scope !8629, !noalias !8644
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.av, align 8, !alias.scope !8629, !noalias !8644
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aw, align 8, !alias.scope !8629, !noalias !8644
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_name0ENCB4E_s_0EE9from_iterB4K_.exit

.loopexit.i:                                      ; preds = %bb.h, %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc11.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %lpad.loopexit15.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp16.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit15.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp16.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.j, !noalias !8629

.loopexit14.i:                                    ; preds = %.noexc12.i, %.noexc10.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !8644
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_name0ENCB4E_s_0EE9from_iterB4K_.exit

bb.j:                                             ; preds = %.loopexit.split-lp.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8629
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB2w_10filter_map9FilterMapNtNtB14_7use_def30BindingWithConstraintsIteratorNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support20definitions_for_name0ENCB4E_s_0EE9from_iterB4K_.exit: ; preds = %.loopexit34.i, %.loopexit14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8630
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2i_6copied6CopiedINtNtNtB2m_5slice4iter4IterNtNtBX_5scope7ScopeIdEEINtNtB2i_10filter_map9FilterMapINtNtB2i_3map3MapINtNtB2i_5chain5ChainINtNtNtB2k_7sources4once4OnceTNtNtNtBX_7use_def11place_state18ScopedDefinitionIdNtB5Z_23RetainedDefinitionStateEEIB4Q_INtNtB2i_9enumerate9EnumerateIB3a_IB3x_B6J_EEENCNvMs5_B5Z_NtB5Z_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5Z_NtB5Z_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBaa_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCBa2_0EE9from_iterBai_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [120 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8657
  %i.f = tail call fastcc { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator4nextB8y_(ptr noalias noundef nonnull align 8 dereferenceable(120) %1), !noalias !8656 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.f, 1
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8657
  call fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB8y_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !8656
  %i.i = load i64, ptr %i.d, align 8, !noalias !8657, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8657
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8657
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !8656
  %i.k = load i64, ptr %i.b, align 8, !range !28, !noalias !8657, !noundef !14
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !60, !noalias !8657, !noundef !14 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !8657
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #31, !noalias !8656
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !8657, !nonnull !14, !noundef !14 ; 3 uses
  %i.r = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8657
  store i32 %i.g, ptr %i.q, align 4, !noalias !8656
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.h, ptr %i.s, align 4, !noalias !8656
  store i64 %i.n, ptr %i.e, align 8, !noalias !8657
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8657
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !8657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !noalias !8656
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8659)
  %i.t = invoke fastcc { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator4nextB8y_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !8656 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.u = extractvalue { i32, i32 } %i.t, 0        ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not8.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2d_6copied6CopiedINtNtNtB2h_5slice4iter4IterNtNtBU_5scope7ScopeIdEEINtNtB2d_10filter_map9FilterMapINtNtB2d_3map3MapINtNtB2d_5chain5ChainINtNtNtB2f_7sources4once4OnceTNtNtNtBU_7use_def11place_state18ScopedDefinitionIdNtB5U_23RetainedDefinitionStateEEIB4L_INtNtB2d_9enumerate9EnumerateIB35_IB3s_B6E_EEENCNvMs5_B5U_NtB5U_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5U_NtB5U_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBa5_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB9X_0EE11spec_extendBad_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc11.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.al, %.noexc11.i ], [ %i.t, %.noexc.i ]
  %i.v = phi i32 [ %i.am, %.noexc11.i ], [ %i.u, %.noexc.i ]
  %i.w = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8660, !noalias !8661, !noundef !14 ; 4 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.e, align 8, !range !24, !alias.scope !8660, !noalias !8661, !noundef !14
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8662
  invoke fastcc void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB8y_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.c)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !8656

.noexc9.i:                                        ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !noalias !8662, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8662
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8663, !noalias !8661, !noundef !14 ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !range !24, !alias.scope !8663, !noalias !8661, !noundef !14
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, !prof !16

bb.e:                                             ; preds = %.noexc9.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ad, i64 noundef %i.ac, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i unwind label %.loopexit.i, !noalias !8656

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i: ; preds = %bb.e, %.noexc9.i, %.lr.ph.i.i.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8660, !noalias !8661, !nonnull !14, !noundef !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ai, align 4, !noalias !8656
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.w, ptr %i.aj, align 4, !noalias !8656
  %i.ak = add nuw nsw i64 %i.x, 1
  store i64 %i.ak, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !8660, !noalias !8661
  %i.al = invoke fastcc { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEEINtNtB7_10filter_map9FilterMapINtNtB7_3map3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceTNtNtNtB1U_7use_def11place_state18ScopedDefinitionIdNtB4f_23RetainedDefinitionStateEEIB39_INtNtB7_9enumerate9EnumerateIB15_IB1r_B50_EEENCNvMs5_B4f_NtB4f_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B4f_NtB4f_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtB8q_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB8i_0ENtNtNtB9_6traits8iterator8Iterator4nextB8y_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !8656 ; 2 uses

.noexc11.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i
  %i.am = extractvalue { i32, i32 } %i.al, 0      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2d_6copied6CopiedINtNtNtB2h_5slice4iter4IterNtNtBU_5scope7ScopeIdEEINtNtB2d_10filter_map9FilterMapINtNtB2d_3map3MapINtNtB2d_5chain5ChainINtNtNtB2f_7sources4once4OnceTNtNtNtBU_7use_def11place_state18ScopedDefinitionIdNtB5U_23RetainedDefinitionStateEEIB4L_INtNtB2d_9enumerate9EnumerateIB35_IB3s_B6E_EEENCNvMs5_B5U_NtB5U_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5U_NtB5U_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBa5_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB9X_0EE11spec_extendBad_.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !8656, !noalias !8664
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.an, align 8, !alias.scope !8656, !noalias !8664
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !8656, !noalias !8664
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2w_6copied6CopiedINtNtNtB2A_5slice4iter4IterNtNtB14_5scope7ScopeIdEEINtNtB2w_10filter_map9FilterMapINtNtB2w_3map3MapINtNtB2w_5chain5ChainINtNtNtB2y_7sources4once4OnceTNtNtNtB14_7use_def11place_state18ScopedDefinitionIdNtB6e_23RetainedDefinitionStateEEIB55_INtNtB2w_9enumerate9EnumerateIB3o_IB3L_B6Z_EEENCNvMs5_B6e_NtB6e_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B6e_NtB6e_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBaq_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCBai_0EE9from_iterBay_.exit

.loopexit.i:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE7reserveCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i, %bb.e, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.h, !noalias !8656

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2d_6copied6CopiedINtNtNtB2h_5slice4iter4IterNtNtBU_5scope7ScopeIdEEINtNtB2d_10filter_map9FilterMapINtNtB2d_3map3MapINtNtB2d_5chain5ChainINtNtNtB2f_7sources4once4OnceTNtNtNtBU_7use_def11place_state18ScopedDefinitionIdNtB5U_23RetainedDefinitionStateEEIB4L_INtNtB2d_9enumerate9EnumerateIB35_IB3s_B6E_EEENCNvMs5_B5U_NtB5U_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B5U_NtB5U_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBa5_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCB9X_0EE11spec_extendBad_.exit.i: ; preds = %.noexc11.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !8664
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtB2w_6copied6CopiedINtNtNtB2A_5slice4iter4IterNtNtB14_5scope7ScopeIdEEINtNtB2w_10filter_map9FilterMapINtNtB2w_3map3MapINtNtB2w_5chain5ChainINtNtNtB2y_7sources4once4OnceTNtNtNtB14_7use_def11place_state18ScopedDefinitionIdNtB6e_23RetainedDefinitionStateEEIB55_INtNtB2w_9enumerate9EnumerateIB3o_IB3L_B6Z_EEENCNvMs5_B6e_NtB6e_19RetainedDefinitions15iter_enumerated0EENCNvMs8_B6e_NtB6e_9UseDefMap26all_definitions_with_usage0ENCNCNvNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support22unused_binding_support1__NtBaq_30unused_bindings_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_00ENCBai_0EE9from_iterBay_.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !8656
end_hunk_0
