Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.11?download=true
inline.NumInlined: 5809
inline.NumDeleted: 2024
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB18_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl13ViewColumnDefENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB3E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0EINtNtB1c_6result6ResultNtNtB1c_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEENtB2J_5IdentECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  %i.n = lshr exact i64 %i.m, 6                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl13ViewColumnDefE32forget_allocation_drop_remainingCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl13ViewColumnDefNtB1O_5IdentEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = and i64 %i.g, 56
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %i.s = lshr i64 %i.g, 6
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl13ViewColumnDefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -64                        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #43
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.v) #43 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !89

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #44
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl13ViewColumnDefENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB3f_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB18_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB3E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB1c_6result6ResultNtNtB1c_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEINtNtB6_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB30_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtNtB1l_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB9d_E0IB69_B8C_zEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB3f_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeE32forget_allocation_drop_remainingCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeINtNtBI_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = mul nuw i64 %i.c, 7
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB3f_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB4_9into_iter8IntoIterINtNtB1c_6result6ResultNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtNtB2P_5error15DataFusionErrorEEIB2p_NtNtB1c_7convert10InfallibleB3A_EEB2L_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCs4NRVxsYgnAr_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtNtB2b_5error15DataFusionErrorEEIB1M_NtNtB7_7convert10InfallibleB2W_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB13_13in_place_drop11InPlaceDropB27_ENCINvNtB13_16in_place_collect24write_in_place_with_dropB27_E0IB1M_B4M_zEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtNtB1B_5error15DataFusionErrorEENtNtNtB10_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtNtB2q_5error15DataFusionErrorEEIB21_NtNtB4_7convert10InfallibleB3b_EEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtNtB1B_5error15DataFusionErrorEE32forget_allocation_drop_remainingCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6result6ResultNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtNtB2a_5error15DataFusionErrorEB26_EECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtNtB1B_5error15DataFusionErrorEENtNtNtB10_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnNtNtB2q_5error15DataFusionErrorEEIB21_NtNtB4_7convert10InfallibleB3b_EEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB3E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0ENtNtB2C_4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = mul i64 %i.c, 416                        ; 7 uses
  %i.h = udiv i64 %i.g, 112                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = invoke { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB10_4expr4ExprENCINvNtNtB21_8adapters10filter_map19filter_map_try_foldBW_B3z_B2Z_INtNtB23_6result6ResultB2Z_zENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB5w_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3z_E0E0B4W_ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias noundef nonnull %i.i, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.k, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB3g_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0EECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 112                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.r, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprE32forget_allocation_drop_remainingCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprNtNtB1O_4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.t = mul nuw i64 %i.h, 112                    ; 4 uses
  %i.u = icmp ne i64 %i.g, %i.t
  %or.cond = select i1 %.not.i, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprNtNtB14_4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprNtNtB14_4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 16 to ptr), %2 ], [ %i.z, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 16 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.g, 112
  br i1 %i.x, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprNtNtB14_4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 16) #43
  br label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprNtNtB14_4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.y = icmp ule i64 %i.t, %i.g
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 16, i64 noundef %i.t) #43 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprNtNtB14_4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread, !prof !23

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.t) #44
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB3g_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB36_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs1_0ENtNtB6_6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = shl i64 %i.c, 6                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB2w_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB6V_E0INtNtBc_6result6ResultB6k_zEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB2I_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs1_0EECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentE32forget_allocation_drop_remainingCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentNtNtBI_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #43 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !89

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #44
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB2I_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs1_0EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB36_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0ENtNtB6_6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = shl i64 %i.c, 6                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB2w_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB6U_E0INtNtBc_6result6ResultB6j_zEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB2I_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0EECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentE32forget_allocation_drop_remainingCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentNtNtBI_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #43 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !89

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #44
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB2I_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB3h_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_implse_0ENtNtB2o_5query11OrderByExprECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = mul i64 %i.c, 1384                       ; 7 uses
  %i.h = udiv i64 %i.g, 1320                      ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2H_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_implse_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB1O_5query11OrderByExprENCINvNtB12_16in_place_collect24write_in_place_with_dropB77_E0INtNtBc_6result6ResultB6w_zEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2T_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_implse_0EECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 1320                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnE32forget_allocation_drop_remainingCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnNtNtB1O_5query11OrderByExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 1320                   ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnNtNtB14_5query11OrderByExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnNtNtB14_5query11OrderByExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 1320
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnNtNtB14_5query11OrderByExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #43
  br label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnNtNtB14_5query11OrderByExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #43 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnNtNtB14_5query11OrderByExprECs43kcu4yvms7_24influxdb3_query_executor.exit.thread, !prof !23

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #44
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3ddl11IndexColumnENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2T_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_implse_0EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCs1eXVLxSVbjH_14datafusion_sql7plannerINtB3s_8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17apply_table_alias0ENtB2o_5IdentECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = mul i64 %i.c, 120                        ; 5 uses
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCs1eXVLxSVbjH_14datafusion_sql7plannerINtB2S_8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17apply_table_alias0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1O_5IdentENCINvNtB12_16in_place_collect24write_in_place_with_dropB6J_E0INtNtBc_6result6ResultB68_zEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query19TableAliasColumnDefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCs1eXVLxSVbjH_14datafusion_sql7plannerINtB34_8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17apply_table_alias0EECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 6                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query19TableAliasColumnDefE32forget_allocation_drop_remainingCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query19TableAliasColumnDefNtB1O_5IdentEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a) #45
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = and i64 %i.g, 56
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %i.s = lshr i64 %i.g, 6
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query19TableAliasColumnDefENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -64                        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #43
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.v) #43 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !89

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #44
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCs1eXVLxSVbjH_14datafusion_sql7plannerINtB34_8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17apply_table_alias0EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan7channelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_7bounded9SemaphoreECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [512 x i8], align 128             ; 15 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @_RINvNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4list7channelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(48) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 1, ptr %i.a, align 128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 128
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.8.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i8 0, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  store i64 0, ptr %.sroa.12.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !19438
  %i.f = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #43, !noalias !19438 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB14_7bounded9SemaphoreEEE3newCs43kcu4yvms7_24influxdb3_query_executor.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #44
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB1i_7bounded9SemaphoreEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 128 dereferenceable(512) %i.a) #45
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB14_7bounded9SemaphoreEEE3newCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.f, ptr noundef nonnull align 128 dereferenceable(512) %i.a, i64 512, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB14_7bounded9SemaphoreEEE3newCs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.f, 1
  ret { ptr, ptr } %i.m

bb.g:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB14_7bounded9SemaphoreEEE3newCs43kcu4yvms7_24influxdb3_query_executor.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19441)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !16

end_hunk_0
