Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_py.yara_x_py.f3424c54d396006c-cgu.07?download=true
inline.NumInlined: 695
inline.NumDeleted: 378
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvCskSRqRFwaW70_9yara_x_py12dict_to_json0INtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEB1a_:bb.a
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs3_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECskSRqRFwaW70_9yara_x_py(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsjq8JwqGjWmS_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBV_5types6string8PyStringEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B2G_NtB2G_8Interned3get0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidECskSRqRFwaW70_9yara_x_py(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvXs39_CskSRqRFwaW70_9yara_x_pyNtB1f_12CompileErrorNtNtB6_11type_object10PyTypeInfo15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB1f_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsjq8JwqGjWmS_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvXs39_CskSRqRFwaW70_9yara_x_pyNtB3E_12CompileErrorNtNtBV_11type_object10PyTypeInfo15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB3E_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvXs3e_CskSRqRFwaW70_9yara_x_pyNtB1f_12TimeoutErrorNtNtB6_11type_object10PyTypeInfo15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB1f_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsjq8JwqGjWmS_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvXs3e_CskSRqRFwaW70_9yara_x_pyNtB3E_12TimeoutErrorNtNtBV_11type_object10PyTypeInfo15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB3E_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvXs3j_CskSRqRFwaW70_9yara_x_pyNtB1f_9ScanErrorNtNtB6_11type_object10PyTypeInfo15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB1f_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsjq8JwqGjWmS_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvXs3j_CskSRqRFwaW70_9yara_x_pyNtB3E_9ScanErrorNtNtBV_11type_object10PyTypeInfo15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB3E_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2_INtB2_10PyOnceLockINtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEE6import0B1D_NtNtB6_3err5PyErrECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsjq8JwqGjWmS_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2m_INtB2m_10PyOnceLockBQ_E6import0BQ_NtNtBV_3err5PyErrE0B3Y_ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvNtCskSRqRFwaW70_9yara_x_py6consts12text_io_base0INtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyENtNtB6_3err5PyErrEB1g_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsjq8JwqGjWmS_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBV_5types3any5PyAnyEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvNtCskSRqRFwaW70_9yara_x_py6consts12text_io_base0BQ_NtNtBV_3err5PyErrE0B3Y_EB3b_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvXsR_CskSRqRFwaW70_9yara_x_pyNtB1i_17IgnoredRuleReasonNtNtB6_10conversion12IntoPyObject13into_pyobject0INtNtB6_8instance2PyB1G_ENtNtB6_3err5PyErrEB1i_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i8 noundef range(i8 0, 3) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsjq8JwqGjWmS_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %3, ptr %i.g, align 8
  call void @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvXsR_B1s_B1q_NtNtBV_10conversion12IntoPyObject13into_pyobject0BQ_NtNtBV_3err5PyErrE0B4v_EB1s_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsjq8JwqGjWmS_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvXse_CskSRqRFwaW70_9yara_x_pyNtB1i_8MetaTypeNtNtB6_10conversion12IntoPyObject13into_pyobject0INtNtB6_8instance2PyB1G_ENtNtB6_3err5PyErrEB1i_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsjq8JwqGjWmS_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.f, align 8
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.g, align 8
  call void @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvXse_B1s_B1q_NtNtBV_10conversion12IntoPyObject13into_pyobject0BQ_NtNtBV_3err5PyErrE0B4l_EB1s_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYBW_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 88686269585142076) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i81 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i86 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cj, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ch, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB13_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit
  %.sroa.021.0 = phi i8 [ %i.ba, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB13_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB13_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread84, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV7reverseCskSRqRFwaW70_9yara_x_py.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.q = tail call noundef i8 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto4jsonNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %i.n), !noalias !718 ; 2 uses
  %.not.i.i39 = icmp eq i8 %i.q, -2
  %i.r = icmp sgt i8 %i.q, -1
  %.sroa.0.0.i.i40.not97 = or i1 %.not.i.i39, %i.r ; 2 uses
  %.not68 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %.sroa.0.0.i.i40.not97, label %.preheader49, label %.preheader

.preheader49:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread84, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.sroa.01.0.i.i51 = phi i64 [ %i.x, %bb.l ], [ 2, %.preheader49 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %.sroa.01.0.i.i51
  %i.t = getelementptr [112 x i8], ptr %i.n, i64 %.sroa.01.0.i.i51
  %i.u = getelementptr i8, ptr %i.t, i64 -112
  %i.v = tail call noundef i8 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto4jsonNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull align 8 %i.s, ptr noundef nonnull align 8 %i.u), !noalias !718 ; 2 uses
  %.not.i.i37 = icmp ne i8 %i.v, -2
  %i.w = icmp slt i8 %i.v, 0
  %.sroa.0.0.i.i38 = and i1 %.not.i.i37, %i.w
  br i1 %.sroa.0.0.i.i38, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i54 = phi i64 [ %i.ad, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %.sroa.01.1.i.i54
  %i.z = getelementptr [112 x i8], ptr %i.n, i64 %.sroa.01.1.i.i54
  %i.aa = getelementptr i8, ptr %i.z, i64 -112
  %i.ab = tail call noundef i8 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto4jsonNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.aa), !noalias !718 ; 2 uses
  %.not.i.i35 = icmp ne i8 %i.ab, -2
  %i.ac = icmp slt i8 %i.ab, 0
  %.sroa.0.0.i.i36 = and i1 %.not.i.i35, %i.ac
  br i1 %.sroa.0.0.i.i36, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.ad = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond71.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i, label %.lr.ph55

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %bb.m, %.lr.ph55, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.m, %bb.l ], [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.m, %bb.m ] ; 5 uses
  %i.ae = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ae)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread84: ; preds = %.preheader
  br i1 %.not5.i86, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i81, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV7reverseCskSRqRFwaW70_9yara_x_py.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i
  %i.af = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  %or.cond = or i1 %.sroa.0.0.i.i40.not97, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV7reverseCskSRqRFwaW70_9yara_x_py.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 88686269585142076) i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.m, i64 %.sroa.01.0)
  %i.ag = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB13_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 88686269585142076) i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.m, i64 16) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB15_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !716
  %i.ah = shl nuw nsw i64 %..i33, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB13_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV7reverseCskSRqRFwaW70_9yara_x_py.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskIStwd7HrDO_12yara_x_proto4json2KVECskSRqRFwaW70_9yara_x_py.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread ], [ %.sroa.0.0.i.i828993, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskIStwd7HrDO_12yara_x_proto4json2KVECskSRqRFwaW70_9yara_x_py.exit.i.i ]
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB13_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread84
  %i.al = phi i64 [ %i.af, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread84 ]
  %.sroa.0.0.i.i828993 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB12_NtNtB8_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit.i.thread84 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %.sroa.0.0.i.i828993
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskIStwd7HrDO_12yara_x_proto4json2KVECskSRqRFwaW70_9yara_x_py.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ar, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskIStwd7HrDO_12yara_x_proto4json2KVECskSRqRFwaW70_9yara_x_py.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.an = xor i64 %.sroa.0.017.i.i, -1
  %i.ao = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.ap = getelementptr [112 x i8], ptr %i.am, i64 %i.an
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskSRqRFwaW70_9yara_x_py(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 14)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskIStwd7HrDO_12yara_x_proto4json2KVECskSRqRFwaW70_9yara_x_py.exit.i.i unwind label %bb.q, !noalias !718

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24, !noalias !718
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCskIStwd7HrDO_12yara_x_proto4json2KVECskSRqRFwaW70_9yara_x_py.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ar = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV7reverseCskSRqRFwaW70_9yara_x_py.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB13_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV7reverseCskSRqRFwaW70_9yara_x_py.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ak, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV7reverseCskSRqRFwaW70_9yara_x_py.exit ], [ %i.ai, %bb.p ], [ %i.ag, %bb.o ] ; 2 uses
  %i.as = lshr i64 %.sroa.023.0, 1
  %i.at = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.au = sub nsw i64 %factor, %i.as
  %i.av = add nuw nsw i64 %i.at, %factor
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i8
  br label %bb.g

.lr.ph61:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit
  %.sroa.02.160 = phi i64 [ %i.bb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bb = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bd, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit, %.lr.ph61, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %.lr.ph61 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bf, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph61
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !5 ; 3 uses
  %i.bi = lshr i64 %i.bh, 1                       ; 5 uses
  %i.bj = lshr i64 %.sroa.023.159, 1              ; 3 uses
  %i.bk = add nuw i64 %i.bi, %i.bj                ; 5 uses
  %i.bl = sub i64 %.sroa.09.0, %i.bk
  %i.bm = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.bl ; 3 uses
  %i.bn = icmp samesign ugt i64 %i.bk, %3
  %i.bo = trunc i64 %.sroa.023.159 to i1
  %i.bp = or i64 %i.bh, %.sroa.023.159
  %i.bq = trunc i64 %i.bp to i1
  %or.cond3.i = or i1 %i.bn, %i.bq
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = trunc i64 %i.bh to i1
  br i1 %i.br, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bs = shl nuw nsw i64 %i.bk, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bo, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bt = or i64 %i.bi, 1
  %i.bu = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bt, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = xor i32 %i.bw, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB15_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 %i.bm, i64 noundef range(i64 0, 82351536043346213) %i.bi, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.bx, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !717
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw [112 x i8], ptr %i.bm, i64 %i.bi
  %i.bz = or i64 %i.bj, 1
  %i.ca = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB15_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 82351536043346213) %i.bj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.cd, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !717
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYBX_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 %i.bm, i64 noundef range(i64 0, 82351536043346213) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i64 noundef %i.bi, ptr noalias nofree noundef nonnull %5)
  %i.ce = shl nuw nsw i64 %i.bk, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB16_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.x ], [ %i.bs, %bb.t ] ; 2 uses
  %i.cg = icmp ugt i64 %i.bb, 1
  br i1 %i.cg, label %.lr.ph61, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ch = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ci = lshr i64 %.sroa.018.0, 1
  %i.cj = add nuw i64 %i.ci, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ck = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ck, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cl = or i64 %1, 1
  %i.cm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB15_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %i.cp, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !717
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCskIStwd7HrDO_12yara_x_proto4json2KVNvYB15_NtNtBa_3cmp10PartialOrd2ltECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 82351536043346213) %3, i32 noundef %4, ptr noundef align 8 %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17
  br i1 %i.a, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph97 = phi ptr [ %i.cm, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph96 = phi i64 [ %i.bx, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph95 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph94 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.ph97 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph94, null
  %i.c = icmp eq i32 %.sroa.025.0.ph95, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph222

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV12split_at_mutCskSRqRFwaW70_9yara_x_py.exit
  %i.d = icmp eq i32 %i.f, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph222

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV12split_at_mutCskSRqRFwaW70_9yara_x_py.exit, %bb.a
  %.sroa.0.0.ph.lcssa88 = phi ptr [ %.sroa.0.0.ph97, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV12split_at_mutCskSRqRFwaW70_9yara_x_py.exit ], [ %0, %bb.a ], [ %i.cm, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCskIStwd7HrDO_12yara_x_proto4json2KV12split_at_mutCskSRqRFwaW70_9yara_x_py.exit ], [ %1, %bb.a ], [ %i.bx, %.outer ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBW_5rules14FilesizeBoundsEE3newCskSRqRFwaW70_9yara_x_py
declare hidden void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBW_5rules14FilesizeBoundsEE3newCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBW_5rules16HeaderConstraintEE3newCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBY_3vec3VechEEE3newCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEE3newCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs7gfv9tzbXmh_6yara_x8compiler10RegexSetIdECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRReECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRRShECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRReECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRReECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE3get0jECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE9put_value0jECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEENCNvMs9_BZ_BW_3new0ECskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEE8grow_oneB1I_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEE8grow_oneB1K_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCslAmxFS6h4Nz_8intaglio8internal8InternedShEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCslAmxFS6h4Nz_8intaglio8internal8InternedeEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCs907JfTDu8Xv_8indexmap5inner8get_hashNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE0ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler10RegexSetIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBR_7RegexIdEEE16with_capacity_inCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBR_5rules14FilesizeBoundsEE16with_capacity_inCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBR_5rules16HeaderConstraintEE16with_capacity_inCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRShNtCslAmxFS6h4Nz_8intaglio6SymbolEE16with_capacity_inCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTReNtCslAmxFS6h4Nz_8intaglio6SymbolEE16with_capacity_inCskSRqRFwaW70_9yara_x_py(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskSRqRFwaW70_9yara_x_py(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtNtCsg2CeFYmfPbl_8protobuf7reflect7dynamic3mapNtB5_10DynamicMapNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_3ops5range5RangemENtB6_5Debug3fmtCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRuNtB6_5Debug3fmtCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs6i8zKcEiGNL_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCseaEfh1P8mwW_5gimli4read6abbrev13AbbreviationsE9drop_slowCs5lEgW3tfVqv_6walrus(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs6i8zKcEiGNL_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6i8zKcEiGNL_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7gfv9tzbXmh_6yara_x8compiler10RegexSetIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBX_7RegexIdEEE9next_implKb0_ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBX_5rules14FilesizeBoundsEE9next_implKb0_ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBX_5rules16HeaderConstraintEE9next_implKb0_ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1u_2eqB3_E0ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringE9drop_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types3map3MapE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types5array5ArrayE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -2, 2) i8 @_RNvXs0_NtCskIStwd7HrDO_12yara_x_proto4jsonNtB5_2KVNtNtCskKLDkoKarTP_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noreturn }
attributes #23 = { noinline noreturn }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { cold }
attributes #26 = { nounwind }
attributes #27 = { inlinehint }
attributes #28 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", i32 2146410443, i32 1073205}
!9 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!10 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!11 = !{i8 0, i8 10}
!12 = !{!"address", !"read_provenance"}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{i64 0, i64 -9223372036854775808}
!15 = !{i64 1, i64 536870913}
!16 = !{i64 -1, i64 -9223372036854775808}
!17 = !{i64 8}
!18 = !{i8 0, i8 2}
!19 = !{i8 -1, i8 82}
!20 = !{i64 0, i64 3}
!21 = !{i8 -1, i8 18}
!22 = !{i64 -1, i64 9}
!23 = !{i64 0, i64 -9223372036854775804}
!24 = distinct !{!24, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB34_10PyOnceLockBJ_E15get_or_try_initNCNvXsR_B1l_B1j_NtNtBO_10conversion12IntoPyObject13into_pyobject0B2G_E0NcNtB2h_2Ok0EB1l_"}
!25 = distinct !{!25, !24, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB34_10PyOnceLockBJ_E15get_or_try_initNCNvXsR_B1l_B1j_NtNtBO_10conversion12IntoPyObject13into_pyobject0B2G_E0NcNtB2h_2Ok0EB1l_: argument 0"}
!26 = distinct !{!26, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceB1l_"}
!27 = distinct !{!27, !26, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceB1l_: argument 0"}
!28 = distinct !{!28, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonENtNtBL_3err5PyErrE2Ok0B1i_"}
!29 = distinct !{!29, !28, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonENtNtBL_3err5PyErrE2Ok0B1i_: argument 0"}
!30 = distinct !{!30, !24, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB34_10PyOnceLockBJ_E15get_or_try_initNCNvXsR_B1l_B1j_NtNtBO_10conversion12IntoPyObject13into_pyobject0B2G_E0NcNtB2h_2Ok0EB1l_: argument 2"}
!31 = distinct !{!31, !24, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB34_10PyOnceLockBJ_E15get_or_try_initNCNvXsR_B1l_B1j_NtNtBO_10conversion12IntoPyObject13into_pyobject0B2G_E0NcNtB2h_2Ok0EB1l_: argument 1"}
!32 = distinct !{!32, !26, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceB1l_: argument 1"}
!33 = distinct !{!33, !28, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonENtNtBL_3err5PyErrE2Ok0B1i_: argument 1"}
!34 = distinct !{!34, !"_RNCINvMNtNtCsjq8JwqGjWmS_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEE15get_or_try_initNCNvXsR_B1l_B1j_NtNtB9_10conversion12IntoPyObject13into_pyobject0NtNtB9_3err5PyErrE0B1l_"}
!35 = distinct !{!35, !34, !"_RNCINvMNtNtCsjq8JwqGjWmS_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEE15get_or_try_initNCNvXsR_B1l_B1j_NtNtB9_10conversion12IntoPyObject13into_pyobject0NtNtB9_3err5PyErrE0B1l_: argument 1"}
!36 = !{!29, !27, !25}
!37 = !{!33, !32, !31, !30}
!38 = !{!35, !31, !30}
!39 = distinct !{!39, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2U_10PyOnceLockBJ_E15get_or_try_initNCNvXse_B1l_B1j_NtNtBO_10conversion12IntoPyObject13into_pyobject0B2w_E0NcNtB27_2Ok0EB1l_"}
!40 = distinct !{!40, !39, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2U_10PyOnceLockBJ_E15get_or_try_initNCNvXse_B1l_B1j_NtNtBO_10conversion12IntoPyObject13into_pyobject0B2w_E0NcNtB27_2Ok0EB1l_: argument 0"}
!41 = distinct !{!41, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceB1l_"}
!42 = distinct !{!42, !41, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceB1l_: argument 0"}
!43 = distinct !{!43, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeENtNtBL_3err5PyErrE2Ok0B1i_"}
!44 = distinct !{!44, !43, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeENtNtBL_3err5PyErrE2Ok0B1i_: argument 0"}
!45 = distinct !{!45, !39, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2U_10PyOnceLockBJ_E15get_or_try_initNCNvXse_B1l_B1j_NtNtBO_10conversion12IntoPyObject13into_pyobject0B2w_E0NcNtB27_2Ok0EB1l_: argument 2"}
!46 = distinct !{!46, !39, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2U_10PyOnceLockBJ_E15get_or_try_initNCNvXse_B1l_B1j_NtNtBO_10conversion12IntoPyObject13into_pyobject0B2w_E0NcNtB27_2Ok0EB1l_: argument 1"}
!47 = distinct !{!47, !41, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceB1l_: argument 1"}
!48 = distinct !{!48, !43, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeENtNtBL_3err5PyErrE2Ok0B1i_: argument 1"}
!49 = distinct !{!49, !"_RNCINvMNtNtCsjq8JwqGjWmS_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeEE15get_or_try_initNCNvXse_B1l_B1j_NtNtB9_10conversion12IntoPyObject13into_pyobject0NtNtB9_3err5PyErrE0B1l_"}
!50 = distinct !{!50, !49, !"_RNCINvMNtNtCsjq8JwqGjWmS_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtCskSRqRFwaW70_9yara_x_py8MetaTypeEE15get_or_try_initNCNvXse_B1l_B1j_NtNtB9_10conversion12IntoPyObject13into_pyobject0NtNtB9_3err5PyErrE0B1l_: argument 1"}
!51 = !{!44, !42, !40}
!52 = !{!48, !47, !46, !45}
!53 = !{!50, !46, !45}
!54 = distinct !{!54, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2K_10PyOnceLockBJ_E15get_or_try_initNCNvNtCskSRqRFwaW70_9yara_x_py6consts12text_io_base0B2m_E0NcNtB1X_2Ok0EB3Q_"}
!55 = distinct !{!55, !54, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2K_10PyOnceLockBJ_E15get_or_try_initNCNvNtCskSRqRFwaW70_9yara_x_py6consts12text_io_base0B2m_E0NcNtB1X_2Ok0EB3Q_: argument 0"}
!56 = distinct !{!56, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceCskSRqRFwaW70_9yara_x_py"}
!57 = distinct !{!57, !56, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceCskSRqRFwaW70_9yara_x_py: argument 0"}
!58 = distinct !{!58, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyENtNtBL_3err5PyErrE2Ok0CskSRqRFwaW70_9yara_x_py"}
!59 = distinct !{!59, !58, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyENtNtBL_3err5PyErrE2Ok0CskSRqRFwaW70_9yara_x_py: argument 0"}
!60 = distinct !{!60, !54, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2K_10PyOnceLockBJ_E15get_or_try_initNCNvNtCskSRqRFwaW70_9yara_x_py6consts12text_io_base0B2m_E0NcNtB1X_2Ok0EB3Q_: argument 2"}
!61 = distinct !{!61, !54, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2K_10PyOnceLockBJ_E15get_or_try_initNCNvNtCskSRqRFwaW70_9yara_x_py6consts12text_io_base0B2m_E0NcNtB1X_2Ok0EB3Q_: argument 1"}
!62 = distinct !{!62, !56, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceCskSRqRFwaW70_9yara_x_py: argument 1"}
!63 = distinct !{!63, !58, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsjq8JwqGjWmS_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyENtNtBL_3err5PyErrE2Ok0CskSRqRFwaW70_9yara_x_py: argument 1"}
!64 = !{!59, !57, !55}
!65 = !{!63, !62, !61, !60}
!66 = !{!61, !60}
!67 = distinct !{!67, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCskSRqRFwaW70_9yara_x_py"}
!68 = distinct !{!68, !67, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCskSRqRFwaW70_9yara_x_py: argument 0"}
!69 = distinct !{!69, !"_RNvXsK_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert4FromReE4from"}
!70 = distinct !{!70, !69, !"_RNvXsK_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert4FromReE4from: argument 0"}
!71 = distinct !{!71, !67, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoNtNtCsexYYUdYSQU6_5alloc6string6StringE4intoCskSRqRFwaW70_9yara_x_py: argument 1"}
!72 = distinct !{!72, !69, !"_RNvXsK_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert4FromReE4from: argument 1"}
!73 = distinct !{!73, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskSRqRFwaW70_9yara_x_py"}
!74 = distinct !{!74, !73, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskSRqRFwaW70_9yara_x_py: argument 1"}
!75 = distinct !{!75, !73, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskSRqRFwaW70_9yara_x_py: argument 0"}
!76 = distinct !{!76, !"_RINvMNtCskKLDkoKarTP_4core3stre4findcECskSRqRFwaW70_9yara_x_py"}
!77 = distinct !{!77, !76, !"_RINvMNtCskKLDkoKarTP_4core3stre4findcECskSRqRFwaW70_9yara_x_py: argument 0"}
!78 = distinct !{!78, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!79 = distinct !{!79, !78, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!80 = distinct !{!80, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!81 = distinct !{!81, !80, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!82 = distinct !{!82, !80, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!83 = distinct !{!83, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py"}
!84 = distinct !{!84, !83, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py: argument 1"}
!85 = distinct !{!85, !83, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py: argument 3"}
!86 = distinct !{!86, !83, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py: argument 0"}
!87 = distinct !{!87, !83, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py: argument 2"}
!88 = distinct !{!88, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py"}
!89 = distinct !{!89, !88, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py: argument 1"}
!90 = distinct !{!90, !88, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py: argument 2"}
!91 = distinct !{!91, !88, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py: argument 3"}
!92 = distinct !{!92, !88, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE11insert_fullCskSRqRFwaW70_9yara_x_py: argument 0"}
!93 = distinct !{!93, !"_RINvMs_NtCs9QmT8tHpLPH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1L_E0NCINvB14_8get_hashB1L_B2n_E0ECskSRqRFwaW70_9yara_x_py"}
!94 = distinct !{!94, !93, !"_RINvMs_NtCs9QmT8tHpLPH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1L_E0NCINvB14_8get_hashB1L_B2n_E0ECskSRqRFwaW70_9yara_x_py: argument 1"}
!95 = distinct !{!95, !"_RINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB24_E0NCINvB1n_8get_hashB24_B2G_E0ECskSRqRFwaW70_9yara_x_py"}
!96 = distinct !{!96, !95, !"_RINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB24_E0NCINvB1n_8get_hashB24_B2G_E0ECskSRqRFwaW70_9yara_x_py: argument 0"}
!97 = distinct !{!97, !93, !"_RINvMs_NtCs9QmT8tHpLPH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1L_E0NCINvB14_8get_hashB1L_B2n_E0ECskSRqRFwaW70_9yara_x_py: argument 3"}
!98 = distinct !{!98, !93, !"_RINvMs_NtCs9QmT8tHpLPH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1L_E0NCINvB14_8get_hashB1L_B2n_E0ECskSRqRFwaW70_9yara_x_py: argument 2"}
!99 = distinct !{!99, !93, !"_RINvMs_NtCs9QmT8tHpLPH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1L_E0NCINvB14_8get_hashB1L_B2n_E0ECskSRqRFwaW70_9yara_x_py: argument 0"}
!100 = distinct !{!100, !95, !"_RINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB24_E0NCINvB1n_8get_hashB24_B2G_E0ECskSRqRFwaW70_9yara_x_py: argument 2"}
!101 = distinct !{!101, !95, !"_RINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB24_E0NCINvB1n_8get_hashB24_B2G_E0ECskSRqRFwaW70_9yara_x_py: argument 1"}
!102 = distinct !{!102, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!103 = distinct !{!103, !102, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!104 = distinct !{!104, !"_RNCINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CskSRqRFwaW70_9yara_x_py"}
!105 = distinct !{!105, !104, !"_RNCINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CskSRqRFwaW70_9yara_x_py: argument 0"}
!106 = distinct !{!106, !"_RNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldBL_E0CskSRqRFwaW70_9yara_x_py"}
!107 = distinct !{!107, !106, !"_RNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldBL_E0CskSRqRFwaW70_9yara_x_py: argument 0"}
!108 = distinct !{!108, !"_RNvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCskSRqRFwaW70_9yara_x_py"}
!109 = distinct !{!109, !108, !"_RNvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCskSRqRFwaW70_9yara_x_py: argument 0"}
!110 = distinct !{!110, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!111 = distinct !{!111, !110, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!112 = distinct !{!112, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE5entryCskSRqRFwaW70_9yara_x_py"}
!113 = distinct !{!113, !112, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE5entryCskSRqRFwaW70_9yara_x_py: argument 0"}
!114 = distinct !{!114, !112, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE5entryCskSRqRFwaW70_9yara_x_py: argument 1"}
!115 = distinct !{!115, !112, !"_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE5entryCskSRqRFwaW70_9yara_x_py: argument 2"}
!116 = distinct !{!116, !"_RNvMNtNtCs907JfTDu8Xv_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE3newCskSRqRFwaW70_9yara_x_py"}
!117 = distinct !{!117, !116, !"_RNvMNtNtCs907JfTDu8Xv_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE3newCskSRqRFwaW70_9yara_x_py: argument 1"}
!118 = distinct !{!118, !116, !"_RNvMNtNtCs907JfTDu8Xv_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE3newCskSRqRFwaW70_9yara_x_py: argument 2"}
!119 = distinct !{!119, !116, !"_RNvMNtNtCs907JfTDu8Xv_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE3newCskSRqRFwaW70_9yara_x_py: argument 0"}
!120 = distinct !{!120, !"_RINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1I_E0ECskSRqRFwaW70_9yara_x_py"}
!121 = distinct !{!121, !120, !"_RINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1I_E0ECskSRqRFwaW70_9yara_x_py: argument 0"}
!122 = distinct !{!122, !"_RNvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!123 = distinct !{!123, !122, !"_RNvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!124 = distinct !{!124, !120, !"_RINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1I_E0ECskSRqRFwaW70_9yara_x_py: argument 1"}
!125 = distinct !{!125, !122, !"_RNvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!126 = distinct !{!126, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!127 = distinct !{!127, !126, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!128 = distinct !{!128, !"_RNCINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1K_E0E0CskSRqRFwaW70_9yara_x_py"}
!129 = distinct !{!129, !128, !"_RNCINvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldB1K_E0E0CskSRqRFwaW70_9yara_x_py: argument 0"}
!130 = distinct !{!130, !"_RNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldBL_E0CskSRqRFwaW70_9yara_x_py"}
!131 = distinct !{!131, !130, !"_RNCINvNtCs907JfTDu8Xv_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldBL_E0CskSRqRFwaW70_9yara_x_py: argument 0"}
!132 = distinct !{!132, !"_RINvMNtNtCs907JfTDu8Xv_8indexmap3map5entryINtB3_5EntryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE14or_insert_withNCINvMs0_B1u_NtB1u_6Struct9add_fieldReE0ECskSRqRFwaW70_9yara_x_py"}
!133 = distinct !{!133, !132, !"_RINvMNtNtCs907JfTDu8Xv_8indexmap3map5entryINtB3_5EntryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE14or_insert_withNCINvMs0_B1u_NtB1u_6Struct9add_fieldReE0ECskSRqRFwaW70_9yara_x_py: argument 0"}
!134 = distinct !{!134, !"_RNCINvMs0_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB8_6Struct9add_fieldReE0CskSRqRFwaW70_9yara_x_py"}
!135 = distinct !{!135, !134, !"_RNCINvMs0_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB8_6Struct9add_fieldReE0CskSRqRFwaW70_9yara_x_py: argument 0"}
!136 = distinct !{!136, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEE3newCskSRqRFwaW70_9yara_x_py"}
!137 = distinct !{!137, !136, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure6StructEE3newCskSRqRFwaW70_9yara_x_py: argument 0"}
!138 = distinct !{!138, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE13insert_uniqueCskSRqRFwaW70_9yara_x_py"}
!139 = distinct !{!139, !138, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE13insert_uniqueCskSRqRFwaW70_9yara_x_py: argument 0"}
!140 = distinct !{!140, !138, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE13insert_uniqueCskSRqRFwaW70_9yara_x_py: argument 2"}
!141 = distinct !{!141, !138, !"_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE13insert_uniqueCskSRqRFwaW70_9yara_x_py: argument 1"}
!142 = distinct !{!142, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!143 = distinct !{!143, !142, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!144 = distinct !{!144, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!145 = distinct !{!145, !144, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!146 = distinct !{!146, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!147 = distinct !{!147, !146, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!148 = !{!68}
!149 = !{!70}
!150 = !{!75, !74, !70, !72, !68, !71}
!151 = !{!75, !70, !68}
!152 = !{!70, !68}
!153 = !{!72, !71}
!154 = !{!79, !77}
!155 = !{!82, !81}
!156 = !{!77}
!157 = !{!"branch_weights", i32 1073205, i32 2146410443}
!158 = !{!84}
!159 = !{!86, !85}
!160 = !{!86, !84, !87, !85}
!161 = !{!86, !84, !85}
!162 = !{!86, !84, !87}
!163 = !{!89}
!164 = !{!90}
!165 = !{!89, !84}
!166 = !{!92, !90, !91, !86, !87, !85}
end_hunk_1
