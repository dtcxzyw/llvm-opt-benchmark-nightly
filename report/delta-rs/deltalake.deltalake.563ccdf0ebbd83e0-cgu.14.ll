inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method0ReECs7p2uQeJxui2_9deltalake:bb.a
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 3 uses
  %i.b = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = tail call noundef ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.b, ptr noundef null) #45 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error10DeltaErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableBV_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3289
  %i.e = tail call noundef nonnull ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw(), !noalias !3289 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #45, !noalias !3289
  store ptr %i.e, ptr %i.a, align 8, !noalias !3289
  %i.f = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errReNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
end_hunk_1
begin_hunk_2_@_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error19SchemaMismatchErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableBV_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3292
  %i.c = invoke noundef nonnull ptr @_RNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB5_19SchemaMismatchError15type_object_raw()
          to label %bb.b unwind label %bb.f, !noalias !3292 ; 3 uses

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #45, !noalias !3292
  store ptr %i.c, ptr %i.b, align 8, !noalias !3292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3292
end_hunk_2
begin_hunk_3_@_RNvNvMsP_Cs7p2uQeJxui2_9deltalakeNtNtB7_9__internal7MakeDef8make_def15___pyo3_pymodule:bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !9025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !9025
  %i.bg = call noundef nonnull ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.bg) #45
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 10, ptr noundef nonnull %i.bg)
  %i.bh = load i64, ptr %i.as, align 8, !range !11, !noalias !9025, !noundef !12
end_hunk_3
begin_hunk_4_@_RNvNvMsP_Cs7p2uQeJxui2_9deltalakeNtNtB7_9__internal7MakeDef8make_def15___pyo3_pymodule:bb.a
bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !9025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !9025
  %i.bl = call noundef nonnull ptr @_RNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB5_17CommitFailedError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.bl) #45
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef 17, ptr noundef nonnull %i.bl)
  %i.bm = load i64, ptr %i.ar, align 8, !range !11, !noalias !9025, !noundef !12
end_hunk_4
begin_hunk_5_@_RNvNvMsP_Cs7p2uQeJxui2_9deltalakeNtNtB7_9__internal7MakeDef8make_def15___pyo3_pymodule:bb.a
bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !9025
  %i.bq = call noundef nonnull ptr @_RNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB5_18DeltaProtocolError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.bq) #45
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef 18, ptr noundef nonnull %i.bq)
  %i.br = load i64, ptr %i.aq, align 8, !range !11, !noalias !9025, !noundef !12
end_hunk_5
begin_hunk_6_@_RNvNvMsP_Cs7p2uQeJxui2_9deltalakeNtNtB7_9__internal7MakeDef8make_def15___pyo3_pymodule:bb.a
bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !9025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !9025
  %i.bv = call noundef nonnull ptr @_RNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB5_18TableNotFoundError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.bv) #45
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @212, i64 noundef 18, ptr noundef nonnull %i.bv)
  %i.bw = load i64, ptr %i.ap, align 8, !range !11, !noalias !9025, !noundef !12
end_hunk_6
begin_hunk_7_@_RNvNvMsP_Cs7p2uQeJxui2_9deltalakeNtNtB7_9__internal7MakeDef8make_def15___pyo3_pymodule:bb.a
bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !9025
  %i.ca = call noundef nonnull ptr @_RNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB5_19SchemaMismatchError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.ca) #45
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 19, ptr noundef nonnull %i.ca)
  %i.cb = load i64, ptr %i.ao, align 8, !range !11, !noalias !9025, !noundef !12
end_hunk_7
