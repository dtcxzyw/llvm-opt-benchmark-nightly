Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_py_api-5dda2891e7b58c19.influxdb3_py_api.ecd3ccd6b461bf56-cgu.11?download=true
inline.NumInlined: 281
inline.NumDeleted: 128
begin_hunk_0_@_RNvNvNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py16influxdb3_py_api9__PYO3_DEF18___pyo3_module_exec:bb.a
  %.sroa.0.0.2641.i = phi ptr [ %i.ac, %.thread39.i ], [ %.sroa.8.0.copyload19.i, %._crit_edge.i ]
  invoke void @_RNvMNtCs9xaRPakndqT_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %.sroa.0.0.2641.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %.invoke.i unwind label %bb.n, !noalias !59

.invoke.i:                                        ; preds = %bb.l, %bb.k
  %i.ah = phi ptr [ %i.d, %bb.l ], [ %.sroa.424.0..sroa_idx.i, %bb.k ]
  invoke void @_RNvMs0_NtNtCs9xaRPakndqT_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit10.i unwind label %bb.n, !noalias !59

bb.m:                                             ; preds = %bb.k
  %i.ai = lshr i64 %i.ae, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit10.i

bb.n:                                             ; preds = %.invoke.i, %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCs9xaRPakndqT_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.thread.i unwind label %bb.o, !noalias !59

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit10.i: ; preds = %bb.m, %.invoke.i
  %.sroa.0.0.i.i = phi i32 [ %i.aj, %bb.m ], [ -1, %.invoke.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !59
  invoke void @_RNvXs_NtNtCs9xaRPakndqT_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %.thread.i, %bb.n
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !59
  unreachable

.thread.i:                                        ; preds = %bb.n, %.thread32.i
  invoke void @_RNvXs_NtNtCs9xaRPakndqT_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.body unwind label %bb.o, !noalias !59

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit10.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !59
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXNtCs9xaRPakndqT_4pyo33errReNtB2_14PyErrArguments9argumentsCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvMs_NtNtCs9xaRPakndqT_4pyo35types6stringNtB4_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs9xaRPakndqT_4pyo38internal12pyclass_initINtB2_23PyNativeTypeInitializerNtNtNtB6_5types3any5PyAnyEINtB2_12PyObjectInitB1h_E15into_new_objectCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvNvXNtNtCs9xaRPakndqT_4pyo38internal12pyclass_initINtB4_23PyNativeTypeInitializerpEINtB4_12PyObjectInitpE15into_new_object5inner(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull @PyBaseObject_Type, ptr noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs9xaRPakndqT_4pyo34syncINtB5_11GILOnceCellINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i32, ptr %i.a acquire, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs9xaRPakndqT_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !noundef !3
  %i.e = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.e, label %bb.d, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvXsA_NtCs9xaRPakndqT_4pyo38instanceINtB7_2PypENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr %.val, align 8, !noundef !3 ; 2 uses
  %i.g = and i64 %i.f, 2147483648
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.d
  %i.h = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.h, ptr %.val, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs9xaRPakndqT_4pyo34syncINtB5_11GILOnceCellNtNtNtB7_7pyclass18create_type_object17PyClassTypeObjectENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i32, ptr %i.a acquire, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !68, !nonnull !3, !noundef !3 ; 4 uses
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs9xaRPakndqT_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !68, !noundef !3
  %i.f = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXsA_NtCs9xaRPakndqT_4pyo38instanceINtB7_2PypENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit.i unwind label %bb.g, !noalias !68

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %.val.i, align 8, !noalias !68, !noundef !3 ; 2 uses
  %i.h = and i64 %i.g, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit.i

bb.e:                                             ; preds = %bb.d
  %i.i = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.i, ptr %.val.i, align 8, !noalias !68
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val.i) #18, !noalias !68
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit.i

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object13GetSetDefTypeEECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) #19
          to label %common.resume.i unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object17PyClassTypeObjectECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.k, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object17PyClassTypeObjectECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types10typeobject6PyTypeEECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object17PyClassTypeObjectECskkCPRT7oCWw_16influxdb3_py_api.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs9xaRPakndqT_4pyo311conversions3std3mapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB1K_ENtNtBb_10conversion12FromPyObject7extractCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.512 = alloca [48 x i8], align 8          ; 7 uses
  %.sroa.510 = alloca [48 x i8], align 8          ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.58 = alloca [48 x i8], align 8           ; 7 uses
  %.sroa.5 = alloca [48 x i8], align 8            ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !76, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.n = load i64, ptr %i.m, align 8, !noalias !76, !noundef !3
  %i.o = and i64 %i.n, 536870912
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.b, label %_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types4dict6PyDictECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr @PyDict_Type, align 8, !noalias !76, !noundef !3
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.q, ptr @PyDict_Type, align 8, !noalias !76
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtNtCs9xaRPakndqT_4pyo33err10cast_errorNtB7_5PyErrINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull %1, ptr noundef nonnull @PyDict_Type)
  store i64 1, ptr %0, align 8
  br label %bb.q

_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types4dict6PyDictECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !3
  %i.v = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @11) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_NtCsgQfI1edjipl_9hashbrown3mapINtB4_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBM_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE24with_capacity_and_hasherCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef %i.u, i64 noundef %i.w, i64 noundef %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = load i32, ptr %1, align 8, !noundef !3
  %i.z = add i32 %i.y, 1                          ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types4dict6PyDictECskkCPRT7oCWw_16influxdb3_py_api.exit
  store i32 %i.z, ptr %1, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types4dict6PyDictECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.ab = load i64, ptr %i.t, align 8, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 %i.ab, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 4 uses
  store i64 %i.ab, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ab, -1
  br i1 %i.ae, label %.invoke, label %.lr.ph129, !prof !77

thread-pre-split:                                 ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit44
  %.pr = load i64, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !78
  %i.af = icmp eq i64 %.pr, -1
  br i1 %i.af, label %.invoke, label %.lr.ph129, !prof !79

.invoke:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit44, %thread-pre-split, %.lr.ph
  %i.ag = phi ptr [ @5, %.lr.ph ], [ @8, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit44 ], [ @5, %thread-pre-split ]
  %i.ah = phi ptr [ @7, %.lr.ph ], [ @9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit44 ], [ @7, %thread-pre-split ]
  store i64 -1, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !78
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.ag, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #20
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph129:                                        ; preds = %.lr.ph, %thread-pre-split
  %.val2993128 = phi ptr [ %.val29, %thread-pre-split ], [ %1, %.lr.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78
  store ptr null, ptr %i.b, align 8, !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  store ptr null, ptr %i.a, align 8, !noalias !78
  %i.ai = call noundef i32 @PyDict_Next(ptr noundef nonnull %.val2993128, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %bb.f

bb.f:                                             ; preds = %.lr.ph129
  %i.ak = load i64, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !78, !noundef !3
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !78
  %i.am = load ptr, ptr %i.b, align 8, !noalias !78, !nonnull !3, !noundef !3 ; 12 uses
  %i.an = load i32, ptr %i.am, align 8, !noundef !3
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ao, ptr %i.am, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = load ptr, ptr %i.a, align 8, !noalias !78, !nonnull !3, !noundef !3 ; 12 uses
  %i.ar = load i32, ptr %i.aq, align 8, !noundef !3
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.as, ptr %i.aq, align 8
  br label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit42: ; preds = %bb.af, %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit, %bb.l
  %.pn20 = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit ], [ %.pn, %bb.ae ], [ %.pn, %bb.af ]
  %.val32 = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.au = load i64, ptr %.val32, align 8, !noundef !3 ; 2 uses
  %i.av = and i64 %i.au, 2147483648
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit42
  %i.aw = add i64 %i.au, -1                       ; 2 uses
  store i64 %i.aw, ptr %.val32, align 8
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %.val32) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.l:                                             ; preds = %.invoke
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit42

bb.m:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs8_NtNtNtCs9xaRPakndqT_4pyo311conversions3std6stringNtNtCscdodAO9FK5_5alloc6string6StringNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noundef nonnull %i.am)
          to label %bb.t unwind label %.loopexit

bb.n:                                             ; preds = %.lr.ph129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78
  %.val31 = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.az = load i64, ptr %.val31, align 8, !noundef !3 ; 2 uses
  %i.ba = and i64 %i.az, 2147483648
  %.not.i.i.i35 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i35, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit36

bb.o:                                             ; preds = %bb.n
  %i.bb = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.bb, ptr %.val31, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit36

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %.val31) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit36

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.k, %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit42
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB1w_EECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.ao

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit36: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit53, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit36
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %bb.aa, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.v ], [ %i.bp, %bb.aa ], [ %i.ch, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %i.be = load i64, ptr %i.aq, align 8, !noundef !3 ; 2 uses
  %i.bf = and i64 %i.be, 2147483648
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.r:                                             ; preds = %.body
  %i.bg = add i64 %i.be, -1                       ; 2 uses
  store i64 %i.bg, ptr %i.aq, align 8
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit

.loopexit:                                        ; preds = %bb.m, %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %i.f, align 8, !range !5, !noundef !3
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.ap, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs8_NtNtNtCs9xaRPakndqT_4pyo311conversions3std6stringNtNtCscdodAO9FK5_5alloc6string6StringNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull %i.aq)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(24) %i.g) #19
          to label %.body unwind label %bb.ao

bb.w:                                             ; preds = %bb.u
  %i.bl = load i64, ptr %i.e, align 8, !range !5, !noundef !3
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, i64 24, i1 false)
  invoke void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBN_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bn = load i64, ptr %i.h, align 8, !range !80, !alias.scope !81, !noundef !3
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api.exit.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api.exit.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.br = load i64, ptr %i.aq, align 8, !noundef !3 ; 2 uses
  %i.bs = and i64 %i.br, 2147483648
  %.not.i.i39 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i39, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit40

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.bt = add i64 %i.br, -1                       ; 2 uses
  store i64 %i.bt, ptr %i.aq, align 8
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit40

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit40

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.s, %bb.r, %.body
  %i.bv = load i64, ptr %i.am, align 8, !noundef !3 ; 2 uses
  %i.bw = and i64 %i.bv, 2147483648
  %.not.i.i41 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i41, label %bb.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit42

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.bx = add i64 %i.bv, -1                       ; 2 uses
  store i64 %i.bx, ptr %i.am, align 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit42

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.am) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit42

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit40: ; preds = %bb.ad, %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.bz = load i64, ptr %i.am, align 8, !noundef !3 ; 2 uses
  %i.ca = and i64 %i.bz, 2147483648
  %.not.i.i43 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i43, label %bb.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit44

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit40
  %i.cb = add i64 %i.bz, -1                       ; 2 uses
  store i64 %i.cb, ptr %i.am, align 8
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit44

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.am) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit44

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit44: ; preds = %bb.ah, %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit40
  %.val29 = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.cd = getelementptr inbounds nuw i8, ptr %.val29, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !82, !noundef !3
  %i.cf = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !82, !noundef !3
  %.not.i33 = icmp eq i64 %i.cf, %i.ce
  br i1 %.not.i33, label %thread-pre-split, label %.invoke, !prof !83

bb.ai:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.512, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.510, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskkCPRT7oCWw_16influxdb3_py_api.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskkCPRT7oCWw_16influxdb3_py_api.exit.i: ; preds = %bb.ai
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskkCPRT7oCWw_16influxdb3_py_api.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  br label %bb.al

bb.al:                                            ; preds = %bb.ap, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskkCPRT7oCWw_16influxdb3_py_api.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cj = load i64, ptr %i.aq, align 8, !noundef !3 ; 2 uses
  %i.ck = and i64 %i.cj, 2147483648
  %.not.i.i48 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i48, label %bb.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit49

bb.am:                                            ; preds = %bb.al
  %i.cl = add i64 %i.cj, -1                       ; 2 uses
  store i64 %i.cl, ptr %i.aq, align 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit49

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit49

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ap:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.al

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit49: ; preds = %bb.an, %bb.am, %bb.al
  %i.cp = load i64, ptr %i.am, align 8, !noundef !3 ; 2 uses
  %i.cq = and i64 %i.cp, 2147483648
  %.not.i.i50 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i50, label %bb.aq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit51

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit49
  %i.cr = add i64 %i.cp, -1                       ; 2 uses
  store i64 %i.cr, ptr %i.am, align 8
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.ar, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit51

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.am) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit51

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit51: ; preds = %bb.ar, %bb.aq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit49
  %.val30 = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ct = load i64, ptr %.val30, align 8, !noundef !3 ; 2 uses
  %i.cu = and i64 %i.ct, 2147483648
  %.not.i.i.i52 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i52, label %bb.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit53

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit51
  %i.cv = add i64 %i.ct, -1                       ; 2 uses
  store i64 %i.cv, ptr %.val30, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit53

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %.val30) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit53

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit53: ; preds = %bb.at, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB1w_EECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35types4dict17BoundDictIteratorECskkCPRT7oCWw_16influxdb3_py_api.exit
  resume { ptr, i32 } %.pn20
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs9xaRPakndqT_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB1a_(ptr noundef nonnull align 8 %i.a)
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs9xaRPakndqT_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB1a_(ptr noundef nonnull align 8 %i.a)
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsB_NtCs9xaRPakndqT_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull %1) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !noalias !86, !noundef !3
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr %1, align 8, !noalias !86
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsL_NtNtCs9xaRPakndqT_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBG_NtNtB7_4dict6PyDictEB24_IBG_NtNtB7_5bytes7PyBytesEINtNtCs4NRVxsYgnAr_4core6option6OptionB24_EENtNtB9_4call10PyCallArgs15call_positionalB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noundef !3
  %i.n = invoke noundef nonnull ptr @_RNvXNtNtNtCs9xaRPakndqT_4pyo311conversions3std6optionINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB8_8instance5BoundNtNtNtB8_5types4dict6PyDictEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskkCPRT7oCWw_16influxdb3_py_api(ptr noundef %i.m)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %i.q = and i64 %i.p, 2147483648
  %.not.i.i65 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i65, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.r, ptr %i.k, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.k, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4dict6PyDictEB2h_IBD_NtNtB2p_5bytes7PyBytesEIBD_NtNtB2p_3any5PyAnyEEEB1j_(ptr noalias noundef align 8 dereferenceable(40) %i.d) #19
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit83.thread111

bb.f:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.k, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.n, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.k, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.n, ptr %i.ac, align 8
  %i.ad = call noundef ptr @PyObject_Vectorcall(ptr noundef nonnull %2, ptr noundef nonnull %i.y, i64 noundef -9223372036854775803, ptr noundef null) #18 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCs9xaRPakndqT_4pyo33errNtB4_5PyErr4take(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.a, align 8, !range !5, !noundef !3
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9xaRPakndqT_4pyo33err15failed_to_fetch(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4dict6PyDictEB2h_IBD_NtNtB2p_5bytes7PyBytesEIBD_NtNtB2p_3any5PyAnyEEEB1j_(ptr noalias noundef align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.ak = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.al = and i64 %i.ak, 2147483648
  %.not.i.i66 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i66, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit67

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.am = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.am, ptr %i.i, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit67

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit67

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit67: ; preds = %bb.o, %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.ao = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %i.ap = and i64 %i.ao, 2147483648
  %.not.i.i68 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i68, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit69

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit67
  %i.aq = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.aq, ptr %i.g, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit69

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit69

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit69: ; preds = %bb.q, %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit67
  %i.as = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.at = and i64 %i.as, 2147483648
  %.not.i.i70 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i70, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit83.thread111

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit69
  %i.au = add i64 %i.as, -1                       ; 2 uses
  store i64 %i.au, ptr %i.e, align 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit83.thread111

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit83.thread111

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit83.thread111: ; preds = %bb.e, %bb.s, %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit69
  %.pn9397108 = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.o, %bb.s ], [ %i.o, %bb.r ], [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit69 ]
  resume { ptr, i32 } %.pn9397108
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtNtCs9xaRPakndqT_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBG_NtNtB7_8datetime10PyDateTimeEINtNtCs4NRVxsYgnAr_4core6option6OptionIBG_NtNtB7_4dict6PyDictEEENtNtB9_4call10PyCallArgs15call_positionalB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %i.j = invoke noundef nonnull ptr @_RNvXNtNtNtCs9xaRPakndqT_4pyo311conversions3std6optionINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB8_8instance5BoundNtNtNtB8_5types4dict6PyDictEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskkCPRT7oCWw_16influxdb3_py_api(ptr noundef %i.i)
          to label %bb.f unwind label %bb.b       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not.i.i33 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i33, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.n, ptr %i.g, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.k, %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types8datetime10PyDateTimeEIBD_NtNtB2p_3any5PyAnyEEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #19
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread

bb.f:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.j, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.j, ptr %i.u, align 8
  %i.v = call noundef ptr @PyObject_Vectorcall(ptr noundef nonnull %2, ptr noundef nonnull %i.s, i64 noundef -9223372036854775805, ptr noundef null) #18 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCs9xaRPakndqT_4pyo33errNtB4_5PyErr4take(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.x, align 8
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.a, align 8, !range !5, !noundef !3
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9xaRPakndqT_4pyo33err15failed_to_fetch(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = load i64, ptr %i.e, align 8, !noalias !89, !noundef !3 ; 2 uses
  %i.ad = and i64 %i.ac, 2147483648
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ae = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8, !noalias !89
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #18, !noalias !89
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.ag = load i64, ptr %i.g, align 8, !noalias !89, !noundef !3 ; 2 uses
  %i.ah = and i64 %i.ag, 2147483648
  %.not.i.i7.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i7.i, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i
  %i.ai = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.g, align 8, !noalias !89
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #18, !noalias !89
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i: ; preds = %bb.q, %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i
  %i.ak = load i64, ptr %i.j, align 8, !noalias !89, !noundef !3 ; 2 uses
  %i.al = and i64 %i.ak, 2147483648
  %.not.i.i10.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i10.i, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types8datetime10PyDateTimeEIBD_NtNtB2p_3any5PyAnyEEEB1j_.exit

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i
  %i.am = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.am, ptr %i.j, align 8, !noalias !89
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types8datetime10PyDateTimeEIBD_NtNtB2p_3any5PyAnyEEEB1j_.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #18, !noalias !89
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types8datetime10PyDateTimeEIBD_NtNtB2p_3any5PyAnyEEEB1j_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types8datetime10PyDateTimeEIBD_NtNtB2p_3any5PyAnyEEEB1j_.exit: ; preds = %bb.s, %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.ao = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.ap = and i64 %i.ao, 2147483648
  %.not.i.i34 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i34, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.aq = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.aq, ptr %i.e, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread: ; preds = %bb.e, %bb.u, %bb.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %.pn41 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.k, %bb.u ], [ %i.k, %bb.t ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit ]
  resume { ptr, i32 } %.pn41
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtNtCs9xaRPakndqT_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEINtBI_2PyNtNtB7_4list6PyListEINtNtCs4NRVxsYgnAr_4core6option6OptionIBG_NtNtB7_4dict6PyDictEEENtNtB9_4call10PyCallArgs15call_positionalB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %i.j = invoke noundef nonnull ptr @_RNvXNtNtNtCs9xaRPakndqT_4pyo311conversions3std6optionINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB8_8instance5BoundNtNtNtB8_5types4dict6PyDictEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskkCPRT7oCWw_16influxdb3_py_api(ptr noundef %i.i)
          to label %bb.f unwind label %bb.b       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not.i.i33 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i33, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.n, ptr %i.g, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.k, %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4list6PyListEIBD_NtNtB2p_3any5PyAnyEEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #19
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread

bb.f:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.j, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.j, ptr %i.u, align 8
  %i.v = call noundef ptr @PyObject_Vectorcall(ptr noundef nonnull %2, ptr noundef nonnull %i.s, i64 noundef -9223372036854775805, ptr noundef null) #18 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCs9xaRPakndqT_4pyo33errNtB4_5PyErr4take(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.x, align 8
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.a, align 8, !range !5, !noundef !3
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9xaRPakndqT_4pyo33err15failed_to_fetch(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = load i64, ptr %i.e, align 8, !noalias !92, !noundef !3 ; 2 uses
  %i.ad = and i64 %i.ac, 2147483648
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ae = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8, !noalias !92
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #18, !noalias !92
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.ag = load i64, ptr %i.g, align 8, !noalias !92, !noundef !3 ; 2 uses
  %i.ah = and i64 %i.ag, 2147483648
  %.not.i.i7.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i7.i, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i
  %i.ai = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.g, align 8, !noalias !92
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #18, !noalias !92
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i: ; preds = %bb.q, %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit.i
  %i.ak = load i64, ptr %i.j, align 8, !noalias !92, !noundef !3 ; 2 uses
  %i.al = and i64 %i.ak, 2147483648
  %.not.i.i10.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i10.i, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4list6PyListEIBD_NtNtB2p_3any5PyAnyEEEB1j_.exit

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i
  %i.am = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.am, ptr %i.j, align 8, !noalias !92
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4list6PyListEIBD_NtNtB2p_3any5PyAnyEEEB1j_.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #18, !noalias !92
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4list6PyListEIBD_NtNtB2p_3any5PyAnyEEEB1j_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4list6PyListEIBD_NtNtB2p_3any5PyAnyEEEB1j_.exit: ; preds = %bb.s, %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.ao = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.ap = and i64 %i.ao, 2147483648
  %.not.i.i34 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i34, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %i.aq = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.aq, ptr %i.e, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit35.thread: ; preds = %bb.e, %bb.u, %bb.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit
  %.pn39 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.k, %bb.u ], [ %i.k, %bb.t ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit ]
  resume { ptr, i32 } %.pn39
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !97, !noalias !98, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskkCPRT7oCWw_16influxdb3_py_api(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskkCPRT7oCWw_16influxdb3_py_api.exit

_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs9xaRPakndqT_4pyo33err5PyErrNtNtCs4NRVxsYgnAr_4core5error5Error5causeCskkCPRT7oCWw_16influxdb3_py_api(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs_NtNtCs9xaRPakndqT_4pyo35impl_8pymoduleNtB4_9ModuleDef16init_multi_phase(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskkCPRT7oCWw_16influxdb3_py_api(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs9xaRPakndqT_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs9xaRPakndqT_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 3) i32 @_RNvMNtNtCs9xaRPakndqT_4pyo38internal5stateNtB2_11AttachGuard6assume() unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtCs9xaRPakndqT_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs9xaRPakndqT_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @PyErr_WriteUnraisable(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi17___pymethod_info__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi18___pymethod_error__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi18___pymethod_write__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi24___pymethod_write_to_db__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi23___pymethod_write_sync__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi29___pymethod_write_sync_to_db__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi18___pymethod_query__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi17___pymethod_warn__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsp_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB5_7PyCache16___pymethod_put__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsp_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB5_7PyCache19___pymethod_delete__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsp_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB5_7PyCache16___pymethod_get__(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheEINtB5_23PyClassObjectBaseLayoutB16_E10tp_deallocB1a_(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEINtB5_23PyClassObjectBaseLayoutB16_E10tp_deallocB1a_(ptr noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @PyObject_GC_UnTrack(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object18create_type_object5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef, ptr noundef nonnull, ptr noundef nonnull, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef range(i64 0, 3), i64, i64 noundef range(i64 0, 3), i64, i1 noundef zeroext, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly captures(address, read_provenance), i64, i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #13

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error22construct_from_contextReNtNtCs9xaRPakndqT_4pyo33err5PyErrECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvXs0_NtNtCs9xaRPakndqT_4pyo35types4listINtNtBb_8instance5BoundNtB7_6PyListENtB7_13PyListMethods6append5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsq_NtNtCs9xaRPakndqT_4pyo35types5tupleTlReENtNtB9_4call10PyCallArgs22call_method_positionalCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtNtCs9xaRPakndqT_4pyo35types5tupleTlENtNtB9_4call10PyCallArgs22call_method_positionalCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i32 noundef, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvXs_NtNtCs9xaRPakndqT_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7getattr5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvXs_NtNtCs9xaRPakndqT_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7hasattr5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvXs_NtNtCs9xaRPakndqT_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7setattr5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsc_NtNtNtCs9xaRPakndqT_4pyo311conversions3std3numlNtNtBb_10conversion12IntoPyObject13into_pyobject(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvXs_NtNtCs9xaRPakndqT_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods8get_item5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvXs_NtNtCs9xaRPakndqT_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods8set_item5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvXs_NtNtCs9xaRPakndqT_4pyo35types4dictINtNtBa_8instance5BoundNtB6_6PyDictENtB6_13PyDictMethods8set_item5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs9xaRPakndqT_4pyo33errNtB4_5PyErr4take(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtCs9xaRPakndqT_4pyo33err15failed_to_fetch(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs9xaRPakndqT_4pyo33err10cast_errorNtB7_5PyErrINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9CastErrorE4from(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB1a_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsc_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB1a_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs9xaRPakndqT_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB1a_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsc_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB1a_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_Dealloc(ptr noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXsA_NtCs9xaRPakndqT_4pyo38instanceINtB7_2PypENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvXNtNtCs9xaRPakndqT_4pyo38internal12pyclass_initINtB4_23PyNativeTypeInitializerpEINtB4_12PyObjectInitpE15into_new_object5inner(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs_NtNtCs9xaRPakndqT_4pyo35types6stringNtB4_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @PyType_IsSubtype(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgQfI1edjipl_9hashbrown3mapINtB4_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBM_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE24with_capacity_and_hasherCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtNtNtCs9xaRPakndqT_4pyo311conversions3std6stringNtNtCscdodAO9FK5_5alloc6string6StringNtNtBb_10conversion12FromPyObject7extract(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBN_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXNtNtNtCs9xaRPakndqT_4pyo311conversions3std6optionINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB8_8instance5BoundNtNtNtB8_5types4dict6PyDictEENtNtB8_10conversion12IntoPyObject13into_pyobjectCskkCPRT7oCWw_16influxdb3_py_api(ptr noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", i32 4000000, i32 4001}
!5 = !{i64 0, i64 2}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = distinct !{!7, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo33err9err_state10PyErrStateECskkCPRT7oCWw_16influxdb3_py_api"}
!8 = distinct !{!8, !7, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo33err9err_state10PyErrStateECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!9 = distinct !{!9, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs9xaRPakndqT_4pyo33err9err_state15PyErrStateInnerEEECskkCPRT7oCWw_16influxdb3_py_api"}
!10 = distinct !{!10, !9, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs9xaRPakndqT_4pyo33err9err_state15PyErrStateInnerEEECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!11 = distinct !{!11, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9xaRPakndqT_4pyo33err9err_state15PyErrStateInnerEECskkCPRT7oCWw_16influxdb3_py_api"}
!12 = distinct !{!12, !11, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9xaRPakndqT_4pyo33err9err_state15PyErrStateInnerEECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!13 = !{!8}
!14 = !{!10}
!15 = !{!12}
!16 = !{!12, !10, !8}
!17 = !{i64 0, i64 -9223372036854775808}
!18 = !{i64 1, i64 536870913}
!19 = distinct !{!19, i1 false, !"_RNCINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvNtB4_32fastcall_cfunction_with_keywords5inner0ONtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectE0CskkCPRT7oCWw_16influxdb3_py_api"}
!20 = distinct !{!20, !19, !"_RNCINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvNtB4_32fastcall_cfunction_with_keywords5inner0ONtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectE0CskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!21 = distinct !{!21, !19, !"_RNCINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvNtB4_32fastcall_cfunction_with_keywords5inner0ONtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectE0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!22 = distinct !{!22, i1 false, !"_RNCNvNtNtNtCs9xaRPakndqT_4pyo35impl_10trampoline32fastcall_cfunction_with_keywords5inner0CskkCPRT7oCWw_16influxdb3_py_api"}
!23 = distinct !{!23, !22, !"_RNCNvNtNtNtCs9xaRPakndqT_4pyo35impl_10trampoline32fastcall_cfunction_with_keywords5inner0CskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!24 = distinct !{!24, !22, !"_RNCNvNtNtNtCs9xaRPakndqT_4pyo35impl_10trampoline32fastcall_cfunction_with_keywords5inner0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!25 = distinct !{null}
!26 = !{!24, !23, !21, !20}
!27 = !{!"branch_weights", i32 1073206245, i32 1071158, i32 1073206245}
!28 = distinct !{null}
!29 = distinct !{!29, i1 false, !"_RNvXsh_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB5_7PyCacheNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter"}
!30 = distinct !{!30, !29, !"_RNvXsh_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB5_7PyCacheNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter: argument 0"}
!31 = !{!30}
!32 = distinct !{!32, i1 false, !"_RNvXs9_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApiNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter"}
!33 = distinct !{!33, !32, !"_RNvXs9_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApiNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter: argument 0"}
!34 = !{!33}
!35 = distinct !{!35, i1 false, !"_RNvXsj_NtNtCs9xaRPakndqT_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs22call_method_positionalCskkCPRT7oCWw_16influxdb3_py_api"}
!36 = distinct !{!36, !35, !"_RNvXsj_NtNtCs9xaRPakndqT_4pyo35types5tupleTINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs22call_method_positionalCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!37 = !{!36}
!38 = distinct !{!38, i1 false, !"_RNvXsh_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB5_7PyCacheNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter"}
!39 = distinct !{!39, !38, !"_RNvXsh_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB5_7PyCacheNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter: argument 0"}
!40 = !{!39}
!41 = distinct !{!41, i1 false, !"_RNvXs9_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApiNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter"}
!42 = distinct !{!42, !41, !"_RNvXs9_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApiNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter: argument 0"}
!43 = !{!42}
!44 = distinct !{!44, i1 false, !"_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvB2_11module_exec0lECskkCPRT7oCWw_16influxdb3_py_api"}
!45 = distinct !{!45, !44, !"_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvB2_11module_exec0lECskkCPRT7oCWw_16influxdb3_py_api: argument 1"}
!46 = distinct !{!46, !44, !"_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvB2_11module_exec0lECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!47 = distinct !{!47, i1 false, !"_RNCINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvB4_11module_exec0lE0CskkCPRT7oCWw_16influxdb3_py_api"}
!48 = distinct !{!48, !47, !"_RNCINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvB4_11module_exec0lE0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!49 = distinct !{!49, i1 false, !"_RNCNvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline11module_exec0CskkCPRT7oCWw_16influxdb3_py_api"}
!50 = distinct !{!50, !49, !"_RNCNvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline11module_exec0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!51 = distinct !{!51, i1 false, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullNtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectEE11map_or_elseINtNtB5_6result6ResultINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB2A_5types3any5PyAnyENtNtB2A_3err5PyErrENCNvMsd_B2y_B2v_15from_ptr_or_err0NCB3X_s_0ECskkCPRT7oCWw_16influxdb3_py_api"}
!52 = distinct !{!52, !51, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullNtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectEE11map_or_elseINtNtB5_6result6ResultINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB2A_5types3any5PyAnyENtNtB2A_3err5PyErrENCNvMsd_B2y_B2v_15from_ptr_or_err0NCB3X_s_0ECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!53 = distinct !{!53, i1 false, !"_RNCNvMsd_NtCs9xaRPakndqT_4pyo38instanceINtB7_8BorrowedNtNtNtB9_5types3any5PyAnyE15from_ptr_or_err0CskkCPRT7oCWw_16influxdb3_py_api"}
!54 = distinct !{!54, !53, !"_RNCNvMsd_NtCs9xaRPakndqT_4pyo38instanceINtB7_8BorrowedNtNtNtB9_5types3any5PyAnyE15from_ptr_or_err0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!55 = distinct !{!55, i1 false, !"_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6module8PyModuleECskkCPRT7oCWw_16influxdb3_py_api"}
!56 = distinct !{!56, !55, !"_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6module8PyModuleECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!57 = distinct !{!57, i1 false, !"_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline33panic_result_into_callback_outputlECskkCPRT7oCWw_16influxdb3_py_api"}
!58 = distinct !{!58, !57, !"_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline33panic_result_into_callback_outputlECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!59 = !{!46, !45}
!60 = !{!48, !46, !45}
!61 = !{!54, !52, !50, !48, !46, !45}
!62 = !{!50, !48, !46, !45}
!63 = !{!56, !50, !48, !46, !45}
!64 = !{!"branch_weights", i32 1073206245, i32 1071157, i32 1073206245}
!65 = !{!58}
!66 = distinct !{!66, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object17PyClassTypeObjectECskkCPRT7oCWw_16influxdb3_py_api"}
!67 = distinct !{!67, !66, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object17PyClassTypeObjectECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!68 = !{!67}
!69 = distinct !{!69, i1 false, !"_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types4dict6PyDictECskkCPRT7oCWw_16influxdb3_py_api"}
!70 = distinct !{!70, !69, !"_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types4dict6PyDictECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!71 = distinct !{!71, i1 false, !"_RNvMs1_NtNtCs9xaRPakndqT_4pyo35types4dictNtB5_12DictIterImpl14next_unchecked"}
!72 = distinct !{!72, !71, !"_RNvMs1_NtNtCs9xaRPakndqT_4pyo35types4dictNtB5_12DictIterImpl14next_unchecked: argument 0"}
!73 = distinct !{!73, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECskkCPRT7oCWw_16influxdb3_py_api"}
!74 = distinct !{!74, !73, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!75 = distinct !{!75, !71, !"_RNvMs1_NtNtCs9xaRPakndqT_4pyo35types4dictNtB5_12DictIterImpl14next_unchecked: argument 0:h.rot"}
!76 = !{!70}
!77 = !{!"branch_weights", i32 1, i32 127}
!78 = !{!72}
!79 = !{!"branch_weights", i32 127, i32 255873}
!80 = !{i64 -1, i64 -9223372036854775808}
!81 = !{!74}
!82 = !{!75}
!83 = !{!"branch_weights", i32 255873, i32 127}
!84 = distinct !{!84, i1 false, !"_RNvXsC_NtCs9xaRPakndqT_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskkCPRT7oCWw_16influxdb3_py_api"}
!85 = distinct !{!85, !84, !"_RNvXsC_NtCs9xaRPakndqT_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!86 = !{!85}
!87 = distinct !{!87, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types8datetime10PyDateTimeEIBD_NtNtB2p_3any5PyAnyEEEB1j_"}
!88 = distinct !{!88, !87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types8datetime10PyDateTimeEIBD_NtNtB2p_3any5PyAnyEEEB1j_: argument 0"}
!89 = !{!88}
!90 = distinct !{!90, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4list6PyListEIBD_NtNtB2p_3any5PyAnyEEEB1j_"}
!91 = distinct !{!91, !90, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4list6PyListEIBD_NtNtB2p_3any5PyAnyEEEB1j_: argument 0"}
!92 = !{!91}
!93 = distinct !{!93, i1 false, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskkCPRT7oCWw_16influxdb3_py_api"}
!94 = distinct !{!94, !93, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!95 = distinct !{!95, i1 false, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECskkCPRT7oCWw_16influxdb3_py_api"}
!96 = distinct !{!96, !95, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECskkCPRT7oCWw_16influxdb3_py_api: argument 0"}
!97 = !{i8 0, i8 2}
!98 = !{!96, !94}
end_hunk_0
