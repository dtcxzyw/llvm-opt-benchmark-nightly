inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions11PyTypeErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions11PyTypeErrorReE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3272
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3275
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !noalias !3275, !nonnull !12, !noundef !12 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #43, !noalias !3275
  store ptr %i.c, ptr %i.b, align 8, !noalias !3275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !3275

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %bb.d unwind label %bb.c, !noalias !3275

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !3275
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3275
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions12PyValueErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3278
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !noalias !3278, !nonnull !12, !noundef !12 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #43, !noalias !3278
  store ptr %i.e, ptr %i.a, align 8, !noalias !3278
  %i.f = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errReNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorReE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions12PyValueErrorReE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3278
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions13PySystemErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3281
  %i.e = load ptr, ptr @PyExc_SystemError, align 8, !noalias !3281, !nonnull !12, !noundef !12 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #43, !noalias !3281
  store ptr %i.e, ptr %i.a, align 8, !noalias !3281
  %i.f = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errReNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions13PySystemErrorReE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions13PySystemErrorReE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3281
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3284
  %i.c = load ptr, ptr @PyExc_RuntimeError, align 8, !noalias !3284, !nonnull !12, !noundef !12 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #43, !noalias !3284
  store ptr %i.c, ptr %i.b, align 8, !noalias !3284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !3284

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %bb.d unwind label %bb.c, !noalias !3284

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !3284
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3284
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtBf_10exceptions21PyNotImplementedErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3287
  %i.e = load ptr, ptr @PyExc_NotImplementedError, align 8, !noalias !3287, !nonnull !12, !noundef !12 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #43, !noalias !3287
  store ptr %i.e, ptr %i.a, align 8, !noalias !3287
  %i.f = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errReNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions21PyNotImplementedErrorReE0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtBa_10exceptions21PyNotImplementedErrorReE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3287
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error10DeltaErrorReE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableBV_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3290
  %i.e = tail call noundef nonnull ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw(), !noalias !3290 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.e) #43, !noalias !3290
  store ptr %i.e, ptr %i.a, align 8, !noalias !3290
  %i.f = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errReNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error10DeltaErrorReE0BQ_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error10DeltaErrorReE0BQ_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3290
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBd_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error19SchemaMismatchErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTNtNtBf_6marker6PythonEE9call_once6vtableBV_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3293
  %i.c = invoke noundef nonnull ptr @_RNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB5_19SchemaMismatchError15type_object_raw()
          to label %bb.b unwind label %bb.f, !noalias !3293 ; 3 uses

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_IncRef(ptr noundef nonnull %i.c) #43, !noalias !3293
  store ptr %i.c, ptr %i.b, align 8, !noalias !3293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.d = invoke noundef nonnull ptr @_RNvXs0_NtCsgbCypRs12E4_4pyo33errNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_14PyErrArguments9argumentsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error19SchemaMismatchErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0BQ_.exit unwind label %bb.c, !noalias !3293

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_NtCsgbCypRs12E4_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
          to label %bb.e unwind label %bb.d, !noalias !3293

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.f, %bb.c
  %.pn5.i = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %.pn5.i

bb.f:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #39
          to label %bb.e unwind label %bb.d

_RNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtB8_5PyErr3newNtNtCs7p2uQeJxui2_9deltalake5error19SchemaMismatchErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0BQ_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3293
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.d, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCs7p2uQeJxui2_9deltalake12scalar_to_py(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = load i64, ptr %1, align 16, !range !1260, !noundef !12 ; 2 uses
  %i.q = xor i64 %i.p, -9223372036854775808
  %i.r = icmp slt i64 %i.p, 0
  %i.s = select i1 %i.r, i64 %i.q, i64 16
  switch i64 %i.s, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
    i64 8, label %bb.c
    i64 9, label %bb.v
    i64 10, label %bb.d
    i64 11, label %bb.y
    i64 12, label %bb.z
    i64 13, label %bb.aa
    i64 14, label %bb.e
    i64 15, label %bb.f
    i64 16, label %bb.g
  ], !prof !3296

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4202.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @145, ptr noundef nonnull %i.m)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit unwind label %bb.q

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1)
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.t = load i64, ptr %i.k, align 8, !range !11, !noundef !12
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0219.0.copyload = load ptr, ptr %i.v, align 8 ; 2 uses
  br i1 %i.u, label %bb.w, label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.w = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types4dictNtB2_6PyDict3new() ; 5 uses
  store ptr %i.w, ptr %i.h, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !nonnull !12, !noundef !12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !12
  %i.ab = getelementptr inbounds nuw [96 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 16, !noundef !12
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %i.af
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ag)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 101 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #41
  unreachable

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types4dictNtB2_6PyDict3new() ; 5 uses
  store ptr %i.ah, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.al = load i64, ptr %i.ak, align 16, !noundef !12 ; 2 uses
  %.idx = mul nuw nsw i64 %i.al, 192
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  %.not342345 = icmp eq i64 %i.al, 0
  br i1 %.not342345, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val272 = load i32, ptr %i.ap, align 8, !noundef !12
  %i.aq = tail call noundef nonnull ptr @_RNvXsa_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numlNtNtBb_10conversion12IntoPyObject13into_pyobject(i32 noundef %.val272), !noalias !3297
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.thread, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit288, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.sroa.0139.0 = phi ptr [ %i.aq, %bb.h ], [ %i.at, %bb.j ], [ %i.av, %bb.k ], [ %i.ax, %bb.l ], [ %i.ba, %bb.m ], [ %i.bc, %bb.n ], [ %i.bf, %bb.o ], [ %i.bi, %bb.p ], [ %i.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit288 ], [ %i.bo, %bb.v ], [ %.sroa.0219.0.copyload, %bb.x ], [ %i.bs, %bb.y ], [ %i.bt, %bb.z ], [ @_Py_NoneStruct, %bb.aa ], [ %i.w, %.thread ], [ %i.ah, %._crit_edge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0139.0, ptr %i.ar, align 8
  store i64 0, ptr %0, align 8
  br label %bb.aw

bb.j:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val273 = load i64, ptr %i.as, align 8, !noundef !12
  %i.at = tail call noundef nonnull ptr @_RNvXsg_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numxNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef %.val273), !noalias !3300
  br label %bb.i

bb.k:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val274 = load i16, ptr %i.au, align 8, !noundef !12
  %i.av = tail call noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numsNtNtBb_10conversion12IntoPyObject13into_pyobject(i16 noundef %.val274), !noalias !3303
  br label %bb.i

bb.l:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val275 = load i8, ptr %i.aw, align 8, !noundef !12
  %i.ax = tail call noundef nonnull ptr @_RNvXs1_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numaNtNtBb_10conversion12IntoPyObject13into_pyobject(i8 noundef %.val275), !noalias !3306
  br label %bb.i

bb.m:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val276 = load float, ptr %i.ay, align 8, !noundef !12
  %i.az = fpext float %.val276 to double
  %i.ba = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.az), !noalias !3309
  br label %bb.i

bb.n:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val277 = load double, ptr %i.bb, align 8, !noundef !12
  %i.bc = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types5floatNtB2_7PyFloat3new(double noundef %.val277), !noalias !3312
  br label %bb.i

bb.o:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val278 = load ptr, ptr %i.bd, align 16, !nonnull !12, !noundef !12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val279 = load i64, ptr %i.be, align 8, !noundef !12
  %i.bf = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val278, i64 noundef %.val279), !noalias !3315
  br label %bb.i

bb.p:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val280 = load i8, ptr %i.bg, align 8, !range !14, !noundef !12
  %i.bh = trunc nuw i8 %.val280 to i1
  %_Py_TrueStruct._Py_FalseStruct.i.i.i = select i1 %i.bh, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
end_hunk_0
begin_hunk_1_@_RNvNvMsN_Cs7p2uQeJxui2_9deltalakeNtNtB7_29create_table_with_add_actions7MakeDef9__PYO3_DEF10trampoline:bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvMsO_Cs7p2uQeJxui2_9deltalakeNtNtB7_20convert_to_deltalake7MakeDef9__PYO3_DEF10trampoline(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvCs7p2uQeJxui2_9deltalake33___pyfunction_convert_to_deltalake, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.j, align 8
  %i.k = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNvMsP_Cs7p2uQeJxui2_9deltalakeNtNtB7_9__internal7MakeDef8make_def15___pyo3_pymodule(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
  %i.m = alloca [64 x i8], align 8                ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 6 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 6 uses
  %i.r = alloca [64 x i8], align 8                ; 6 uses
  %i.s = alloca [64 x i8], align 8                ; 6 uses
  %i.t = alloca [64 x i8], align 8                ; 6 uses
  %i.u = alloca [64 x i8], align 8                ; 6 uses
  %i.v = alloca [64 x i8], align 8                ; 6 uses
  %i.w = alloca [64 x i8], align 8                ; 7 uses
  %i.x = alloca [64 x i8], align 8                ; 7 uses
  %i.y = alloca [64 x i8], align 8                ; 7 uses
  %i.z = alloca [64 x i8], align 8                ; 7 uses
  %i.aa = alloca [64 x i8], align 8               ; 7 uses
  %i.ab = alloca [64 x i8], align 8               ; 7 uses
  %i.ac = alloca [64 x i8], align 8               ; 7 uses
  %i.ad = alloca [64 x i8], align 8               ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 7 uses
  %i.ag = alloca [64 x i8], align 8               ; 7 uses
  %i.ah = alloca [64 x i8], align 8               ; 7 uses
  %i.ai = alloca [64 x i8], align 8               ; 7 uses
  %i.aj = alloca [64 x i8], align 8               ; 7 uses
  %i.ak = alloca [64 x i8], align 8               ; 6 uses
  %i.al = alloca [96 x i8], align 8               ; 11 uses
  %i.am = alloca [96 x i8], align 8               ; 4 uses
  %i.an = alloca [168 x i8], align 8              ; 6 uses
  %i.ao = alloca [64 x i8], align 8               ; 6 uses
  %i.ap = alloca [64 x i8], align 8               ; 6 uses
  %i.aq = alloca [64 x i8], align 8               ; 6 uses
  %i.ar = alloca [64 x i8], align 8               ; 6 uses
  %i.as = alloca [64 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [88 x i8], align 8               ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9006)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 -9223372036854775808, ptr %i.au, align 8, !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.au, i64 88, i1 false), !noalias !9009
  call void @_RNvCs9rVkZwOUgsI_13deltalake_aws17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.g), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.au, i64 88, i1 false), !noalias !9009
  call void @_RNvCsa5Qem16B4JI_15deltalake_azure17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.f), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.au, i64 88, i1 false), !noalias !9009
  call void @_RNvCs62u4JVtZyFF_13deltalake_gcp17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.e), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.au, i64 88, i1 false), !noalias !9009
  call void @_RNvCs6KaIMXx2hZw_14deltalake_hdfs17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.d), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.au, i64 88, i1 false), !noalias !9009
  call void @_RNvCs7JU2D1aBbVY_15deltalake_mount17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.c), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.au, i64 88, i1 false), !noalias !9009
  call void @_RNvCsj34PGqTgg0L_16deltalake_lakefs17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.b), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9009
  call void @_RNvCsgO8S5jLFugx_23deltalake_catalog_unity17register_handlers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.au), !noalias !9011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9012
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !9025
  %i.av = load i64, ptr %i.a, align 8, !range !11, !noalias !9012, !noundef !12
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !62, !noalias !9012, !noundef !12 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.b, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.ba = load i64, ptr %i.az, align 8, !noalias !9012
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #40, !noalias !9026
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !9012, !nonnull !12, !noundef !12 ; 3 uses
  %i.bc = icmp ugt i64 %i.ay, 7
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9012
  store i64 3471770835259062640, ptr %i.bb, align 1, !noalias !9027
  store i64 %i.ay, ptr %i.at, align 8, !noalias !9009
  %.sroa.4171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.bb, ptr %.sroa.4171.0..sroa_idx.i, align 8, !noalias !9009
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 8, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !9009
  invoke void @_RNvCs14kWLkQVSKO_14deltalake_core19init_client_version(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef 8)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at) #39
          to label %common.resume.i unwind label %bb.ca

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume.i:                                  ; preds = %bb.q, %bb.e, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.be, %bb.e ], [ %i.cg, %bb.q ], [ %i.bd, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !9009
  %i.bg = call noundef nonnull ptr @_RNvMs3_NtCs7p2uQeJxui2_9deltalake5errorNtB5_10DeltaError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.bg) #43
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 10, ptr noundef nonnull %i.bg)
  %i.bh = load i64, ptr %i.as, align 8, !range !11, !noalias !9009, !noundef !12
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(56) %i.bj, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !9009
  %i.bl = call noundef nonnull ptr @_RNvMsl_NtCs7p2uQeJxui2_9deltalake5errorNtB5_17CommitFailedError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.bl) #43
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef 17, ptr noundef nonnull %i.bl)
  %i.bm = load i64, ptr %i.ar, align 8, !range !11, !noalias !9009, !noundef !12
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !9009
  %i.bq = call noundef nonnull ptr @_RNvMsf_NtCs7p2uQeJxui2_9deltalake5errorNtB5_18DeltaProtocolError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.bq) #43
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef 18, ptr noundef nonnull %i.bq)
  %i.br = load i64, ptr %i.aq, align 8, !range !11, !noalias !9009, !noundef !12
  %i.bs = trunc nuw i64 %i.br to i1
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.bt, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !9009
  %i.bv = call noundef nonnull ptr @_RNvMs9_NtCs7p2uQeJxui2_9deltalake5errorNtB5_18TableNotFoundError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.bv) #43
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @212, i64 noundef 18, ptr noundef nonnull %i.bv)
  %i.bw = load i64, ptr %i.ap, align 8, !range !11, !noalias !9009, !noundef !12
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bz, ptr noundef nonnull align 8 dereferenceable(56) %i.by, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !9009
  %i.ca = call noundef nonnull ptr @_RNvMsr_NtCs7p2uQeJxui2_9deltalake5errorNtB5_19SchemaMismatchError15type_object_raw() ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.ca) #43
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 19, ptr noundef nonnull %i.ca)
  %i.cb = load i64, ptr %i.ao, align 8, !range !11, !noalias !9009, !noundef !12
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %i.cd, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9009
  store i64 -9223372036854775808, ptr %i.al, align 8, !noalias !9009
  %.sroa.4112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @214, ptr %.sroa.4112.0..sroa_idx.i, align 8, !noalias !9009
  %.sroa.5113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 8, ptr %.sroa.5113.0..sroa_idx.i, align 8, !noalias !9009
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 -9223372036854775807, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9009
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 -9223372036854775808, ptr %i.cf, align 8, !noalias !9009
  %.sroa.0117.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr @215, ptr %.sroa.0117.sroa.4.0..sroa_idx.i, align 8, !noalias !9009
  %.sroa.0117.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i64 14, ptr %.sroa.0117.sroa.5.0..sroa_idx.i, align 8, !noalias !9009
  %.sroa.4118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i64 -9223372036854775807, ptr %.sroa.4118.0..sroa_idx.i, align 8, !noalias !9009
  call void @_RINvMs3_NtCsgFsIr8bmZ1R_10env_logger6loggerNtB6_3Env17default_filter_orReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.al, ptr noalias noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9009
  call void @_RINvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB3_7Builder8from_envNtB3_3EnvECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9009
  invoke void @_RNvMNtCsgFsIr8bmZ1R_10env_logger6loggerNtB2_7Builder4init(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.an)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger7BuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(168) %i.an) #39
          to label %common.resume.i unwind label %bb.ca

bb.r:                                             ; preds = %bb.p
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgFsIr8bmZ1R_10env_logger6logger7BuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(168) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9009
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReB1H_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @218, i64 noundef 5)
  %i.ch = load i64, ptr %i.ak, align 8, !range !11, !noalias !9009, !noundef !12
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9009
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_10pyfunctionRINtNtB8_8instance5BoundNtNtNtB8_5types6module8PyModuleEINtB4_17WrapPyFunctionArgIBL_NtNtB1b_8function11PyCFunctionEE15wrap_pyfunction(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @221)
  %i.cl = load i64, ptr %i.ai, align 8, !range !11, !noalias !9009, !noundef !12
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0125.0.copyload.i = load ptr, ptr %i.cn, align 8, !noalias !9009 ; 2 uses
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.5126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2128.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5126.0..sroa_idx.i, i64 48, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9009
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0125.0.copyload.i, ptr %i.co, align 8, !alias.scope !9006, !noalias !9011
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9009
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9009
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB8_8instance5BoundNtB4_8PyModuleENtB4_15PyModuleMethods12add_function(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.sroa.0125.0.copyload.i)
  %i.cp = load i64, ptr %i.aj, align 8, !range !11, !noalias !9009, !noundef !12
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cs, ptr noundef nonnull align 8 dereferenceable(56) %i.cr, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9009
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_10pyfunctionRINtNtB8_8instance5BoundNtNtNtB8_5types6module8PyModuleEINtB4_17WrapPyFunctionArgIBL_NtNtB1b_8function11PyCFunctionEE15wrap_pyfunction(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @224)
  %i.ct = load i64, ptr %i.ag, align 8, !range !11, !noalias !9009, !noundef !12
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0131.0.copyload.i = load ptr, ptr %i.cv, align 8, !noalias !9009 ; 2 uses
  br i1 %i.cu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.2134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2134.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5132.0..sroa_idx.i, i64 48, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9009
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0131.0.copyload.i, ptr %i.cw, align 8, !alias.scope !9006, !noalias !9011
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9009
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9009
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB8_8instance5BoundNtB4_8PyModuleENtB4_15PyModuleMethods12add_function(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.sroa.0131.0.copyload.i)
  %i.cx = load i64, ptr %i.ah, align 8, !range !11, !noalias !9009, !noundef !12
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.da, ptr noundef nonnull align 8 dereferenceable(56) %i.cz, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9009
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_10pyfunctionRINtNtB8_8instance5BoundNtNtNtB8_5types6module8PyModuleEINtB4_17WrapPyFunctionArgIBL_NtNtB1b_8function11PyCFunctionEE15wrap_pyfunction(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @227)
  %i.db = load i64, ptr %i.ae, align 8, !range !11, !noalias !9009, !noundef !12
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0137.0.copyload.i = load ptr, ptr %i.dd, align 8, !noalias !9009 ; 2 uses
  br i1 %i.dc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.2140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2140.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5138.0..sroa_idx.i, i64 48, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9009
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0137.0.copyload.i, ptr %i.de, align 8, !alias.scope !9006, !noalias !9011
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9009
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9009
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB8_8instance5BoundNtB4_8PyModuleENtB4_15PyModuleMethods12add_function(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.sroa.0137.0.copyload.i)
  %i.df = load i64, ptr %i.af, align 8, !range !11, !noalias !9009, !noundef !12
  %i.dg = trunc nuw i64 %i.df to i1
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.di, ptr noundef nonnull align 8 dereferenceable(56) %i.dh, i64 56, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9009
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9009
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_10pyfunctionRINtNtB8_8instance5BoundNtNtNtB8_5types6module8PyModuleEINtB4_17WrapPyFunctionArgIBL_NtNtB1b_8function11PyCFunctionEE15wrap_pyfunction(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @230)
  %i.dj = load i64, ptr %i.ac, align 8, !range !11, !noalias !9009, !noundef !12
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0143.0.copyload.i = load ptr, ptr %i.dl, align 8, !noalias !9009 ; 2 uses
  br i1 %i.dk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.5144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.2146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2146.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5144.0..sroa_idx.i, i64 48, i1 false), !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9009
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0143.0.copyload.i, ptr %i.dm, align 8, !alias.scope !9006, !noalias !9011
  store i64 1, ptr %0, align 8, !alias.scope !9006, !noalias !9011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9009
  br label %_RNvCs7p2uQeJxui2_9deltalake9__internal.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9009
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB8_8instance5BoundNtB4_8PyModuleENtB4_15PyModuleMethods12add_function(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.sroa.0143.0.copyload.i)
end_hunk_1
