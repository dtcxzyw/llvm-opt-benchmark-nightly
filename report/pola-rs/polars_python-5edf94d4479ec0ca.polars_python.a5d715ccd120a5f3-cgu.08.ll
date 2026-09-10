Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.08?download=true
inline.NumInlined: 15281
inline.NumDeleted: 4910
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvMNtNtCsbm5zPlkZccl_4pyo35types4listNtB3_6PyList3newuAuj0_ECseeLknQCOKOd_13polars_python:_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6expectCseeLknQCOKOd_13polars_python.exit
  store i64 0, ptr %0, align 8, !dbg !22494
  ret void, !dbg !22495
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension16polars_extensionNtB3_15PolarsExtension16set_to_series_fnNtNtCseeLknQCOKOd_13polars_python10conversion11ObjectValueEB28_(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22496 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension16polars_extensionNtB2_15PolarsExtension12get_sentinel(ptr noundef nonnull align 8 %0), !dbg !22534, !noalias !22529 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22530), !dbg !22535
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22536 ; 3 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !dbg !22536, !alias.scope !22530, !noalias !22531, !noundef !4872 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !22536 ; 3 uses
  %.val1.i.i = load ptr, ptr %i.c, align 8, !dbg !22536, !alias.scope !22530, !noalias !22531 ; 6 uses
  %i.d = icmp eq ptr %.val.i.i, null, !dbg !22537
  br i1 %i.d, label %_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension16polars_extensionNtB3_15PolarsExtension13with_sentineluNCINvB2_16set_to_series_fnNtNtCseeLknQCOKOd_13polars_python10conversion11ObjectValueEs_0EB2w_.exit, label %bb.b, !dbg !22537

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.e = load ptr, ptr %.val1.i.i, align 8, !dbg !22538, !invariant.load !4872, !noalias !22532 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null, !dbg !22538
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !22538

bb.c:                                             ; preds = %bb.b
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !dbg !22538, !noalias !22532

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !22539
  %i.g = load i64, ptr %i.f, align 8, !dbg !22539, !range !4998, !invariant.load !4872, !noalias !22532 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0, !dbg !22540
  br i1 %i.h, label %_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension16polars_extensionNtB3_15PolarsExtension13with_sentineluNCINvB2_16set_to_series_fnNtNtCseeLknQCOKOd_13polars_python10conversion11ObjectValueEs_0EB2w_.exit, label %bb.e, !dbg !22540

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !22539
  %i.j = load i64, ptr %i.i, align 8, !dbg !22541, !range !5152, !invariant.load !4872, !noalias !22532
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #50, !dbg !22542, !noalias !22532
  br label %_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension16polars_extensionNtB3_15PolarsExtension13with_sentineluNCINvB2_16set_to_series_fnNtNtCseeLknQCOKOd_13polars_python10conversion11ObjectValueEs_0EB2w_.exit, !dbg !22543

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !22544
  %i.m = load i64, ptr %i.l, align 8, !dbg !22544, !range !4998, !invariant.load !4872, !noalias !22532 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !22545
  br i1 %i.n, label %.body.i.i, label %bb.g, !dbg !22545

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !22544
  %i.p = load i64, ptr %i.o, align 8, !dbg !22546, !range !5152, !invariant.load !4872, !noalias !22532
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #50, !dbg !22547, !noalias !22532
  br label %.body.i.i, !dbg !22548

.body.i.i:                                        ; preds = %bb.g, %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !22536, !alias.scope !22530, !noalias !22531
  store ptr @181, ptr %i.c, align 8, !dbg !22536, !alias.scope !22530, !noalias !22533
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension17ExtensionSentinelEECseeLknQCOKOd_13polars_python(ptr %i.a) #56
          to label %bb.i unwind label %bb.h, !dbg !22549

bb.h:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !22550
  unreachable, !dbg !22550

bb.i:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %i.k, !dbg !22550

_RINvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension16polars_extensionNtB3_15PolarsExtension13with_sentineluNCINvB2_16set_to_series_fnNtNtCseeLknQCOKOd_13polars_python10conversion11ObjectValueEs_0EB2w_.exit: ; preds = %bb.a, %bb.d, %bb.e
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !22536, !alias.scope !22530, !noalias !22531
  store ptr @181, ptr %i.c, align 8, !dbg !22536, !alias.scope !22530, !noalias !22533
  ret void, !dbg !22551
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs11_NtCseeLknQCOKOd_13polars_python10exceptionsNtB7_24StructFieldNotFoundError7new_errNtNtCsgZ49sUHp3tW_5alloc6string6StringEB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22552 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22571), !dbg !22575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22576, !noalias !22572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !22576, !noalias !22571
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !22577, !noalias !22573
  %i.b = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 513) 24, i64 noundef range(i64 1, 129) 8) #50, !dbg !22578, !noalias !22573 ; 3 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !22579
  br i1 %i.c, label %bb.b, label %_RINvMs_NtCsbm5zPlkZccl_4pyo33errNtB5_5PyErr3newNtNtCseeLknQCOKOd_13polars_python10exceptions24StructFieldNotFoundErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringEBN_.exit, !dbg !22580, !prof !5167

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #54
          to label %.noexc.i unwind label %bb.c, !dbg !22581, !noalias !22572

.noexc.i:                                         ; preds = %bb.b
  unreachable, !dbg !22581

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtBO_5PyErr3newNtNtCseeLknQCOKOd_13polars_python10exceptions24StructFieldNotFoundErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringE0EB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #56
          to label %bb.e unwind label %bb.d, !dbg !22582, !noalias !22572

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !22583, !noalias !22572
  unreachable, !dbg !22583

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d, !dbg !22583

_RINvMs_NtCsbm5zPlkZccl_4pyo33errNtB5_5PyErr3newNtNtCseeLknQCOKOd_13polars_python10exceptions24StructFieldNotFoundErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringEBN_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !22584, !noalias !22571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22585, !noalias !22572
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22586
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 16, i1 false), !dbg !22586, !alias.scope !22571, !noalias !22574
  store i64 1, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !dbg !22586, !alias.scope !22571, !noalias !22574
  %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22586
  store ptr null, ptr %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !22586, !alias.scope !22571, !noalias !22574
  %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22586
  store ptr %i.b, ptr %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !22586, !alias.scope !22571, !noalias !22574
  %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22586
  store ptr @22, ptr %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !22586, !alias.scope !22571, !noalias !22574
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22586
  store i32 3, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !22586, !alias.scope !22571, !noalias !22574
  ret void, !dbg !22587
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs2_NtCsi9s4xZ1hxzb_5numpy5arrayINtB6_7PyArrayINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBR_5types3any5PyAnyEINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EE9from_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2X_3ops5range5RangejENCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy11to_numpy_df19df_columns_to_numpy00EEB4h_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 !dbg !22588 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22609, !noalias !22605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !22610, !alias.scope !22606, !noalias !22607
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBZ_5types3any5PyAnyEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2r_3ops5range5RangejENCNCNvNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy11to_numpy_df19df_columns_to_numpy00EE9from_iterB3L_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !22611, !noalias !22608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22612, !noalias !22605
  %i.c = call noundef nonnull ptr @_RNvXs_NtCsi9s4xZ1hxzb_5numpy7convertINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1a_5types3any5PyAnyEENtB4_11IntoPyArray12into_pyarrayCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b), !dbg !22613
  ret ptr %i.c, !dbg !22614
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 128 %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %5, ptr noundef nonnull align 128 %6) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22615 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 21 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !23722 ; 5 uses
  %i.r = load atomic ptr, ptr %i.q acquire, align 32, !dbg !23723 ; 4 uses
  %i.s = lshr i64 %2, 3, !dbg !23724              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !23725
  %i.u = load i64, ptr %i.r, align 8, !dbg !23726, !noalias !23608, !noundef !4872 ; 3 uses
  %i.v = lshr i64 %i.u, 3, !dbg !23726            ; 2 uses
  %i.w = getelementptr i8, ptr %i.r, i64 %i.u, !dbg !23727
  %i.x = getelementptr i8, ptr %i.w, i64 32, !dbg !23727
  %i.y = add nsw i64 %i.v, -1, !dbg !23728
  %i.z = lshr i64 %2, 57, !dbg !23729             ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 72340172838076673, !dbg !23730 ; 3 uses
  %i.ab = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load ptr, ptr %5, align 8, !nonnull !4872
  br label %bb.b, !dbg !23731

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ], !dbg !23732 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.s, %bb.a ], [ %i.az, %bb.d ], !dbg !23732 ; 3 uses
  %i.af = and i64 %.sroa.0.0.i, %i.y, !dbg !23733 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af, !dbg !23734
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8, !dbg !23735, !noalias !23608 ; 3 uses
  %i.ai = xor i64 %i.ah, %i.aa, !dbg !23736
  %i.aj = add i64 %i.ai, -72340172838076673, !dbg !23737
  %i.ak = and i64 %i.ah, -9187201950435737472, !dbg !23738 ; 2 uses
  %i.al = xor i64 %i.ak, -9187201950435737472, !dbg !23738
  %i.am = and i64 %i.al, %i.aj, !dbg !23738       ; 2 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !23739
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i, !dbg !23739

.lr.ph.i:                                         ; preds = %bb.b
  %i.ao = shl nuw i64 %i.af, 3
  br label %bb.c, !dbg !23739

._crit_edge.i:                                    ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.thread.i, %bb.b
  %i.ap = add i64 %i.ah, 72340172838076673, !dbg !23740
  %i.aq = and i64 %i.ak, %i.ap, !dbg !23741
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !23742
  br i1 %i.ar, label %bb.d, label %.loopexit, !dbg !23742

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.thread.i, %.lr.ph.i
  %.sroa.014.031.i = phi i64 [ %i.am, %.lr.ph.i ], [ %i.bb, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.thread.i ] ; 3 uses
  %i.as = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.031.i, i1 true), !dbg !23743
  %i.at = lshr i64 %i.as, 3, !dbg !23744
  %i.au = or disjoint i64 %i.at, %i.ao, !dbg !23745 ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.u, !dbg !23746
  tail call void @llvm.assume(i1 %i.av), !dbg !23747
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.au, !dbg !23748
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8, !dbg !23749, !noalias !23608 ; 5 uses
  %magicptr.i = ptrtoint ptr %i.ax to i64, !dbg !23750
  switch i64 %magicptr.i, label %bb.e [
    i64 0, label %.loopexit
    i64 -1, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.thread.i
  ], !dbg !23750

bb.d:                                             ; preds = %._crit_edge.i
  %i.ay = add i64 %.sroa.7.0.i, 1, !dbg !23751    ; 2 uses
  %i.az = add i64 %.sroa.0.0.i, %i.ay, !dbg !23752
  br label %bb.b, !dbg !23731

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i, %bb.e, %bb.c
  %i.ba = add i64 %.sroa.014.031.i, -128, !dbg !23753
  %i.bb = and i64 %i.ba, %.sroa.014.031.i, !dbg !23754 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !23739
  br i1 %i.bc, label %._crit_edge.i, label %bb.c, !dbg !23739

bb.e:                                             ; preds = %bb.c
  %i.bd = load atomic ptr, ptr %i.ax acquire, align 8, !dbg !23755, !noalias !23608
  %i.be = ptrtoint ptr %i.bd to i64, !dbg !23756  ; 2 uses
  %i.bf = and i64 %i.be, 4, !dbg !23757
  %i.bg = icmp eq i64 %i.bf, 0, !dbg !23757
  br i1 %i.bg, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !23757

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !23758
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !23759, !noalias !23608, !noundef !4872
  %i.bj = icmp eq i64 %i.bi, %i.ad, !dbg !23760
  br i1 %i.bj, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !23760

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 24, !dbg !23761
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bk, ptr nonnull %i.ae, i64 %i.ad), !dbg !23762, !noalias !23608
  %i.bl = icmp eq i32 %bcmp.i.i.i, 0, !dbg !23762
  br i1 %i.bl, label %bb.f, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !23763

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutCseeLknQCOKOd_13polars_python.exit.i
  %i.bm = and i64 %i.be, 1, !dbg !23764
  %i.bn = icmp eq i64 %i.bm, 0, !dbg !23764
  br i1 %i.bn, label %.loopexit, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1k_18CategoricalMapping20insert_cat_with_hash0ECseeLknQCOKOd_13polars_python.exit, !dbg !23764

.loopexit:                                        ; preds = %._crit_edge.i, %bb.c, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23613), !dbg !23765
  %i.bo = add i64 %4, -9223372036854775793, !dbg !23766
  %.not.i.i.i = icmp ult i64 %i.bo, -9223372036854775801, !dbg !23766
  br i1 %.not.i.i.i, label %bb.g, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !23767, !prof !4934

bb.g:                                             ; preds = %.loopexit
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @283, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @858) #54, !dbg !23768, !noalias !23614
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %.loopexit
  %i.bp = add i64 %4, 24, !dbg !23769             ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.bp, 9223372036854775800, !dbg !23770
  br i1 %.not.i.i.i.i, label %bb.h, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !23771

bb.h:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @283, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @859) #54, !dbg !23772, !noalias !23615
  unreachable

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !23773, !noalias !23614
  %i.bq = tail call noundef align 8 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef %i.bp, i64 noundef 8) #50, !dbg !23774, !noalias !23614 ; 11 uses
  %i.br = icmp eq ptr %i.bq, null, !dbg !23775
  br i1 %i.br, label %bb.i, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCseeLknQCOKOd_13polars_python.exit.i, !dbg !23775, !prof !4934

bb.i:                                             ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCseeLknQCOKOd_13polars_python.exit.i.i
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bp) #54, !dbg !23776, !noalias !23614
  unreachable, !dbg !23776

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = and i64 %2, -8, !dbg !23777             ; 2 uses
  store i64 %i.bs, ptr %i.bq, align 8, !dbg !23778, !noalias !23614
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !23779 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24, !dbg !23780 ; 3 uses
  store i64 %4, ptr %i.bt, align 8, !dbg !23781, !noalias !23616
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !dbg !23782, !noalias !23617
  %i.bv = load atomic ptr, ptr %i.q acquire, align 32, !dbg !23783, !noalias !23618 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16, !dbg !23784 ; 2 uses
  %i.bx = load atomic i64, ptr %i.bw monotonic, align 8, !dbg !23785, !noalias !23618
  br label %bb.j, !dbg !23786

bb.j:                                             ; preds = %bb.k, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCseeLknQCOKOd_13polars_python.exit.i
  %.sroa.06.0.i.i.i = phi i64 [ %i.bx, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCseeLknQCOKOd_13polars_python.exit.i ], [ %.sroa.01.0.i.i.i.i, %bb.k ], !dbg !23787 ; 3 uses
  %.not.i.i25.i = icmp eq i64 %.sroa.06.0.i.i.i, 0, !dbg !23788
  br i1 %.not.i.i25.i, label %bb.l, label %bb.k, !dbg !23789

bb.k:                                             ; preds = %bb.j
  %i.by = add i64 %.sroa.06.0.i.i.i, -1, !dbg !23788
  %i.bz = cmpxchg weak ptr %i.bw, i64 %.sroa.06.0.i.i.i, i64 %i.by monotonic monotonic, align 8, !dbg !23790, !noalias !23618 ; 2 uses
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.bz, 1, !dbg !23791
  %.sroa.01.0.i.i.i.i = extractvalue { i64, i1 } %i.bz, 0, !dbg !23791
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCseeLknQCOKOd_13polars_python.exit.i, label %bb.j, !dbg !23792

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !23793, !noalias !23618
  %i.ca = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !23794, !noalias !23621
  %i.cb = extractvalue { i32, i1 } %i.ca, 1, !dbg !23794
  br i1 %i.cb, label %bb.n, label %bb.m, !dbg !23795, !prof !5231

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 128 %1), !dbg !23796, !noalias !23621
  br label %bb.n, !dbg !23796

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cc = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !23797, !noalias !23621
  %i.cd = and i64 %i.cc, 9223372036854775807, !dbg !23798
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !23798
  br i1 %i.ce, label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i.i, label %bb.o, !dbg !23798, !prof !5231

bb.o:                                             ; preds = %bb.n
  %i.cf = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !23799, !noalias !23621
  %i.cg = xor i1 %i.cf, true, !dbg !23800
  %i.ch = zext i1 %i.cg to i8, !dbg !23801
  br label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !23799

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.o, %bb.n
  %.sroa.01.0.i.i12.i.i = phi i8 [ %i.ch, %bb.o ], [ 0, %bb.n ], !dbg !23802
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !23803
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 4, !dbg !23804, !noalias !23621
  %i.ck = icmp ne i8 %i.cj, 0, !dbg !23805
  call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i1 noundef zeroext %i.ck, i8 noundef %.sroa.01.0.i.i12.i.i, ptr noundef nonnull align 128 %1), !dbg !23806, !noalias !23618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23622), !dbg !23807
  %i.cl = load i64, ptr %i.p, align 8, !dbg !23808, !range !4932, !alias.scope !23622, !noalias !23623, !noundef !4872
  %i.cm = trunc nuw i64 %i.cl to i1, !dbg !23809
  br i1 %i.cm, label %bb.p, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python.exit8.i.i, !dbg !23809, !prof !4934

bb.p:                                             ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !23810, !noalias !23624
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !23810
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !23810, !alias.scope !23622, !noalias !23623, !nonnull !4872, !align !5241, !noundef !4872
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !23810
  %i.cq = load i8, ptr %i.cp, align 8, !dbg !23810, !range !5133, !alias.scope !23622, !noalias !23623, !noundef !4872
  store ptr %i.co, ptr %i.m, align 8, !dbg !23810, !noalias !23624
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !23810
  store i8 %i.cq, ptr %i.cr, align 8, !dbg !23810, !noalias !23624
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @279, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @584) #54
          to label %bb.r unwind label %bb.q, !dbg !23811, !noalias !23625

bb.q:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #56
          to label %common.resume.i unwind label %bb.s, !dbg !23812, !noalias !23625

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !23813, !noalias !23625
  unreachable, !dbg !23813

common.resume.i:                                  ; preds = %bb.di, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67.i, %bb.cv, %bb.cn, %bb.cl, %bb.ck, %bb.bu, %bb.as, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit24.i.i.i, %bb.q
  %common.resume.op.i = phi { ptr, i32 } [ %i.mt, %bb.bu ], [ %i.hp, %bb.as ], [ %i.cs, %bb.q ], [ %.pn.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit24.i.i.i ], [ %i.mt, %bb.cn ], [ %i.mt, %bb.cl ], [ %i.mt, %bb.ck ], [ %i.ps, %bb.cv ], [ %i.qq, %bb.di ], [ %i.qq, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !23814

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python.exit8.i.i: ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !23815
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !23815, !alias.scope !23622, !noalias !23623, !nonnull !4872, !align !5241, !noundef !4872
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !23815
  %i.cx = load i8, ptr %i.cw, align 8, !dbg !23815, !range !5133, !alias.scope !23622, !noalias !23623, !noundef !4872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !23816, !noalias !23618
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %.outer, !dbg !23817

.outer:                                           ; preds = %bb.av, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python.exit8.i.i
  %.sroa.8.0.i.i.ph = phi i8 [ %i.hs, %bb.av ], [ %i.cx, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python.exit8.i.i ] ; 3 uses
  %.sroa.0.029.i.i.ph = phi ptr [ %i.hr, %bb.av ], [ %i.cv, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python.exit8.i.i ] ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.i.ph, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.i.ph, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.i.ph, i64 16
  br label %bb.t, !dbg !23818

bb.t:                                             ; preds = %.outer, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCseeLknQCOKOd_13polars_python.exit.i.i
  %i.dh = load atomic ptr, ptr %i.q acquire, align 32, !dbg !23819, !noalias !23618 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16, !dbg !23820 ; 2 uses
  %i.dj = load atomic i64, ptr %i.di monotonic, align 8, !dbg !23821, !noalias !23618
  br label %bb.u, !dbg !23818

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.06.0.i14.i.i = phi i64 [ %i.dj, %bb.t ], [ %.sroa.01.0.i.i17.i.i, %bb.v ], !dbg !23822 ; 3 uses
  %.not.i15.i.i = icmp eq i64 %.sroa.06.0.i14.i.i, 0, !dbg !23823
  br i1 %.not.i15.i.i, label %bb.ab, label %bb.v, !dbg !23824

bb.v:                                             ; preds = %bb.u
  %i.dk = add i64 %.sroa.06.0.i14.i.i, -1, !dbg !23823
  %i.dl = cmpxchg weak ptr %i.di, i64 %.sroa.06.0.i14.i.i, i64 %i.dk monotonic monotonic, align 8, !dbg !23825, !noalias !23618 ; 2 uses
  %.sroa.18.0.in.i.i16.i.i = extractvalue { i64, i1 } %i.dl, 1, !dbg !23826
  %.sroa.01.0.i.i17.i.i = extractvalue { i64, i1 } %i.dl, 0, !dbg !23826
  br i1 %.sroa.18.0.in.i.i16.i.i, label %bb.w, label %bb.u, !dbg !23827

bb.w:                                             ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.i.ph, i64 4, !dbg !23828
  %i.dn = trunc nuw i8 %.sroa.8.0.i.i.ph to i1, !dbg !23829
  br i1 %i.dn, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !dbg !23829

bb.x:                                             ; preds = %bb.w
  %i.do = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !23830, !noalias !23618
  %i.dp = and i64 %i.do, 9223372036854775807, !dbg !23831
  %i.dq = icmp eq i64 %i.dp, 0, !dbg !23831
  br i1 %i.dq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y, !dbg !23831, !prof !5231

bb.y:                                             ; preds = %bb.x
  %i.dr = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !23832, !noalias !23618
  br i1 %i.dr, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.z, !dbg !23833

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECseeLknQCOKOd_13polars_python:bb.a
  %i.fv = and i64 %i.fu, 4, !dbg !23901
  %i.fw = icmp eq i64 %i.fv, 0, !dbg !23901
  br i1 %i.fw, label %bb.am, label %bb.ak, !dbg !23901

bb.am:                                            ; preds = %bb.al
  %i.fx = load i64, ptr %i.eo, align 8, !dbg !23902, !noalias !23618, !noundef !4872 ; 2 uses
  %i.fy = lshr i64 %i.fx, 3, !dbg !23903
  %i.fz = add nsw i64 %i.fy, -1, !dbg !23903      ; 2 uses
  %i.ga = lshr i64 %i.fu, 3, !dbg !23904          ; 2 uses
  %i.gb = and i64 %i.fz, %i.ga, !dbg !23905       ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.gb, !dbg !23906
  %i.gd = load i64, ptr %i.gc, align 8, !dbg !23907, !noalias !23618, !noundef !4872 ; 3 uses
  %i.ge = add i64 %i.gd, 72340172838076673, !dbg !23908
  %i.gf = and i64 %i.gd, -9187201950435737472, !dbg !23909
  %i.gg = and i64 %i.gf, %i.ge, !dbg !23909       ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0, !dbg !23910
  br i1 %i.gh, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !dbg !23910

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %.lr.ph.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.gj, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.am ]
  %.sroa.02.09.i.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i.i ], [ 0, %bb.am ]
  %i.gi = add i64 %.sroa.02.09.i.i.i.i, 1, !dbg !23911 ; 2 uses
  %i.gj = add i64 %i.gi, %.sroa.0.010.i.i.i.i, !dbg !23912 ; 2 uses
  %i.gk = and i64 %i.gj, %i.fz, !dbg !23905       ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.gk, !dbg !23906
  %i.gm = load i64, ptr %i.gl, align 8, !dbg !23907, !noalias !23618, !noundef !4872 ; 3 uses
  %i.gn = add i64 %i.gm, 72340172838076673, !dbg !23908
  %i.go = and i64 %i.gm, -9187201950435737472, !dbg !23909
  %i.gp = and i64 %i.go, %i.gn, !dbg !23909       ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0, !dbg !23910
  br i1 %i.gq, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !dbg !23910

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.am
  %.lcssa8.i.i.i.i = phi i64 [ %i.gb, %bb.am ], [ %i.gk, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa5.i.i.i.i = phi i64 [ %i.gd, %bb.am ], [ %i.gm, %.lr.ph.i.i.i.i ], !dbg !23907
  %.lcssa.i.i.i.i = phi i64 [ %i.gg, %bb.am ], [ %i.gp, %.lr.ph.i.i.i.i ], !dbg !23909
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.lcssa8.i.i.i.i
  %i.gs = getelementptr i8, ptr %i.eo, i64 %i.fx, !dbg !23913
  %i.gt = getelementptr i8, ptr %i.gs, i64 32, !dbg !23913
  %i.gu = call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i, i1 true), !dbg !23914 ; 2 uses
  %i.gv = lshr i64 %i.gu, 3, !dbg !23915
  %i.gw = lshr i64 %i.fu, 57, !dbg !23916
  %i.gx = or disjoint i64 %i.gw, 128, !dbg !23917
  %i.gy = and i64 %i.gu, 56, !dbg !23918
  %i.gz = shl nuw i64 %i.gx, %i.gy, !dbg !23917
  %i.ha = xor i64 %i.gz, %.lcssa5.i.i.i.i, !dbg !23919
  store i64 %i.ha, ptr %i.gr, align 8, !dbg !23919, !noalias !23618
  %.idx.i.i.i.i = shl i64 %.lcssa8.i.i.i.i, 6, !dbg !23920
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx.i.i.i.i, !dbg !23920
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gv, !dbg !23920
  store ptr %i.fr, ptr %i.hc, align 8, !dbg !23921, !noalias !23618
  %i.hd = add i64 %.sroa.0.032.i.i.i, 1, !dbg !23922
  br label %bb.ak, !dbg !23923

bb.an:                                            ; preds = %bb.aj, %._crit_edge.i.i.i
  %i.he = load ptr, ptr %i.dg, align 8, !dbg !23924, !alias.scope !23639, !noalias !23618, !nonnull !4872, !noundef !4872
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.fn, !dbg !23925
  store ptr %i.dx, ptr %i.hf, align 8, !dbg !23926, !noalias !23618
  %i.hg = add i64 %i.fn, 1, !dbg !23927
  store i64 %i.hg, ptr %i.df, align 8, !dbg !23927, !alias.scope !23639, !noalias !23618
  store atomic ptr %i.eo, ptr %i.q release, align 32, !dbg !23928, !noalias !23618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !23929, !noalias !23618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !23929, !noalias !23618
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuarduENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dd)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.thread.i.i.i, !dbg !23930, !noalias !23618

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !23931, !noalias !23618
  invoke void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.cy)
          to label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCseeLknQCOKOd_13polars_python.exit.i.i unwind label %.thread.i.i.i, !dbg !23932, !noalias !23618

bb.ao:                                            ; preds = %bb.aj
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  %i.hh = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !23933
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuarduENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit24.i.i.i unwind label %bb.ap, !dbg !23933, !noalias !23618

bb.ap:                                            ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit24.i.i.i
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !23934, !noalias !23618
  unreachable, !dbg !23934

_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !23895, !noalias !23618
  br label %bb.t, !dbg !23935

bb.aq:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !23936, !noalias !23618
  %i.hj = trunc nuw i8 %.sroa.8.0.i.i.ph to i1, !dbg !23937
  call void @_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB3_7Condvar4waitINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.cy, ptr noundef nonnull align 8 %.sroa.0.029.i.i.ph, i1 noundef zeroext %i.hj), !dbg !23938, !noalias !23618
  call void @llvm.experimental.noalias.scope.decl(metadata !23642), !dbg !23939
  %i.hk = load i64, ptr %i.o, align 8, !dbg !23940, !range !4932, !alias.scope !23642, !noalias !23643, !noundef !4872
  %i.hl = trunc nuw i64 %i.hk to i1, !dbg !23941
  br i1 %i.hl, label %bb.ar, label %bb.av, !dbg !23941, !prof !4934

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !23942, !noalias !23644
  %i.hm = load ptr, ptr %i.cz, align 8, !dbg !23942, !alias.scope !23642, !noalias !23643, !nonnull !4872, !align !5241, !noundef !4872
  %i.hn = load i8, ptr %i.da, align 8, !dbg !23942, !range !5133, !alias.scope !23642, !noalias !23643, !noundef !4872
  store ptr %i.hm, ptr %i.n, align 8, !dbg !23942, !noalias !23644
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !23942
  store i8 %i.hn, ptr %i.ho, align 8, !dbg !23942, !noalias !23644
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @279, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @585) #54
          to label %bb.at unwind label %bb.as, !dbg !23943, !noalias !23645

bb.as:                                            ; preds = %bb.ar
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #56
          to label %common.resume.i unwind label %bb.au, !dbg !23944, !noalias !23645

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !23945, !noalias !23645
  unreachable, !dbg !23945

bb.av:                                            ; preds = %bb.aq
  %i.hr = load ptr, ptr %i.cz, align 8, !dbg !23946, !alias.scope !23642, !noalias !23643, !nonnull !4872, !align !5241, !noundef !4872
  %i.hs = load i8, ptr %i.da, align 8, !dbg !23946, !range !5133, !alias.scope !23642, !noalias !23643, !noundef !4872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !23947, !noalias !23618
  br label %.outer, !dbg !23948

_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.k, %bb.aa, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %.sroa.0.0.i26.i = phi ptr [ %i.dh, %bb.aa ], [ %i.dh, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ], [ %i.bv, %bb.k ], !dbg !23949 ; 7 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i26.i, %i.r, !dbg !23950 ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i, i64 %.sroa.7.0.i, i64 0, !dbg !23950
  %.sroa.0.0.i18 = select i1 %.not.i, i64 %.sroa.0.0.i, i64 %i.s, !dbg !23950
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 32, !dbg !23951
  %i.hu = load i64, ptr %.sroa.0.0.i26.i, align 8, !dbg !23952, !noalias !23618, !noundef !4872 ; 3 uses
  %i.hv = lshr i64 %i.hu, 3, !dbg !23952          ; 2 uses
  %i.hw = getelementptr i8, ptr %.sroa.0.0.i26.i, i64 %i.hu, !dbg !23953
  %i.hx = getelementptr i8, ptr %i.hw, i64 32, !dbg !23953
  %i.hy = add nsw i64 %i.hv, -1, !dbg !23954
  %i.hz = icmp ne i64 %i.hv, 0
  call void @llvm.assume(i1 %i.hz)
  %i.ia = or disjoint i64 %i.z, 128
  %i.ib = load i64, ptr %i.ac, align 8, !alias.scope !23613, !noalias !23647 ; 2 uses
  %i.ic = load ptr, ptr %5, align 8, !alias.scope !23613, !noalias !23647, !nonnull !4872
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %.outer.i, !dbg !23955

.outer.i:                                         ; preds = %._crit_edge.i20, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCseeLknQCOKOd_13polars_python.exit.i
  %.sroa.5.1.ph.i = phi i64 [ %i.jk, %._crit_edge.i20 ], [ %.sroa.5.0.i, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCseeLknQCOKOd_13polars_python.exit.i ]
  %.sroa.0.1.ph.i = phi i64 [ %i.jl, %._crit_edge.i20 ], [ %.sroa.0.0.i18, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCseeLknQCOKOd_13polars_python.exit.i ] ; 2 uses
  %i.ik = and i64 %.sroa.0.1.ph.i, %i.hy          ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.ik ; 3 uses
  %i.im = load atomic i64, ptr %i.il monotonic, align 8, !dbg !23956, !noalias !23618 ; 5 uses
  %i.in = xor i64 %i.im, %i.aa, !dbg !23957
  %i.io = add i64 %i.in, -72340172838076673, !dbg !23958
  %i.ip = xor i64 %i.im, -1, !dbg !23959
  %i.iq = and i64 %i.io, %i.ip, !dbg !23960
  %i.ir = add i64 %i.im, 72340172838076673, !dbg !23961
  %i.is = and i64 %i.ir, %i.im, !dbg !23962       ; 2 uses
  %i.it = or disjoint i64 %i.iq, %i.is, !dbg !23963
  %i.iu = and i64 %i.it, -9187201950435737472, !dbg !23963 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 0, !dbg !23964
  br i1 %i.iv, label %._crit_edge.i20, label %.lr.ph.lr.ph.i, !dbg !23964

.lr.ph.lr.ph.i:                                   ; preds = %.outer.i
  %i.iw = shl nuw i64 %i.ik, 3
  br label %.lr.ph.i19, !dbg !23964

.loopexit.i:                                      ; preds = %bb.ax
  %i.ix = load atomic i64, ptr %i.il monotonic, align 8, !dbg !23956, !noalias !23618 ; 5 uses
  %i.iy = xor i64 %i.ix, %i.aa, !dbg !23957
  %i.iz = add i64 %i.iy, -72340172838076673, !dbg !23958
  %i.ja = xor i64 %i.ix, -1, !dbg !23959
  %i.jb = and i64 %i.iz, %i.ja, !dbg !23960
  %i.jc = add i64 %i.ix, 72340172838076673, !dbg !23961
  %i.jd = and i64 %i.jc, %i.ix, !dbg !23962       ; 2 uses
  %i.je = or disjoint i64 %i.jb, %i.jd, !dbg !23963
  %i.jf = and i64 %i.je, -9187201950435737472, !dbg !23963 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0, !dbg !23964
  br i1 %i.jg, label %._crit_edge.i20, label %.lr.ph.i19, !dbg !23964

.lr.ph.i19:                                       ; preds = %.loopexit.i, %.lr.ph.lr.ph.i
  %i.jh = phi i64 [ %i.iu, %.lr.ph.lr.ph.i ], [ %i.jf, %.loopexit.i ]
  %i.ji = phi i64 [ %i.is, %.lr.ph.lr.ph.i ], [ %i.jd, %.loopexit.i ]
  %i.jj = phi i64 [ %i.im, %.lr.ph.lr.ph.i ], [ %i.ix, %.loopexit.i ] ; 2 uses
  br label %bb.aw, !dbg !23964

._crit_edge.i20:                                  ; preds = %.loopexit.i, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, %.outer.i
  %i.jk = add i64 %.sroa.5.1.ph.i, 1, !dbg !23965 ; 2 uses
  %i.jl = add i64 %.sroa.0.1.ph.i, %i.jk, !dbg !23966
  br label %.outer.i, !dbg !23955

bb.aw:                                            ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, %.lr.ph.i19
  %.sroa.019.0107.i = phi i64 [ %i.jh, %.lr.ph.i19 ], [ %i.ox, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i ] ; 3 uses
  %i.jm = call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.019.0107.i, i1 true), !dbg !23967 ; 2 uses
  %i.jn = lshr i64 %i.jm, 3, !dbg !23968
  %i.jo = and i64 %i.jm, 56, !dbg !23969          ; 2 uses
  %i.jp = shl nuw i64 128, %i.jo, !dbg !23970
  %i.jq = and i64 %i.jp, %i.ji, !dbg !23970
  %i.jr = icmp eq i64 %i.jq, 0, !dbg !23970
  br i1 %i.jr, label %bb.ay, label %bb.ax, !dbg !23970

bb.ax:                                            ; preds = %bb.aw
  %i.js = shl nuw i64 %i.ia, %i.jo, !dbg !23971
  %i.jt = xor i64 %i.js, %i.jj, !dbg !23972
  %i.ju = cmpxchg ptr %i.il, i64 %i.jj, i64 %i.jt monotonic monotonic, align 8, !dbg !23973, !noalias !23618
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ju, 1, !dbg !23974
  br i1 %.sroa.18.0.in.i.i, label %bb.ay, label %.loopexit.i, !dbg !23975

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jv = or disjoint i64 %i.jn, %i.iw, !dbg !23976 ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.hu, !dbg !23977
  call void @llvm.assume(i1 %i.jw), !dbg !23978
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.jv, !dbg !23979 ; 3 uses
  %i.jy = load atomic ptr, ptr %i.jx acquire, align 8, !dbg !23980, !noalias !23618 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null, !dbg !23981
  br i1 %i.jz, label %bb.az, label %bb.co, !dbg !23981

bb.az:                                            ; preds = %bb.ay
  %i.ka = cmpxchg ptr %i.jx, ptr null, ptr %i.bq release acquire, align 8, !dbg !23982, !noalias !23618 ; 2 uses
  %.sroa.18.0.in.i28.i = extractvalue { ptr, i1 } %i.ka, 1, !dbg !23983
  %.sroa.01.0.i31.i = extractvalue { ptr, i1 } %i.ka, 0, !dbg !23983
  br i1 %.sroa.18.0.in.i28.i, label %bb.ba, label %bb.co, !dbg !23984

bb.ba:                                            ; preds = %bb.az
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !23985
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 24, !dbg !23986
  %i.kd = atomicrmw sub ptr %i.kc, i64 1 release, align 8, !dbg !23987, !noalias !23618
  %i.ke = icmp eq i64 %i.kd, 1, !dbg !23988
  br i1 %i.ke, label %bb.bb, label %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCseeLknQCOKOd_13polars_python.exit.i, !dbg !23988

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !23989, !noalias !23618
  %i.kf = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !23990, !noalias !23650
  %i.kg = extractvalue { i32, i1 } %i.kf, 1, !dbg !23990
  br i1 %i.kg, label %bb.bd, label %bb.bc, !dbg !23991, !prof !5231

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 128 %1), !dbg !23992, !noalias !23650
  br label %bb.bd, !dbg !23992

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kh = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !23993, !noalias !23650
  %i.ki = and i64 %i.kh, 9223372036854775807, !dbg !23994
  %i.kj = icmp eq i64 %i.ki, 0, !dbg !23994
  br i1 %i.kj, label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i32.i, label %bb.be, !dbg !23994, !prof !5231

bb.be:                                            ; preds = %bb.bd
  %i.kk = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !23995, !noalias !23650
  %i.kl = xor i1 %i.kk, true, !dbg !23996
  %i.km = zext i1 %i.kl to i8, !dbg !23997
  br label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i32.i, !dbg !23995

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i32.i: ; preds = %bb.be, %bb.bd
  %.sroa.01.0.i.i.i33.i = phi i8 [ %i.km, %bb.be ], [ 0, %bb.bd ], !dbg !23998
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !23999
  %i.ko = load atomic i8, ptr %i.kn monotonic, align 4, !dbg !24000, !noalias !23650
  %i.kp = icmp ne i8 %i.ko, 0, !dbg !24001
  call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i1 noundef zeroext %i.kp, i8 noundef %.sroa.01.0.i.i.i33.i, ptr noundef nonnull align 128 %1), !dbg !24002, !noalias !23618
  call void @llvm.experimental.noalias.scope.decl(metadata !23651), !dbg !24003
  %i.kq = load i64, ptr %i.j, align 8, !dbg !24004, !range !4932, !alias.scope !23651, !noalias !23618, !noundef !4872
  %i.kr = icmp eq i64 %i.kq, 0, !dbg !24004
  %i.ks = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !24004 ; 2 uses
  br i1 %i.kr, label %bb.bf, label %bb.bj, !dbg !24004

bb.bf:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i32.i
  %.val.i.i.i = load ptr, ptr %i.ks, align 8, !dbg !24004, !alias.scope !23651, !noalias !23618, !nonnull !4872, !align !5241, !noundef !4872 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !24004
  %.val1.i.i.i = load i8, ptr %i.kt, align 8, !dbg !24004, !range !5133, !alias.scope !23651, !noalias !23618, !noundef !4872
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 4, !dbg !24005
  %i.kv = trunc nuw i8 %.val1.i.i.i to i1, !dbg !24006
  br i1 %i.kv, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bg, !dbg !24006

bb.bg:                                            ; preds = %bb.bf
  %i.kw = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24007, !noalias !23652
  %i.kx = and i64 %i.kw, 9223372036854775807, !dbg !24008
  %i.ky = icmp eq i64 %i.kx, 0, !dbg !24008
  br i1 %i.ky, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bh, !dbg !24008, !prof !5231

bb.bh:                                            ; preds = %bb.bg
  %i.kz = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !24009, !noalias !23652
  br i1 %i.kz, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bi, !dbg !24010

bb.bi:                                            ; preds = %bb.bh
  store atomic i8 1, ptr %i.ku monotonic, align 4, !dbg !24011, !noalias !23652
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, !dbg !24012

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.la = atomicrmw xchg ptr %.val.i.i.i, i32 0 release, align 4, !dbg !24013, !noalias !23652
  %i.lb = icmp eq i32 %i.la, 2, !dbg !24014
  br i1 %i.lb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !24014, !prof !4934

bb.bj:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i32.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23653), !dbg !24004
  %.val.i.i.i.i = load ptr, ptr %i.ks, align 8, !dbg !24015, !alias.scope !23654, !noalias !23618, !nonnull !4872, !align !5241, !noundef !4872 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !24015
  %.val1.i.i.i.i = load i8, ptr %i.lc, align 8, !dbg !24015, !range !5133, !alias.scope !23654, !noalias !23618, !noundef !4872
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 4, !dbg !24016
  %i.le = trunc nuw i8 %.val1.i.i.i.i to i1, !dbg !24017
  br i1 %i.le, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bk, !dbg !24017

bb.bk:                                            ; preds = %bb.bj
  %i.lf = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24018, !noalias !23655
  %i.lg = and i64 %i.lf, 9223372036854775807, !dbg !24019
  %i.lh = icmp eq i64 %i.lg, 0, !dbg !24019
  br i1 %i.lh, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bl, !dbg !24019, !prof !5231

bb.bl:                                            ; preds = %bb.bk
  %i.li = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !24020, !noalias !23655
  br i1 %i.li, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bm, !dbg !24021

bb.bm:                                            ; preds = %bb.bl
  store atomic i8 1, ptr %i.ld monotonic, align 4, !dbg !24022, !noalias !23655
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, !dbg !24023

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %i.lj = atomicrmw xchg ptr %.val.i.i.i.i, i32 0 release, align 4, !dbg !24024, !noalias !23655
  %i.lk = icmp eq i32 %i.lj, 2, !dbg !24025
  br i1 %i.lk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !24025, !prof !4934

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  %.val.i.sink.i.i.i = phi ptr [ %.val.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i ], [ %.val.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ]
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.sink.i.i.i), !dbg !24004, !noalias !23652
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !24004

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !24026, !noalias !23618
  call void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.kb), !dbg !24027, !noalias !23618
  br label %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCseeLknQCOKOd_13polars_python.exit.i, !dbg !24027

_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !24028, !noalias !23656
  %i.ll = load i64, ptr %i.bt, align 8, !dbg !24029, !noalias !23657, !noundef !4872 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !24030
  %i.ln = getelementptr inbounds nuw i8, ptr %6, i64 616, !dbg !24031 ; 2 uses
  %i.lo = atomicrmw add ptr %i.ln, i64 1 monotonic, align 8, !dbg !24032, !noalias !23666
  %i.lp = add i64 %i.lo, 1, !dbg !24033
  %i.lq = getelementptr inbounds nuw i8, ptr %6, i64 608, !dbg !24034
  %i.lr = load i64, ptr %i.lq, align 32, !dbg !24034, !noalias !23666, !noundef !4872
  %.not32.i.i = icmp ugt i64 %i.lp, %i.lr, !dbg !24033
  br i1 %.not32.i.i, label %.thread35.i.i, label %bb.bn, !dbg !24033

bb.bn:                                            ; preds = %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCseeLknQCOKOd_13polars_python.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !24035, !noalias !23666
  store i64 589684135938649225, ptr %i.g, align 8, !dbg !24036, !noalias !23666
  %i.ls = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.ll)
          to label %.noexc.i.i43.i unwind label %bb.bq, !dbg !24037, !noalias !23656

.noexc.i.i43.i:                                   ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !24038, !noalias !23666
  %i.lt = getelementptr inbounds nuw i8, ptr %6, i64 128, !dbg !24039 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 592, !dbg !24040
  %i.lv = atomicrmw add ptr %i.lu, i64 1 monotonic, align 8, !dbg !24041, !noalias !23675 ; 4 uses
  %i.lw = icmp sgt i64 %i.lv, -1, !dbg !24042
  br i1 %i.lw, label %bb.bp, label %bb.bo, !dbg !24042, !prof !5231

bb.bo:                                            ; preds = %.noexc.i.i43.i
  invoke void @_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE19next_index_overflowCs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 %i.lt) #54
          to label %.noexc1.i.i.i unwind label %bb.bq, !dbg !24043, !noalias !23656

.noexc1.i.i.i:                                    ; preds = %bb.bo
  unreachable, !dbg !24044

.thread35.i.i:                                    ; preds = %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCseeLknQCOKOd_13polars_python.exit.i
  %i.lx = atomicrmw sub ptr %i.ln, i64 1 monotonic, align 8, !dbg !24045, !noalias !23666 ; 0 uses
  store i64 2, ptr %i.i, align 8, !dbg !24046, !noalias !23656
  %.sroa.423.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !24046
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.423.0..sroa_idx37.i.i, align 8, !dbg !24046, !noalias !23656
  %.sroa.524.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !24046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.524.0..sroa_idx38.i.i, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @213, i64 16), i64 56, i1 false), !dbg !24046, !noalias !23656
  br label %bb.bv, !dbg !24047

bb.bp:                                            ; preds = %.noexc.i.i43.i
  %i.ly = icmp ne i64 %i.lv, 0, !dbg !24048
  call void @llvm.assume(i1 %i.ly), !dbg !24049
  %i.lz = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E12get_or_allocCseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %i.lt, i64 noundef range(i64 1, -9223372036854775808) %i.lv)
          to label %bb.bs unwind label %bb.bq, !dbg !24050, !noalias !23656 ; 4 uses

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.ma = landingpad { ptr, i32 }
          catch ptr null, !dbg !24044
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0, !dbg !24044
  %i.mc = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.mb)
          to label %.thread.i.i unwind label %bb.br, !dbg !24051, !noalias !23656 ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer, !dbg !24044 ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #57, !dbg !24052, !noalias !23656
  unreachable, !dbg !24052

.thread.i.i:                                      ; preds = %bb.bq
  %i.me = extractvalue { ptr, ptr } %i.mc, 0, !dbg !24051
  %i.mf = extractvalue { ptr, ptr } %i.mc, 1, !dbg !24051 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mf) ]
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0ECseeLknQCOKOd_13polars_python:bb.a
  %.sroa.0.0.i34.i = phi ptr [ %i.na, %bb.bv ], [ %i.mp, %bb.bs ], !dbg !24065
  %i.mq = ptrtoint ptr %.sroa.0.0.i34.i to i64, !dbg !24066
  %i.mr = and i64 %i.mq, 2, !dbg !24067
  %i.ms = icmp eq i64 %i.mr, 0, !dbg !24067
  br i1 %i.ms, label %bb.bz, label %bb.bw, !dbg !24067

bb.bu:                                            ; preds = %bb.ci, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i, %bb.cg, %bb.cc, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i, %bb.by, %bb.bx
  %.sroa.01.0.i35.i = phi i1 [ false, %bb.ci ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i ], [ true, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i ], [ true, %bb.bx ], [ true, %bb.by ], [ true, %bb.cc ], [ true, %bb.cg ], !dbg !24068
  %i.mt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mu = load i64, ptr %i.i, align 8, !dbg !24069, !range !5250, !noalias !23656, !noundef !4872
  switch i64 %i.mu, label %bb.cl [
    i64 19, label %bb.ck
    i64 18, label %common.resume.i
  ], !dbg !24069

bb.bv:                                            ; preds = %.thread.i.i, %.thread35.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !24070
  %i.mw = atomicrmw xchg ptr %i.mv, ptr %i.bq acq_rel, align 8, !dbg !24071, !noalias !23656 ; 2 uses
  %i.mx = ptrtoint ptr %i.mw to i64, !dbg !24072
  %.not.i.i = and i64 %i.mx, 4, !dbg !24073
  %i.my = xor i64 %.not.i.i, 4, !dbg !24073
  %i.mz = getelementptr i8, ptr %i.mw, i64 %i.my, !dbg !24074
  %i.na = atomicrmw xchg ptr %i.bq, ptr %i.mz release, align 8, !dbg !24075, !noalias !23656
  store atomic ptr inttoptr (i64 -1 to ptr), ptr %i.jx monotonic, align 8, !dbg !24076, !noalias !23656
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 8, !dbg !24077
  %i.nc = atomicrmw add ptr %i.nb, i64 1 release, align 8, !dbg !24078, !noalias !23656 ; 0 uses
  br label %bb.bt, !dbg !24064

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !24079, !noalias !23656
  %i.nd = cmpxchg ptr %i.id, i32 0, i32 1 acquire monotonic, align 4, !dbg !24080, !noalias !23692
  %i.ne = extractvalue { i32, i1 } %i.nd, 1, !dbg !24080
  br i1 %i.ne, label %.noexc.i.i, label %bb.bx, !dbg !24081, !prof !5231

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.id)
          to label %.noexc.i.i unwind label %bb.bu, !dbg !24082, !noalias !23656

.noexc.i.i:                                       ; preds = %bb.bx, %bb.bw
  %i.nf = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24083, !noalias !23692
  %i.ng = and i64 %i.nf, 9223372036854775807, !dbg !24084
  %i.nh = icmp eq i64 %i.ng, 0, !dbg !24084
  br i1 %i.nh, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i, label %bb.by, !dbg !24084, !prof !5231

bb.by:                                            ; preds = %.noexc.i.i
  %i.ni = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc13.i.i unwind label %bb.bu, !dbg !24085, !noalias !23656

.noexc13.i.i:                                     ; preds = %bb.by
  %i.nj = xor i1 %i.ni, true, !dbg !24086
  %i.nk = zext i1 %i.nj to i8, !dbg !24087
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i, !dbg !24085

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i: ; preds = %.noexc13.i.i, %.noexc.i.i
  %.sroa.01.0.i.i.i36.i = phi i8 [ %i.nk, %.noexc13.i.i ], [ 0, %.noexc.i.i ], !dbg !24088
  %i.nl = load atomic i8, ptr %i.if monotonic, align 4, !dbg !24089, !noalias !23692
  %i.nm = icmp ne i8 %i.nl, 0, !dbg !24090
  invoke void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuarduENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i1 noundef zeroext %i.nm, i8 noundef %.sroa.01.0.i.i.i36.i, ptr noundef nonnull align 4 %i.id)
          to label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.bu, !dbg !24091, !noalias !23656

bb.bz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i, %bb.bt
  %i.nn = load i64, ptr %i.i, align 8, !dbg !24092, !range !5250, !noalias !23656, !noundef !4872 ; 2 uses
  switch i64 %i.nn, label %bb.ec [
    i64 19, label %bb.ci
    i64 18, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread34
  ], !dbg !24093

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread34: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !24069, !noalias !23656
  br label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread, !dbg !24094

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23694), !dbg !24095
  %i.no = load i64, ptr %i.h, align 8, !dbg !24096, !range !4932, !alias.scope !23694, !noalias !23656, !noundef !4872
  %i.np = icmp eq i64 %i.no, 0, !dbg !24096
  %i.nq = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !24096 ; 2 uses
  br i1 %i.np, label %bb.ca, label %bb.ce, !dbg !24096

bb.ca:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i.i
  %.val.i.i40.i = load ptr, ptr %i.nq, align 8, !dbg !24096, !alias.scope !23694, !noalias !23656, !nonnull !4872, !align !5253, !noundef !4872 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !24096
  %.val1.i.i41.i = load i8, ptr %i.nr, align 8, !dbg !24096, !range !5133, !alias.scope !23694, !noalias !23656, !noundef !4872
  %i.ns = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 4, !dbg !24097
  %i.nt = trunc nuw i8 %.val1.i.i41.i to i1, !dbg !24098
  br i1 %i.nt, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i42.i, label %bb.cb, !dbg !24098

bb.cb:                                            ; preds = %bb.ca
  %i.nu = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24099, !noalias !23695
  %i.nv = and i64 %i.nu, 9223372036854775807, !dbg !24100
  %i.nw = icmp eq i64 %i.nv, 0, !dbg !24100
  br i1 %i.nw, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i42.i, label %bb.cc, !dbg !24100, !prof !5231

bb.cc:                                            ; preds = %bb.cb
  %i.nx = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc16.i.i unwind label %bb.bu, !dbg !24101, !noalias !23656

.noexc16.i.i:                                     ; preds = %bb.cc
  br i1 %i.nx, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i42.i, label %bb.cd, !dbg !24102

bb.cd:                                            ; preds = %.noexc16.i.i
  store atomic i8 1, ptr %i.ns monotonic, align 4, !dbg !24103, !noalias !23695
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i42.i, !dbg !24104

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i42.i: ; preds = %bb.cd, %.noexc16.i.i, %bb.cb, %bb.ca
  %i.ny = atomicrmw xchg ptr %.val.i.i40.i, i32 0 release, align 4, !dbg !24105, !noalias !23695
  %i.nz = icmp eq i32 %i.ny, 2, !dbg !24106
  br i1 %i.nz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !24106, !prof !4934

bb.ce:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23696), !dbg !24096
  %.val.i.i15.i.i = load ptr, ptr %i.nq, align 8, !dbg !24107, !alias.scope !23697, !noalias !23656, !nonnull !4872, !align !5253, !noundef !4872 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !24107
  %.val1.i.i.i37.i = load i8, ptr %i.oa, align 8, !dbg !24107, !range !5133, !alias.scope !23697, !noalias !23656, !noundef !4872
  %i.ob = getelementptr inbounds nuw i8, ptr %.val.i.i15.i.i, i64 4, !dbg !24108
  %i.oc = trunc nuw i8 %.val1.i.i.i37.i to i1, !dbg !24109
  br i1 %i.oc, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i38.i, label %bb.cf, !dbg !24109

bb.cf:                                            ; preds = %bb.ce
  %i.od = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24110, !noalias !23698
  %i.oe = and i64 %i.od, 9223372036854775807, !dbg !24111
  %i.of = icmp eq i64 %i.oe, 0, !dbg !24111
  br i1 %i.of, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i38.i, label %bb.cg, !dbg !24111, !prof !5231

bb.cg:                                            ; preds = %bb.cf
  %i.og = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc17.i.i unwind label %bb.bu, !dbg !24112, !noalias !23656

.noexc17.i.i:                                     ; preds = %bb.cg
  br i1 %i.og, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i38.i, label %bb.ch, !dbg !24113

bb.ch:                                            ; preds = %.noexc17.i.i
  store atomic i8 1, ptr %i.ob monotonic, align 4, !dbg !24114, !noalias !23698
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i38.i, !dbg !24115

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i38.i: ; preds = %bb.ch, %.noexc17.i.i, %bb.cf, %bb.ce
  %i.oh = atomicrmw xchg ptr %.val.i.i15.i.i, i32 0 release, align 4, !dbg !24116, !noalias !23698
  %i.oi = icmp eq i32 %i.oh, 2, !dbg !24117
  br i1 %i.oi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i, !dbg !24117, !prof !4934

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i38.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i42.i
  %.val.i.sink.i.i39.i = phi ptr [ %.val.i.i40.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i42.i ], [ %.val.i.i15.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i38.i ]
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.sink.i.i39.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.bu, !dbg !24096, !noalias !23656

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i38.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !24118, !noalias !23656
  invoke void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.ie)
          to label %bb.bz unwind label %bb.bu, !dbg !24119, !noalias !23656

bb.ci:                                            ; preds = %bb.bz
  %i.oj = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !24120
  %i.ok = load ptr, ptr %i.oj, align 8, !dbg !24120, !noalias !23656, !nonnull !4872, !noundef !4872
  %i.ol = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !24120
  %i.om = load ptr, ptr %i.ol, align 8, !dbg !24120, !noalias !23656, !nonnull !4872, !align !5241, !noundef !4872
  invoke void @_RNvNtCsh8eZTKRCwoO_3std5panic13resume_unwind(ptr noundef nonnull %i.ok, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.om) #54
          to label %bb.cj unwind label %bb.bu, !dbg !24121, !noalias !23656

bb.cj:                                            ; preds = %bb.ci
  unreachable

bb.ck:                                            ; preds = %bb.bu
  br i1 %.sroa.01.0.i35.i, label %bb.cn, label %common.resume.i, !dbg !24069

bb.cl:                                            ; preds = %bb.bu
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i) #56
          to label %common.resume.i unwind label %bb.cm, !dbg !24069, !noalias !23656

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !24122, !noalias !23656
  unreachable, !dbg !24122

bb.cn:                                            ; preds = %bb.ck
  %i.oo = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !24069
  %.val.i.i22 = load ptr, ptr %i.oo, align 8, !dbg !24069, !noalias !23656
  %i.op = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !24069
  %.val12.i.i = load ptr, ptr %i.op, align 8, !dbg !24069, !noalias !23656, !nonnull !4872, !align !5241, !noundef !4872
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECseeLknQCOKOd_13polars_python(ptr %.val.i.i22, ptr nonnull %.val12.i.i) #56
          to label %common.resume.i unwind label %bb.cm, !dbg !24069, !noalias !23656

bb.co:                                            ; preds = %bb.az, %bb.ay
  %.sroa.010.0.i = phi ptr [ %i.jy, %bb.ay ], [ %.sroa.01.0.i31.i, %bb.az ], !dbg !24123 ; 8 uses
  %i.oq = icmp eq ptr %.sroa.010.0.i, inttoptr (i64 -1 to ptr), !dbg !24124
  br i1 %i.oq, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i21, !dbg !24124

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i21: ; preds = %bb.co
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 16, !dbg !24125
  %i.os = load i64, ptr %i.or, align 8, !dbg !24126, !noalias !23618, !noundef !4872
  %i.ot = icmp eq i64 %i.os, %i.ib, !dbg !24127
  br i1 %i.ot, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !24127

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i21
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 24, !dbg !24128
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.ou, ptr nonnull %i.ic, i64 %i.ib), !dbg !24129, !noalias !23618
  %i.ov = icmp eq i32 %bcmp.i.i, 0, !dbg !24129
  br i1 %i.ov, label %bb.cp, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !24130

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCseeLknQCOKOd_13polars_python.exit.i, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i21, %bb.co
  %i.ow = add i64 %.sroa.019.0107.i, -128, !dbg !24131
  %i.ox = and i64 %i.ow, %.sroa.019.0107.i, !dbg !24132 ; 2 uses
  %i.oy = icmp eq i64 %i.ox, 0, !dbg !23964
  br i1 %i.oy, label %._crit_edge.i20, label %bb.aw, !dbg !23964

bb.cp:                                            ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.i
  %i.oz = load atomic ptr, ptr %.sroa.010.0.i acquire, align 8, !dbg !24133, !noalias !23618 ; 3 uses
  %i.pa = ptrtoint ptr %i.oz to i64, !dbg !24134  ; 3 uses
  %i.pb = and i64 %i.pa, 5, !dbg !24135
  %i.pc = icmp eq i64 %i.pb, 0, !dbg !24135
  br i1 %i.pc, label %bb.cq, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCseeLknQCOKOd_13polars_python.exit.i, !dbg !24135

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !24136, !noalias !23618
  %i.pd = cmpxchg ptr %i.id, i32 0, i32 1 acquire monotonic, align 4, !dbg !24137, !noalias !23699
  %i.pe = extractvalue { i32, i1 } %i.pd, 1, !dbg !24137
  br i1 %i.pe, label %bb.cs, label %bb.cr, !dbg !24138, !prof !5231

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.id), !dbg !24139, !noalias !23699
  br label %bb.cs, !dbg !24139

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.pf = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24140, !noalias !23699
  %i.pg = and i64 %i.pf, 9223372036854775807, !dbg !24141
  %i.ph = icmp eq i64 %i.pg, 0, !dbg !24141
  br i1 %i.ph, label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i45.i, label %bb.ct, !dbg !24141, !prof !5231

bb.ct:                                            ; preds = %bb.cs
  %i.pi = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !24142, !noalias !23699
  %i.pj = xor i1 %i.pi, true, !dbg !24143
  %i.pk = zext i1 %i.pj to i8, !dbg !24144
  br label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i45.i, !dbg !24142

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i45.i: ; preds = %bb.ct, %bb.cs
  %.sroa.01.0.i.i.i46.i = phi i8 [ %i.pk, %bb.ct ], [ 0, %bb.cs ], !dbg !24145
  %i.pl = load atomic i8, ptr %i.if monotonic, align 4, !dbg !24146, !noalias !23699
  %i.pm = icmp ne i8 %i.pl, 0, !dbg !24147
  call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuarduENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i1 noundef zeroext %i.pm, i8 noundef %.sroa.01.0.i.i.i46.i, ptr noundef nonnull align 4 %i.id), !dbg !24148, !noalias !23618
  call void @llvm.experimental.noalias.scope.decl(metadata !23700), !dbg !24149
  %i.pn = load i64, ptr %i.f, align 8, !dbg !24150, !range !4932, !alias.scope !23700, !noalias !23701, !noundef !4872
  %i.po = trunc nuw i64 %i.pn to i1, !dbg !24151
  br i1 %i.po, label %bb.cu, label %bb.cy, !dbg !24151, !prof !4934

bb.cu:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i45.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24152, !noalias !23702
  %i.pp = load ptr, ptr %i.ig, align 8, !dbg !24152, !alias.scope !23700, !noalias !23701, !nonnull !4872, !align !5253, !noundef !4872
  %i.pq = load i8, ptr %i.ih, align 8, !dbg !24152, !range !5133, !alias.scope !23700, !noalias !23701, !noundef !4872
  store ptr %i.pp, ptr %i.c, align 8, !dbg !24152, !noalias !23702
  %i.pr = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !24152
  store i8 %i.pq, ptr %i.pr, align 8, !dbg !24152, !noalias !23702
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @282, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @856) #54
          to label %bb.cw unwind label %bb.cv, !dbg !24153, !noalias !23703

bb.cv:                                            ; preds = %bb.cu
  %i.ps = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuarduEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #56
          to label %common.resume.i unwind label %bb.cx, !dbg !24154, !noalias !23703

bb.cw:                                            ; preds = %bb.cu
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !24155, !noalias !23703
  unreachable, !dbg !24155

bb.cy:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCseeLknQCOKOd_13polars_python.exit.i45.i
  %i.pu = load ptr, ptr %i.ig, align 8, !dbg !24156, !alias.scope !23700, !noalias !23701, !nonnull !4872, !align !5253, !noundef !4872 ; 2 uses
  %i.pv = load i8, ptr %i.ih, align 8, !dbg !24156, !range !5133, !alias.scope !23700, !noalias !23701, !noundef !4872 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !24157, !noalias !23618
  %.not.i47.i = and i64 %i.pa, 2, !dbg !24158
  %i.pw = xor i64 %.not.i47.i, 2, !dbg !24158
  %i.px = getelementptr i8, ptr %i.oz, i64 %i.pw, !dbg !24159
  %i.py = cmpxchg ptr %.sroa.010.0.i, ptr %i.oz, ptr %i.px monotonic acquire, align 8, !dbg !24160, !noalias !23618
  %.sroa.01.0.i.i.i = extractvalue { ptr, i1 } %i.py, 0, !dbg !24161
  %i.pz = ptrtoint ptr %.sroa.01.0.i.i.i to i64, !dbg !24162 ; 2 uses
  %i.qa = and i64 %i.pz, 5, !dbg !24163
  %i.qb = icmp eq i64 %i.qa, 0, !dbg !24163
  br i1 %i.qb, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !24163

.lr.ph.i.i:                                       ; preds = %bb.cy, %bb.dl
  %.sroa.0.022.i.i = phi ptr [ %i.ra, %bb.dl ], [ %i.pu, %bb.cy ]
  %.sroa.7.021.i.i = phi i8 [ %i.rb, %bb.dl ], [ %i.pv, %bb.cy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !24164, !noalias !23618
  %i.qc = trunc nuw i8 %.sroa.7.021.i.i to i1, !dbg !24165
  call void @_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB3_7Condvar4waituECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 4 %i.ie, ptr noundef nonnull align 4 %.sroa.0.022.i.i, i1 noundef zeroext %i.qc), !dbg !24166, !noalias !23618
  call void @llvm.experimental.noalias.scope.decl(metadata !23704), !dbg !24167
  %i.qd = load i64, ptr %i.e, align 8, !dbg !24168, !range !4932, !alias.scope !23704, !noalias !23705, !noundef !4872
  %i.qe = trunc nuw i64 %i.qd to i1, !dbg !24169
  br i1 %i.qe, label %bb.dd, label %bb.dl, !dbg !24169, !prof !4934

._crit_edge.i.i:                                  ; preds = %bb.dl, %bb.cy
  %.sroa.7.0.lcssa.i.i = phi i8 [ %i.pv, %bb.cy ], [ %i.rb, %bb.dl ], !dbg !24170
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.pu, %bb.cy ], [ %i.ra, %bb.dl ], !dbg !24170 ; 3 uses
  %.lcssa.i.i = phi i64 [ %i.pz, %bb.cy ], [ %i.rd, %bb.dl ], !dbg !24162 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4, !dbg !24171
  %i.qg = trunc nuw i8 %.sroa.7.0.lcssa.i.i to i1, !dbg !24172
  br i1 %i.qg, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i48.i, label %bb.cz, !dbg !24172

bb.cz:                                            ; preds = %._crit_edge.i.i
  %i.qh = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24173, !noalias !23618
  %i.qi = and i64 %i.qh, 9223372036854775807, !dbg !24174
  %i.qj = icmp eq i64 %i.qi, 0, !dbg !24174
  br i1 %i.qj, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i48.i, label %bb.da, !dbg !24174, !prof !5231

bb.da:                                            ; preds = %bb.cz
  %i.qk = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !24175, !noalias !23618
  br i1 %i.qk, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i48.i, label %bb.db, !dbg !24176

bb.db:                                            ; preds = %bb.da
  store atomic i8 1, ptr %i.qf monotonic, align 1, !dbg !24177, !noalias !23618
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i48.i, !dbg !24178

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i48.i: ; preds = %bb.db, %bb.da, %bb.cz, %._crit_edge.i.i
  %i.ql = atomicrmw xchg ptr %.sroa.0.0.lcssa.i.i, i32 0 release, align 4, !dbg !24179, !noalias !23618
  %i.qm = icmp eq i32 %i.ql, 2, !dbg !24180
  br i1 %i.qm, label %bb.dc, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCseeLknQCOKOd_13polars_python.exit.i, !dbg !24180, !prof !4934

bb.dc:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i48.i
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.0.lcssa.i.i), !dbg !24181, !noalias !23618
  br label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCseeLknQCOKOd_13polars_python.exit.i, !dbg !24181

bb.dd:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !24182, !noalias !23706
  %i.qn = load ptr, ptr %i.ii, align 8, !dbg !24182, !alias.scope !23704, !noalias !23705, !nonnull !4872, !align !5253, !noundef !4872
  %i.qo = load i8, ptr %i.ij, align 8, !dbg !24182, !range !5133, !alias.scope !23704, !noalias !23705, !noundef !4872
  store ptr %i.qn, ptr %i.d, align 8, !dbg !24182, !noalias !23706
  %i.qp = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !24182 ; 2 uses
  store i8 %i.qo, ptr %i.qp, align 8, !dbg !24182, !noalias !23706
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @282, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #54
          to label %bb.dj unwind label %bb.de, !dbg !24183, !noalias !23707

bb.de:                                            ; preds = %bb.dd
  %i.qq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23708), !dbg !24184
  %.val.i66.i = load ptr, ptr %i.d, align 8, !dbg !24185, !alias.scope !23708, !noalias !23707, !nonnull !4872, !align !5253, !noundef !4872 ; 3 uses
  %.val1.i.i = load i8, ptr %i.qp, align 8, !dbg !24185, !range !5133, !alias.scope !23708, !noalias !23707, !noundef !4872
  %i.qr = getelementptr inbounds nuw i8, ptr %.val.i66.i, i64 4, !dbg !24186
  %i.qs = trunc nuw i8 %.val1.i.i to i1, !dbg !24187
  br i1 %i.qs, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67.i, label %bb.df, !dbg !24187

bb.df:                                            ; preds = %bb.de
  %i.qt = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24188, !noalias !23709
  %i.qu = and i64 %i.qt, 9223372036854775807, !dbg !24189
  %i.qv = icmp eq i64 %i.qu, 0, !dbg !24189
  br i1 %i.qv, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67.i, label %bb.dg, !dbg !24189, !prof !5231

bb.dg:                                            ; preds = %bb.df
  %i.qw = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc.i unwind label %bb.dk, !dbg !24190, !noalias !23618

.noexc.i:                                         ; preds = %bb.dg
  br i1 %i.qw, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67.i, label %bb.dh, !dbg !24191

bb.dh:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.qr monotonic, align 4, !dbg !24192, !noalias !23709
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67.i, !dbg !24193

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67.i: ; preds = %bb.dh, %.noexc.i, %bb.df, %bb.de
  %i.qx = atomicrmw xchg ptr %.val.i66.i, i32 0 release, align 4, !dbg !24194, !noalias !23709
  %i.qy = icmp eq i32 %i.qx, 2, !dbg !24195
  br i1 %i.qy, label %bb.di, label %common.resume.i, !dbg !24195, !prof !4934

bb.di:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i67.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i66.i)
          to label %common.resume.i unwind label %bb.dk, !dbg !24196, !noalias !23618

bb.dj:                                            ; preds = %bb.dd
  unreachable

bb.dk:                                            ; preds = %bb.di, %bb.dg
  %i.qz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !24197, !noalias !23707
  unreachable, !dbg !24197

bb.dl:                                            ; preds = %.lr.ph.i.i
  %i.ra = load ptr, ptr %i.ii, align 8, !dbg !24198, !alias.scope !23704, !noalias !23705, !nonnull !4872, !align !5253, !noundef !4872 ; 2 uses
  %i.rb = load i8, ptr %i.ij, align 8, !dbg !24198, !range !5133, !alias.scope !23704, !noalias !23705, !noundef !4872 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !24199, !noalias !23618
  %i.rc = load atomic ptr, ptr %.sroa.010.0.i acquire, align 8, !dbg !24200, !noalias !23618
  %i.rd = ptrtoint ptr %i.rc to i64, !dbg !24162  ; 2 uses
  %i.re = and i64 %i.rd, 5, !dbg !24163
  %i.rf = icmp eq i64 %i.re, 0, !dbg !24163
  br i1 %i.rf, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !24163

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.dc, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i48.i, %bb.cp
  %.sroa.0.0.in.in.in.i.i = phi i64 [ %i.pa, %bb.cp ], [ %.lcssa.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i48.i ], [ %.lcssa.i.i, %bb.dc ]
  %.sroa.0.0.in.in.i.i = and i64 %.sroa.0.0.in.in.in.i.i, 4, !dbg !24170
  %.sroa.0.0.in.i.i = icmp eq i64 %.sroa.0.0.in.in.i.i, 0, !dbg !24170
  br i1 %.sroa.0.0.in.i.i, label %bb.dm, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !24201

bb.dm:                                            ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCseeLknQCOKOd_13polars_python.exit.i
  %i.rg = load i64, ptr %i.bt, align 8, !dbg !24202, !noalias !23618, !noundef !4872 ; 2 uses
  %i.rh = add i64 %i.rg, -9223372036854775793, !dbg !24203
  %.not.i.i51.i = icmp ult i64 %i.rh, -9223372036854775801, !dbg !24203
  br i1 %.not.i.i51.i, label %bb.dn, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i52.i, !dbg !24204, !prof !4934

bb.dn:                                            ; preds = %bb.dm
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @283, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @858) #54, !dbg !24205, !noalias !23618
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i52.i: ; preds = %bb.dm
  %i.ri = add i64 %i.rg, 24, !dbg !24206          ; 2 uses
  %.not.i.i.i53.i = icmp ugt i64 %i.ri, 9223372036854775800, !dbg !24207
  br i1 %.not.i.i.i53.i, label %bb.do, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCseeLknQCOKOd_13polars_python.exit.i, !dbg !24208

bb.do:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i52.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @283, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @859) #54, !dbg !24209, !noalias !23710
  unreachable

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i52.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.ri, i64 noundef 8) #50, !dbg !24210, !noalias !23618
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !24211
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 16, !dbg !24212
  %i.rl = atomicrmw add ptr %i.rk, i64 1 monotonic, align 8, !dbg !24213, !noalias !23618
  %i.rm = icmp eq i64 %i.rl, 0, !dbg !24214
  br i1 %i.rm, label %bb.dp, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread, !dbg !24214

bb.dp:                                            ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCseeLknQCOKOd_13polars_python.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24215, !noalias !23618
  %i.rn = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !24216, !noalias !23711
  %i.ro = extractvalue { i32, i1 } %i.rn, 1, !dbg !24216
  br i1 %i.ro, label %bb.dr, label %bb.dq, !dbg !24217, !prof !5231

bb.dq:                                            ; preds = %bb.dp
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 128 %1), !dbg !24218, !noalias !23711
  br label %bb.dr, !dbg !24218

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.rp = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24219, !noalias !23711
  %i.rq = and i64 %i.rp, 9223372036854775807, !dbg !24220
  %i.rr = icmp eq i64 %i.rq, 0, !dbg !24220
  br i1 %i.rr, label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i55.i, label %bb.ds, !dbg !24220, !prof !5231

bb.ds:                                            ; preds = %bb.dr
  %i.rs = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !24221, !noalias !23711
  %i.rt = xor i1 %i.rs, true, !dbg !24222
  %i.ru = zext i1 %i.rt to i8, !dbg !24223
  br label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i55.i, !dbg !24221

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i55.i: ; preds = %bb.ds, %bb.dr
  %.sroa.01.0.i.i.i56.i = phi i8 [ %i.ru, %bb.ds ], [ 0, %bb.dr ], !dbg !24224
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !24225
  %i.rw = load atomic i8, ptr %i.rv monotonic, align 4, !dbg !24226, !noalias !23711
  %i.rx = icmp ne i8 %i.rw, 0, !dbg !24227
  call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %i.rx, i8 noundef %.sroa.01.0.i.i.i56.i, ptr noundef nonnull align 128 %1), !dbg !24228, !noalias !23618
  call void @llvm.experimental.noalias.scope.decl(metadata !23712), !dbg !24229
  %i.ry = load i64, ptr %i.b, align 8, !dbg !24230, !range !4932, !alias.scope !23712, !noalias !23618, !noundef !4872
  %i.rz = icmp eq i64 %i.ry, 0, !dbg !24230
  %i.sa = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24230 ; 2 uses
  br i1 %i.rz, label %bb.dt, label %bb.dx, !dbg !24230

bb.dt:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i55.i
  %.val.i.i63.i = load ptr, ptr %i.sa, align 8, !dbg !24230, !alias.scope !23712, !noalias !23618, !nonnull !4872, !align !5241, !noundef !4872 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24230
  %.val1.i.i64.i = load i8, ptr %i.sb, align 8, !dbg !24230, !range !5133, !alias.scope !23712, !noalias !23618, !noundef !4872
  %i.sc = getelementptr inbounds nuw i8, ptr %.val.i.i63.i, i64 4, !dbg !24231
  %i.sd = trunc nuw i8 %.val1.i.i64.i to i1, !dbg !24232
  br i1 %i.sd, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i65.i, label %bb.du, !dbg !24232

bb.du:                                            ; preds = %bb.dt
  %i.se = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24233, !noalias !23713
  %i.sf = and i64 %i.se, 9223372036854775807, !dbg !24234
  %i.sg = icmp eq i64 %i.sf, 0, !dbg !24234
  br i1 %i.sg, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i65.i, label %bb.dv, !dbg !24234, !prof !5231

bb.dv:                                            ; preds = %bb.du
  %i.sh = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !24235, !noalias !23713
  br i1 %i.sh, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i65.i, label %bb.dw, !dbg !24236

bb.dw:                                            ; preds = %bb.dv
  store atomic i8 1, ptr %i.sc monotonic, align 4, !dbg !24237, !noalias !23713
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i65.i, !dbg !24238

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i65.i: ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt
  %i.si = atomicrmw xchg ptr %.val.i.i63.i, i32 0 release, align 4, !dbg !24239, !noalias !23713
  %i.sj = icmp eq i32 %i.si, 2, !dbg !24240
  br i1 %i.sj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i61.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i60.i, !dbg !24240, !prof !4934

bb.dx:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCseeLknQCOKOd_13polars_python.exit.i55.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23714), !dbg !24230
  %.val.i.i.i57.i = load ptr, ptr %i.sa, align 8, !dbg !24241, !alias.scope !23715, !noalias !23618, !nonnull !4872, !align !5241, !noundef !4872 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24241
  %.val1.i.i.i58.i = load i8, ptr %i.sk, align 8, !dbg !24241, !range !5133, !alias.scope !23715, !noalias !23618, !noundef !4872
  %i.sl = getelementptr inbounds nuw i8, ptr %.val.i.i.i57.i, i64 4, !dbg !24242
  %i.sm = trunc nuw i8 %.val1.i.i.i58.i to i1, !dbg !24243
  br i1 %i.sm, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i59.i, label %bb.dy, !dbg !24243

bb.dy:                                            ; preds = %bb.dx
  %i.sn = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !24244, !noalias !23716
  %i.so = and i64 %i.sn, 9223372036854775807, !dbg !24245
  %i.sp = icmp eq i64 %i.so, 0, !dbg !24245
  br i1 %i.sp, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i59.i, label %bb.dz, !dbg !24245, !prof !5231

bb.dz:                                            ; preds = %bb.dy
  %i.sq = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58, !dbg !24246, !noalias !23716
  br i1 %i.sq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i59.i, label %bb.ea, !dbg !24247

bb.ea:                                            ; preds = %bb.dz
  store atomic i8 1, ptr %i.sl monotonic, align 4, !dbg !24248, !noalias !23716
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i59.i, !dbg !24249

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i59.i: ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dx
  %i.sr = atomicrmw xchg ptr %.val.i.i.i57.i, i32 0 release, align 4, !dbg !24250, !noalias !23716
  %i.ss = icmp eq i32 %i.sr, 2, !dbg !24251
  br i1 %i.ss, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i61.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i60.i, !dbg !24251, !prof !4934

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i61.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i59.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i65.i
  %.val.i.sink.i.i62.i = phi ptr [ %.val.i.i63.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i65.i ], [ %.val.i.i.i57.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i59.i ]
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.sink.i.i62.i), !dbg !24230, !noalias !23713
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i60.i, !dbg !24230

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i60.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECseeLknQCOKOd_13polars_python.exit.sink.split.i.i61.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i59.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24252, !noalias !23618
  call void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.rj), !dbg !24253, !noalias !23618
  br label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread, !dbg !24253

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1k_18CategoricalMapping20insert_cat_with_hash0ECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.f
  %i.st = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !24254
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24255
  store ptr %i.st, ptr %i.su, align 8, !dbg !24255
  store i64 18, ptr %0, align 8, !dbg !24255
  br label %bb.eb, !dbg !24256

bb.eb:                                            ; preds = %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread, %bb.ec, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1k_18CategoricalMapping20insert_cat_with_hash0ECseeLknQCOKOd_13polars_python.exit
  ret void, !dbg !24257

bb.ec:                                            ; preds = %bb.bz
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !24258
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !24258, !noalias !23718
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !24258
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.0..sroa_idx, i64 56, i1 false), !dbg !24258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !24069, !noalias !23656
  store i64 %i.nn, ptr %0, align 8, !dbg !24259
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24259
  store ptr %.sroa.7.0.copyload, ptr %.sroa.213.0..sroa_idx, align 8, !dbg !24259
  br label %bb.eb, !dbg !24256

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCseeLknQCOKOd_13polars_python.exit.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i60.i, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread34
  %.sroa.7.133 = phi ptr [ %i.bq, %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0ECseeLknQCOKOd_13polars_python.exit.thread34 ], [ %.sroa.010.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECseeLknQCOKOd_13polars_python.exit.i60.i ], [ %.sroa.010.0.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCseeLknQCOKOd_13polars_python.exit.i ]
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.7.133, i64 8, !dbg !24260
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24261
  store ptr %i.sv, ptr %i.sw, align 8, !dbg !24261
  store i64 18, ptr %0, align 8, !dbg !24261
  br label %bb.eb, !dbg !24256
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden noundef align 4 ptr @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE3getNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1d_18CategoricalMapping17get_cat_with_hash0ECseeLknQCOKOd_13polars_python(ptr nofree noundef nonnull align 128 captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24262 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24381
  %i.b = load atomic ptr, ptr %i.a acquire, align 32, !dbg !24382 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24374), !dbg !24383
  %i.c = lshr i64 %1, 3, !dbg !24384
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !24385
  %i.e = load i64, ptr %i.b, align 8, !dbg !24386, !noalias !24375, !noundef !4872 ; 3 uses
  %i.f = lshr i64 %i.e, 3, !dbg !24386            ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 %i.e, !dbg !24387
  %i.h = getelementptr i8, ptr %i.g, i64 32, !dbg !24387
  %i.i = add nsw i64 %i.f, -1, !dbg !24388
  %i.j = lshr i64 %1, 57, !dbg !24389
  %i.k = mul nuw nsw i64 %i.j, 72340172838076673, !dbg !24390
  %i.l = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !24374, !noalias !24377 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !24374, !noalias !24377, !nonnull !4872
  br label %bb.b, !dbg !24391

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.ai, %bb.d ], !dbg !24392
  %.sroa.0.0.i = phi i64 [ %i.c, %bb.a ], [ %i.aj, %bb.d ], !dbg !24392 ; 2 uses
  %i.p = and i64 %.sroa.0.0.i, %i.i, !dbg !24393  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p, !dbg !24394
  %i.r = load atomic i64, ptr %i.q monotonic, align 8, !dbg !24395, !noalias !24375 ; 3 uses
  %i.s = xor i64 %i.r, %i.k, !dbg !24396
  %i.t = add i64 %i.s, -72340172838076673, !dbg !24397
  %i.u = and i64 %i.r, -9187201950435737472, !dbg !24398 ; 2 uses
  %i.v = xor i64 %i.u, -9187201950435737472, !dbg !24398
  %i.w = and i64 %i.v, %i.t, !dbg !24398          ; 2 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !24399
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.i, !dbg !24399

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = shl nuw i64 %i.p, 3
  br label %bb.c, !dbg !24399

._crit_edge.i:                                    ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, %bb.b
  %i.z = add i64 %i.r, 72340172838076673, !dbg !24400
  %i.aa = and i64 %i.u, %i.z, !dbg !24401
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !24402
  br i1 %i.ab, label %bb.d, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1j_18CategoricalMapping17get_cat_with_hash0ECseeLknQCOKOd_13polars_python.exit, !dbg !24402

bb.c:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, %.lr.ph.i
  %.sroa.014.032.i = phi i64 [ %i.w, %.lr.ph.i ], [ %i.al, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i ] ; 3 uses
  %i.ac = tail call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.032.i, i1 true), !dbg !24403
  %i.ad = lshr i64 %i.ac, 3, !dbg !24404
  %i.ae = or disjoint i64 %i.ad, %i.y, !dbg !24405 ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.e, !dbg !24406
  tail call void @llvm.assume(i1 %i.af), !dbg !24407
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ae, !dbg !24408
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8, !dbg !24409, !noalias !24375 ; 5 uses
  %magicptr.i = ptrtoint ptr %i.ah to i64, !dbg !24410
  switch i64 %magicptr.i, label %bb.e [
    i64 0, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1j_18CategoricalMapping17get_cat_with_hash0ECseeLknQCOKOd_13polars_python.exit
    i64 -1, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i
  ], !dbg !24410

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = add i64 %.sroa.7.0.i, 1, !dbg !24411    ; 2 uses
  %i.aj = add i64 %.sroa.0.0.i, %i.ai, !dbg !24412
  br label %bb.b, !dbg !24391

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i: ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i, %bb.e, %bb.c
  %i.ak = add i64 %.sroa.014.032.i, -128, !dbg !24413
  %i.al = and i64 %i.ak, %.sroa.014.032.i, !dbg !24414 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0, !dbg !24399
  br i1 %i.am, label %._crit_edge.i, label %bb.c, !dbg !24399

bb.e:                                             ; preds = %bb.c
  %i.an = load atomic ptr, ptr %i.ah acquire, align 8, !dbg !24415, !noalias !24375
  %i.ao = ptrtoint ptr %i.an to i64, !dbg !24416  ; 2 uses
  %i.ap = and i64 %i.ao, 4, !dbg !24417
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !24417
  br i1 %i.aq, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !24417

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !24418
  %i.as = load i64, ptr %i.ar, align 8, !dbg !24419, !noalias !24375, !noundef !4872
  %i.at = icmp eq i64 %i.as, %i.n, !dbg !24420
  br i1 %i.at, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !24420

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCseeLknQCOKOd_13polars_python.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !24421
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.au, ptr nonnull %i.o, i64 %i.n), !dbg !24422, !noalias !24375
  %i.av = icmp eq i32 %bcmp.i.i, 0, !dbg !24422
  br i1 %i.av, label %bb.f, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.thread.i, !dbg !24423

bb.f:                                             ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping17get_cat_with_hash0CseeLknQCOKOd_13polars_python.exit.i
  %i.aw = and i64 %i.ao, 1, !dbg !24424
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !24424
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %spec.select = select i1 %i.ax, ptr null, ptr %i.ay, !dbg !24424
  br label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1j_18CategoricalMapping17get_cat_with_hash0ECseeLknQCOKOd_13polars_python.exit, !dbg !24424

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE9find_implNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB1j_18CategoricalMapping17get_cat_with_hash0ECseeLknQCOKOd_13polars_python.exit: ; preds = %._crit_edge.i, %bb.c, %bb.f
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.f ], [ null, %bb.c ], [ null, %._crit_edge.i ], !dbg !24425
  ret ptr %.sroa.0.0, !dbg !24426
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCseeLknQCOKOd_13polars_python10exceptionsNtB6_19ColumnNotFoundError7new_errNtNtCsgZ49sUHp3tW_5alloc6string6StringEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !24427 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24446), !dbg !24450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24451, !noalias !24447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !24451, !noalias !24446
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !24452, !noalias !24448
  %i.b = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 513) 24, i64 noundef range(i64 1, 129) 8) #50, !dbg !24453, !noalias !24448 ; 3 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !24454
  br i1 %i.c, label %bb.b, label %_RINvMs_NtCsbm5zPlkZccl_4pyo33errNtB5_5PyErr3newNtNtCseeLknQCOKOd_13polars_python10exceptions19ColumnNotFoundErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringEBN_.exit, !dbg !24455, !prof !5167

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #54
          to label %.noexc.i unwind label %bb.c, !dbg !24456, !noalias !24447

.noexc.i:                                         ; preds = %bb.b
  unreachable, !dbg !24456

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtBO_5PyErr3newNtNtCseeLknQCOKOd_13polars_python10exceptions19ColumnNotFoundErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringE0EB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #56
          to label %bb.e unwind label %bb.d, !dbg !24457, !noalias !24447

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !24458, !noalias !24447
  unreachable, !dbg !24458

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d, !dbg !24458

_RINvMs_NtCsbm5zPlkZccl_4pyo33errNtB5_5PyErr3newNtNtCseeLknQCOKOd_13polars_python10exceptions19ColumnNotFoundErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringEBN_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !24459, !noalias !24446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24460, !noalias !24447
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24461
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 16, i1 false), !dbg !24461, !alias.scope !24446, !noalias !24449
  store i64 1, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !dbg !24461, !alias.scope !24446, !noalias !24449
  %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24461
  store ptr null, ptr %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !24461, !alias.scope !24446, !noalias !24449
  %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24461
  store ptr %i.b, ptr %.sroa.03.sroa.5.sroa.5.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !24461, !alias.scope !24446, !noalias !24449
  %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !24461
  store ptr @18, ptr %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !24461, !alias.scope !24446, !noalias !24449
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !24461
  store i32 3, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !24461, !alias.scope !24446, !noalias !24449
  ret void, !dbg !24462
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCsbm5zPlkZccl_4pyo35types8datetimeNtB6_8PyTzInfo8timezoneINtNtBa_8instance5BoundNtNtB8_6string8PyStringEECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24463 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  invoke void @_RNvMs0_NtNtCsbm5zPlkZccl_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtNtNtB9_5types10typeobject6PyTypeEE6importCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 8 @_RNvNvMs3_NtNtCsbm5zPlkZccl_4pyo35types8datetimeNtB7_8PyTzInfo8timezone9ZONE_INFO, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 8)
          to label %bb.b unwind label %bb.k, !dbg !24505

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24492
  %i.d = load i64, ptr %i.c, align 8, !dbg !24506, !range !4932, !noundef !4872
  %i.e = trunc nuw i64 %i.d to i1, !dbg !24507
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !24508
  %.sroa.013.0.copyload = load ptr, ptr %i.f, align 8, !dbg !24508 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !24507

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !24509
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.215.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false), !dbg !24509
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24510
  store ptr %.sroa.013.0.copyload, ptr %i.g, align 8, !dbg !24510
  store i64 1, ptr %0, align 8, !dbg !24510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24512
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #50, !dbg !24513
  br label %bb.j, !dbg !24514

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %.sroa.013.0.copyload, align 8, !dbg !24515, !nonnull !4872, !noundef !4872
  call void @_RNvXsj_NtNtCsbm5zPlkZccl_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_6string8PyStringEENtNtB9_4call10PyCallArgs15call_positionalCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.h), !dbg !24516
  %i.i = load i64, ptr %i.a, align 8, !dbg !24517, !range !4932, !noundef !4872
  %i.j = trunc nuw i64 %i.i to i1, !dbg !24518
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24519
  %.sroa.018.0.copyload = load ptr, ptr %i.k, align 8, !dbg !24519 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f, !dbg !24518

bb.e:                                             ; preds = %bb.d
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24520
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.221.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.519.0..sroa_idx, i64 56, i1 false), !dbg !24520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24511
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24521
  store ptr %.sroa.018.0.copyload, ptr %i.l, align 8, !dbg !24521
  store i64 1, ptr %0, align 8, !dbg !24521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24512
  br label %bb.j, !dbg !24514

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24511
  call fastcc void @_RINvNvMs_NtCsbm5zPlkZccl_4pyo38instanceINtB7_5BoundpE9cast_into5innerNtNtNtB9_5types8datetime8PyTzInfoECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %.sroa.018.0.copyload), !dbg !24522
  %i.m = load ptr, ptr %i.b, align 8, !dbg !24523, !noundef !4872 ; 2 uses
  %.not = icmp eq ptr %i.m, null, !dbg !24523
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24524
  %i.o = load ptr, ptr %i.n, align 8, !dbg !24524, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24524 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g, !dbg !24525

bb.g:                                             ; preds = %bb.f
  call void @_RNvXs4_NtNtCsbm5zPlkZccl_4pyo33err10cast_errorNtB7_5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13CastIntoErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o), !dbg !24526
  br label %bb.i, !dbg !24527

bb.h:                                             ; preds = %bb.f
  store ptr %i.o, ptr %i.p, align 8, !dbg !24528
  br label %bb.i, !dbg !24529

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi i64 [ 0, %bb.h ], [ 1, %bb.g ], !dbg !24524
  store i64 %.sink, ptr %0, align 8, !dbg !24524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24512
  br label %bb.j, !dbg !24514

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.c
  ret void, !dbg !24530

bb.k:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %1) #50, !dbg !24531
  resume { ptr, i32 } %lpad.thr_comm.split-lp, !dbg !24532
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs8_NtCseeLknQCOKOd_13polars_python10exceptionsNtB6_12ComputeError7new_errNtNtCsgZ49sUHp3tW_5alloc6string6StringEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !24533 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24552), !dbg !24556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24557, !noalias !24553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !24557, !noalias !24552
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !24558, !noalias !24554
  %i.b = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 513) 24, i64 noundef range(i64 1, 129) 8) #50, !dbg !24559, !noalias !24554 ; 3 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !24560
  br i1 %i.c, label %bb.b, label %_RINvMs_NtCsbm5zPlkZccl_4pyo33errNtB5_5PyErr3newNtNtCseeLknQCOKOd_13polars_python10exceptions12ComputeErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringEBN_.exit, !dbg !24561, !prof !5167

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #54
          to label %.noexc.i unwind label %bb.c, !dbg !24562, !noalias !24553

.noexc.i:                                         ; preds = %bb.b
  unreachable, !dbg !24562

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtBO_5PyErr3newNtNtCseeLknQCOKOd_13polars_python10exceptions12ComputeErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringE0EB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #56
          to label %bb.e unwind label %bb.d, !dbg !24563, !noalias !24553

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !24564, !noalias !24553
  unreachable, !dbg !24564
end_hunk_2
