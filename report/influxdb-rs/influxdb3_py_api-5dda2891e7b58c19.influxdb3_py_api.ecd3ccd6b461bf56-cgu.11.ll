Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_py_api-5dda2891e7b58c19.influxdb3_py_api.ecd3ccd6b461bf56-cgu.11?download=true
inline.NumInlined: 281
inline.NumDeleted: 128
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4dict6PyDictEB2h_IBD_NtNtB2p_5bytes7PyBytesEIBD_NtNtB2p_3any5PyAnyEEEB1j_:bb.a
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val12) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit23

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit23: ; preds = %bb.i, %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4dict6PyDictEECskkCPRT7oCWw_16influxdb3_py_api.exit20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.u = load i64, ptr %.val, align 8, !noundef !3 ; 2 uses
  %i.v = and i64 %i.u, 2147483648
  %.not.i.i25 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i25, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit26

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit23
  %i.w = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.w, ptr %.val, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit26

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit26

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit26: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types5bytes7PyBytesEECskkCPRT7oCWw_16influxdb3_py_api.exit23, %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types4list6PyListEIBD_NtNtB2p_3any5PyAnyEEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val3 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.a = load i64, ptr %.val3, align 8, !noundef !3 ; 2 uses
  %i.b = and i64 %i.a, 2147483648
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -1                         ; 2 uses
  store i64 %i.c, ptr %.val3, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val3) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = load i64, ptr %.val4, align 8, !noundef !3 ; 2 uses
  %i.g = and i64 %i.f, 2147483648
  %.not.i.i7 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i7, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit
  %i.h = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.h, ptr %.val4, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val4) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8: ; preds = %bb.e, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.k = load i64, ptr %.val, align 8, !noundef !3 ; 2 uses
  %i.l = and i64 %i.k, 2147483648
  %.not.i.i10 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i10, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit11

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8
  %i.m = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit11

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit11

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit11: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit8, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEIBD_NtNtNtBH_5types8datetime10PyDateTimeEIBD_NtNtB2p_3any5PyAnyEEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val3 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.a = load i64, ptr %.val3, align 8, !noundef !3 ; 2 uses
  %i.b = and i64 %i.a, 2147483648
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -1                         ; 2 uses
  store i64 %i.c, ptr %.val3, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val3) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = load i64, ptr %.val4, align 8, !noundef !3 ; 2 uses
  %i.g = and i64 %i.f, 2147483648
  %.not.i.i7 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i7, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit
  %i.h = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.h, ptr %.val4, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val4) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8: ; preds = %bb.e, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEEB1i_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.k = load i64, ptr %.val, align 8, !noundef !3 ; 2 uses
  %i.l = and i64 %i.k, 2147483648
  %.not.i.i10 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i10, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit11

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8
  %i.m = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit11

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit11

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit11: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types8datetime10PyDateTimeEECskkCPRT7oCWw_16influxdb3_py_api.exit8, %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvNtB2_32fastcall_cfunction_with_keywords5inner0ONtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_RNvMNtNtCs9xaRPakndqT_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread57

.thread57:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.047.0.copyload = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.448.0.copyload = load ptr, ptr %.sroa.448.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.549.0.copyload = load ptr, ptr %.sroa.549.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.650.0.copyload = load ptr, ptr %.sroa.650.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.751.0.copyload = load ptr, ptr %.sroa.751.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %.sroa.047.0.copyload, align 8, !noalias !26, !nonnull !3, !noundef !3
  %i.j = load ptr, ptr %.sroa.448.0.copyload, align 8, !noalias !26, !noundef !3
  %i.k = load ptr, ptr %.sroa.549.0.copyload, align 8, !noalias !26, !noundef !3
  %i.l = load i64, ptr %.sroa.650.0.copyload, align 8, !noalias !26, !noundef !3
  %i.m = load ptr, ptr %.sroa.751.0.copyload, align 8, !noalias !26, !noundef !3
  invoke void %i.i(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef %i.j, ptr noundef %i.k, i64 noundef %i.l, ptr noundef %i.m)
          to label %bb.e unwind label %bb.c, !inline_history !25

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread70 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #17
  unreachable

.thread70:                                        ; preds = %bb.c
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload13 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.13.0.copyload28 = load ptr, ptr %.sroa.13.0..sroa_idx27, align 8
  %.sroa.14.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.844.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx31, i64 16, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load <2 x ptr>, ptr %.sroa.11.0..sroa_idx19, align 8
  %.sroa.11.0.copyload20 = load ptr, ptr %.sroa.11.0..sroa_idx19, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload13, ptr %i.c, align 8
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.440.0..sroa_idx, align 8
  store <2 x ptr> %i.t, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.13.0.copyload28, ptr %.sroa.743.0..sroa_idx, align 8
  %i.u = ptrtoint ptr %.sroa.0.0.copyload13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.u, label %.invoke [
    i64 2, label %bb.f
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit10
  ], !prof !27

bb.f:                                             ; preds = %.thread70, %bb.e
  %.sroa.0.0.4574 = phi ptr [ %i.r, %.thread70 ], [ %.sroa.8.0.copyload16, %bb.e ]
  %.sroa.8.8.4673 = phi ptr [ %i.s, %.thread70 ], [ %.sroa.11.0.copyload20, %bb.e ]
  invoke void @_RNvMNtCs9xaRPakndqT_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.4574, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.4673)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.b, %bb.f ], [ %.sroa.440.0..sroa_idx, %bb.e ]
  invoke void @_RNvMs0_NtNtCs9xaRPakndqT_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit10 unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCs9xaRPakndqT_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit10: ; preds = %.invoke, %bb.e
  %.sroa.0.0.i = phi ptr [ null, %.invoke ], [ %.sroa.8.0.copyload16, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtCs9xaRPakndqT_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread:                                          ; preds = %bb.g, %.thread57
  %.pn56 = phi { ptr, i32 } [ %i.h, %.thread57 ], [ %i.w, %bb.g ]
  invoke void @_RNvXs_NtNtCs9xaRPakndqT_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35impl_5panic9PanicTrapECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35impl_5panic9PanicTrapECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn56
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline21trampoline_unraisableNCNvB2_7dealloc0ECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 5 uses
  %i.b = alloca [48 x i8], align 16               ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 30, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = invoke noundef i32 @_RNvMNtNtCs9xaRPakndqT_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread8

.thread8:                                         ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.f, ptr %i.c, align 4
  %.val.i26 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.val1.i = load ptr, ptr %1, align 8, !noundef !3
  invoke void %.val.i26(ptr noundef %.val1.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.c, !inline_history !28

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = extractvalue { ptr, ptr } %i.j, 0
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs9xaRPakndqT_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.5.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.sroa.6.0..sroa_idx5, i64 32, i1 false)
  %i.n = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.n, ptr %i.a, align 16
  invoke void @_RNvMs0_NtNtCs9xaRPakndqT_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
          to label %bb.h unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.b, %bb.h
  call void @_RNvXs_NtNtCs9xaRPakndqT_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCs9xaRPakndqT_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.thread unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @PyErr_WriteUnraisable(ptr noundef null) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo38internal5state11AttachGuardECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.i:                                             ; preds = %.thread, %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread:                                          ; preds = %bb.g, %.thread8
  %.pn7 = phi { ptr, i32 } [ %i.g, %.thread8 ], [ %i.o, %bb.g ]
  invoke void @_RNvXs_NtNtCs9xaRPakndqT_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35impl_5panic9PanicTrapECskkCPRT7oCWw_16influxdb3_py_api.exit unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9xaRPakndqT_4pyo35impl_5panic9PanicTrapECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline32fastcall_cfunction_with_keywordsNtNvNvXsh_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyINtNtB4_7pyclass20PyClassImplCollectorNtB1p_15PyPluginCallApiEINtB2a_9PyMethodsB2J_E10py_methods5ITEMS3DefEB1r_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  store ptr @_RNvMsi_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB5_15PyPluginCallApi17___pymethod_info__, ptr %i.b, align 8
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
  %i.k = invoke fastcc noundef ptr @_RINvNtNtCs9xaRPakndqT_4pyo35impl_10trampoline10trampolineNCNvNtB2_32fastcall_cfunction_with_keywords5inner0ONtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtCs9xaRPakndqT_4pyo35types4dictINtNtB9_8instance5BoundNtB5_6PyDictENtB5_13PyDictMethods8set_itemReINtBG_2PyNtNtB7_4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api:bb.a
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit28

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %4) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit28: ; preds = %bb.j, %bb.i, %bb.h
  %i.o = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.p = and i64 %i.o, 2147483648
  %.not.i.i29 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i29, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit30

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit28
  %i.q = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.q, ptr %i.a, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit30

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #18
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit30

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit30: ; preds = %bb.l, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit28
  ret void

bb.m:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit26, %bb.b, %bb.c, %bb.o
  %.pn1735 = phi { ptr, i32 } [ %i.t, %bb.o ], [ %i.f, %bb.c ], [ %i.f, %bb.b ], [ %i.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEECskkCPRT7oCWw_16influxdb3_py_api.exit26 ]
  resume { ptr, i32 } %.pn1735

bb.o:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api(ptr nonnull %4) #19
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCs9xaRPakndqT_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheE21try_from_class_objectB11_(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsf_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB1a_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB1a_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs9xaRPakndqT_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCs9xaRPakndqT_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiE21try_from_class_objectB11_(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsf_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEINtB5_23PyClassObjectBaseLayoutB16_E17ensure_threadsafeB1a_(ptr noundef nonnull align 8 %0)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXsc_NtNtCs9xaRPakndqT_4pyo36pycell5impl_INtB5_19PyStaticClassObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEINtB5_19PyClassObjectLayoutB16_E14borrow_checkerB1a_(ptr noundef nonnull align 8 %0)
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs9xaRPakndqT_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.a)
  %. = select i1 %i.b, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheE8try_initB1p_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !40
  store ptr @_RNvNvXsh_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheNtB7_7PyCacheNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %i.a, align 8, !alias.scope !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXso_NtCskkCPRT7oCWw_16influxdb3_py_api5cacheINtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass20PyClassImplCollectorNtB7_7PyCacheEINtBO_9PyMethodsB1L_E10py_methods5ITEMS, ptr %i.c, align 8, !alias.scope !40
  call void @_RNvMs0_NtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RINvNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object18create_type_objectNtNtCskkCPRT7oCWw_16influxdb3_py_api5cache7PyCacheEB1f_, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiE8try_initB1p_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !43
  store ptr @_RNvNvXs9_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyNtB7_15PyPluginCallApiNtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %i.a, align 8, !alias.scope !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXsh_NtCskkCPRT7oCWw_16influxdb3_py_api9system_pyINtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass20PyClassImplCollectorNtB7_15PyPluginCallApiEINtBS_9PyMethodsB1P_E10py_methods5ITEMS, ptr %i.c, align 8, !alias.scope !43
  call void @_RNvMs0_NtNtNtCs9xaRPakndqT_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RINvNtNtCs9xaRPakndqT_4pyo37pyclass18create_type_object18create_type_objectNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py15PyPluginCallApiEB1f_, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RNvNvNtNtCskkCPRT7oCWw_16influxdb3_py_api9system_py16influxdb3_py_api9__PYO3_DEF18___pyo3_module_exec(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !59
  store ptr @0, ptr %i.g, align 8, !noalias !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 30, ptr %i.h, align 8, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !59
  %i.i = invoke noundef i32 @_RNvMNtNtCs9xaRPakndqT_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread32.i, !noalias !59

.thread32.i:                                      ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.i, ptr %i.f, align 4, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = icmp eq ptr %0, null
  br i1 %i.l, label %bb.c, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullNtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectEE11map_or_elseINtNtB5_6result6ResultINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB2A_5types3any5PyAnyENtNtB2A_3err5PyErrENCNvMsd_B2y_B2v_15from_ptr_or_err0NCB3X_s_0ECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  invoke void @_RNvMs_NtCs9xaRPakndqT_4pyo33errNtB4_5PyErr4take(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
          to label %.noexc12.i unwind label %bb.i, !noalias !59

.noexc12.i:                                       ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !5, !noalias !61, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %.noexc12.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !62
  br label %.noexc13.i

bb.e:                                             ; preds = %.noexc12.i
  invoke void @_RNvNtCs9xaRPakndqT_4pyo33err15failed_to_fetch(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
          to label %.noexc13.i unwind label %bb.i, !noalias !59

.noexc13.i:                                       ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61
  %.sroa.6.8.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !62
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.8.copyload.i.i.i.i, ptr %i.p, align 8, !noalias !59
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.414.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !59
  br label %bb.k

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullNtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectEE11map_or_elseINtNtB5_6result6ResultINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB2A_5types3any5PyAnyENtNtB2A_3err5PyErrENCNvMsd_B2y_B2v_15from_ptr_or_err0NCB3X_s_0ECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !63, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, @PyModule_Type
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %_RNvXNtCs9xaRPakndqT_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i.i

_RNvXNtCs9xaRPakndqT_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullNtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectEE11map_or_elseINtNtB5_6result6ResultINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB2A_5types3any5PyAnyENtNtB2A_3err5PyErrENCNvMsd_B2y_B2v_15from_ptr_or_err0NCB3X_s_0ECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i
  %i.s = tail call noundef i32 @PyType_IsSubtype(ptr noundef %i.r, ptr noundef nonnull @PyModule_Type) #18, !noalias !63
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvXNtCs9xaRPakndqT_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i.i
  %i.t = load i32, ptr @PyModule_Type, align 8, !noalias !63, !noundef !3
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6module8PyModuleECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.u, ptr @PyModule_Type, align 8, !noalias !63
  br label %_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6module8PyModuleECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i

_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6module8PyModuleECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXs1_NtNtCs9xaRPakndqT_4pyo33err10cast_errorNtB7_5PyErrINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noundef nonnull %0, ptr noundef nonnull @PyModule_Type)
          to label %bb.k unwind label %bb.i, !noalias !59

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ptr8non_null7NonNullNtNtCs6xk7itoKRsk_8pyo3_ffi6object8PyObjectEE11map_or_elseINtNtB5_6result6ResultINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB2A_5types3any5PyAnyENtNtB2A_3err5PyErrENCNvMsd_B2y_B2v_15from_ptr_or_err0NCB3X_s_0ECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i, %_RNvXNtCs9xaRPakndqT_4pyo311type_objectNtNtNtB4_5types6module8PyModuleNtB2_11PyTypeCheck10type_checkCskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.x, align 4, !noalias !59
  br label %bb.k

bb.i:                                             ; preds = %_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6module8PyModuleECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i, %bb.e, %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.z)
          to label %.thread39.i unwind label %bb.j, !noalias !59 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #17, !noalias !59
  unreachable

.thread39.i:                                      ; preds = %bb.i
  %i.ac = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = extractvalue { ptr, ptr } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !59
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6module8PyModuleECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i, %.noexc13.i
  %.sink.i.i.i = phi i32 [ 1, %.noexc13.i ], [ 0, %bb.h ], [ 1, %_RINvNvMsb_NtCs9xaRPakndqT_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6module8PyModuleECskkCPRT7oCWw_16influxdb3_py_api.exit.i.i.i.i ]
  store i32 %.sink.i.i.i, ptr %i.c, align 8, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  %.sroa.0.0.copyload17.i = load ptr, ptr %i.c, align 8, !noalias !59 ; 2 uses
  %.sroa.8.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0.copyload19.i = load ptr, ptr %.sroa.8.0..sroa_idx18.i, align 8, !noalias !59 ; 2 uses
  %.sroa.12.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.525.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx21.i, i64 40, i1 false), !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59
  store ptr %.sroa.0.0.copyload17.i, ptr %i.e, align 8, !noalias !59
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload19.i, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !59
  %i.ae = ptrtoint ptr %.sroa.0.0.copyload17.i to i64 ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !59
  switch i32 %i.af, label %.invoke.i [
    i32 2, label %._crit_edge.i
    i32 0, label %bb.m
  ], !prof !64

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load ptr, ptr %.sroa.525.0..sroa_idx.i, align 8, !alias.scope !65, !noalias !59
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %.thread39.i
  %i.ag = phi ptr [ %i.ad, %.thread39.i ], [ %.pre.i, %._crit_edge.i ]
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
end_hunk_1
