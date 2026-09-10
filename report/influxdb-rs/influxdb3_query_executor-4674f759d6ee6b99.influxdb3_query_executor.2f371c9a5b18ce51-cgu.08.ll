Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.08?download=true
inline.NumInlined: 4085
inline.NumDeleted: 1767
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4O_B34_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB5E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB28_8MapEntryEIB9o_B1y_ENCB5z_0EB5x_EIB2J_NtNtBb_7convert10InfallibleB3N_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBba_12try_for_each4callB34_B5m_NcNtB5m_5Break0E0B5m_E0E0INtB7_5FnMutTuB1y_EE8call_mutCs43kcu4yvms7_24influxdb3_query_executor:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !6379, !noalias !6380, !nonnull !20, !align !31, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j)
          to label %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.b, !noalias !6383

common.resume.i:                                  ; preds = %bb.f, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %2, i64 noundef 328, i64 noundef 8) #31, !noalias !6382
  br label %common.resume.i

_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6381
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %2, i64 noundef 328, i64 noundef 8) #31, !noalias !6382
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !6383 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i)
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.m = load i64, ptr %.val, align 8, !range !25, !alias.scope !6385, !noalias !6386, !noundef !20
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.f, !noalias !6386

bb.e:                                             ; preds = %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !6383
  %.sroa.410.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false), !noalias !6383
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 16, !alias.scope !6387, !noalias !6388
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.418.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false), !noalias !6388
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4f_B2v_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB5b_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtB14_3vec9into_iter8IntoIterNtB1z_8MapEntryEIB8V_BZ_ENCB56_0EB54_EIB2a_NtNtBa_7convert10InfallibleB3e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaG_12try_for_each4callB2v_B4T_NcNtB4T_5Break0E0B4T_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !6383
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !6383
  store i64 -2, ptr %0, align 16, !alias.scope !6387, !noalias !6388
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4f_B2v_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB5b_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtB14_3vec9into_iter8IntoIterNtB1z_8MapEntryEIB8V_BZ_ENCB56_0EB54_EIB2a_NtNtBa_7convert10InfallibleB3e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaG_12try_for_each4callB2v_B4T_NcNtB4T_5Break0E0B4T_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4f_B2v_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB5b_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtB14_3vec9into_iter8IntoIterNtB1z_8MapEntryEIB8V_BZ_ENCB56_0EB54_EIB2a_NtNtBa_7convert10InfallibleB3e_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaG_12try_for_each4callB2v_B4T_NcNtB4T_5Break0E0B4T_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11WasmValTypeuNCINvMsv_B1v_NtB1v_8FuncType27with_finality_and_supertypeINtNtBV_5chain5ChainINtNtBb_6option8IntoIterB1t_EINtNtNtBb_5array4iter8IntoIterB1t_Kj1_EEIB4V_B1t_Kj0_EEs_0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callB2i_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6W_3VecB2i_E14extend_trustedINtBT_3MapB47_B3c_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [152 x i8], align 8               ; 11 uses
  %i.d = alloca [160 x i8], align 8               ; 15 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !20, !align !31, !noundef !20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6417)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !6417, !noalias !6418, !nonnull !20, !align !31, !noundef !20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !6417, !noalias !6418, !nonnull !20, !align !31, !noundef !20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(152) %1, i64 152, i1 false), !noalias !6420
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %.val2.i, ptr %i.i, align 8, !noalias !6419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6423)
  %i.j = load ptr, ptr %.val.i, align 8, !alias.scope !6421, !noalias !6424, !nonnull !20, !align !31, !noundef !20
  %.sink1.i.i.i.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %.sink1.i.i.i.i.sroa.gep1.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 8 uses
  %i.k = invoke noundef zeroext i1 @_RNvMs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB5_7ValType22comes_from_same_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.c unwind label %bb.b, !noalias !6425

bb.b:                                             ; preds = %bb.ae, %bb.x, %bb.n, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.z, %bb.q, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.q ], [ %i.l, %bb.b ], [ %i.ar, %bb.z ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.d) #36
          to label %common.resume.i.i.i unwind label %bb.ak, !noalias !6426

bb.c:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.e, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #35
          to label %bb.f unwind label %bb.b, !noalias !6425

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !6421, !noalias !6424, !nonnull !20, !align !31, !noundef !20
  %i.o = load ptr, ptr %i.n, align 8, !noalias !6425, !align !31, !noundef !20
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6427
  %i.p = load i64, ptr %i.d, align 8, !range !85, !alias.scope !6422, !noalias !6425, !noundef !20
  switch i64 %i.p, label %bb.n [
    i64 -9223372036854775789, label %bb.i
    i64 -9223372036854775788, label %bb.j
    i64 -9223372036854775787, label %bb.k
    i64 -9223372036854775786, label %bb.l
    i64 -9223372036854775785, label %bb.m
  ]

bb.h:                                             ; preds = %bb.v
  unreachable

bb.i:                                             ; preds = %bb.g
  store i64 -9223372036854775789, ptr %i.c, align 8, !noalias !6427
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  store i64 -9223372036854775788, ptr %i.c, align 8, !noalias !6427
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  store i64 -9223372036854775787, ptr %i.c, align 8, !noalias !6427
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  store i64 -9223372036854775786, ptr %i.c, align 8, !noalias !6427
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  store i64 -9223372036854775785, ptr %i.c, align 8, !noalias !6427
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.r = load i8, ptr %i.q, align 8, !range !28, !alias.scope !6422, !noalias !6425, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6427
  invoke fastcc void @_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.d)
          to label %bb.s unwind label %bb.b, !noalias !6425

bb.o:                                             ; preds = %bb.s, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !6428, !noalias !6429, !noundef !20 ; 3 uses
  %i.u = load i64, ptr %.val2.i, align 8, !range !57, !alias.scope !6428, !noalias !6429, !noundef !20
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val2.i)
          to label %bb.t unwind label %bb.q, !noalias !6430

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.c) #36
          to label %.body.i.i.i unwind label %bb.r, !noalias !6426

bb.r:                                             ; preds = %bb.q
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !6426
  unreachable

bb.s:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !6427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6427
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6427
  br label %bb.o

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6428, !noalias !6429, !nonnull !20, !noundef !20
  %i.aa = getelementptr inbounds nuw [152 x i8], ptr %i.z, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.aa, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !6426
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !6428, !noalias !6429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6427
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.e
  %i.ac = load i64, ptr %i.d, align 8, !range !85, !alias.scope !6422, !noalias !6425, !noundef !20 ; 3 uses
  %i.ad = add i64 %i.ac, 9223372036854775784
  %2 = icmp ult i64 %i.ad, -5
  br i1 %2, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.ae = icmp ne i64 %i.ac, -9223372036854775795
  call void @llvm.assume(i1 %i.ae)
  %i.af = xor i64 %i.ac, -9223372036854775808     ; 2 uses
  %i.ag = icmp ult i64 %i.af, 19
  %i.ah = select i1 %i.ag, i64 %i.af, i64 13
  switch i64 %i.ah, label %bb.h [
    i64 0, label %bb.ae
    i64 1, label %bb.ae
    i64 2, label %bb.ae
    i64 3, label %bb.x
    i64 4, label %bb.ae
    i64 5, label %bb.ae
    i64 6, label %bb.ae
    i64 7, label %bb.ae
    i64 8, label %bb.ae
    i64 9, label %bb.x
    i64 10, label %bb.ae
    i64 11, label %bb.x
    i64 12, label %bb.ae
    i64 13, label %bb.w
    i64 14, label %bb.x
    i64 15, label %bb.ae
    i64 16, label %bb.ae
    i64 17, label %bb.ae
    i64 18, label %bb.ae
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.v, %bb.v, %bb.v
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sink1.i.i.i.i.sroa.gep1.i.i, %bb.v ], [ %.sink1.i.i.i.i.sroa.gep.i.i, %bb.w ], [ %.sink1.i.i.i.i.sroa.gep1.i.i, %bb.v ], [ %.sink1.i.i.i.i.sroa.gep1.i.i, %bb.v ], [ %.sink1.i.i.i.i.sroa.gep1.i.i, %bb.v ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !6421, !noalias !6424, !nonnull !20, !align !31, !noundef !20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6427
  invoke void @_RNvXs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sink.i.sroa.phi.i.i)
          to label %bb.y unwind label %bb.b, !noalias !6426

bb.y:                                             ; preds = %bb.x
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 288 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !6431, !noalias !6432, !noundef !20 ; 2 uses
  %i.am = icmp ugt i64 %i.al, 4                   ; 2 uses
  %i.an = load ptr, ptr %i.aj, align 8, !alias.scope !6431, !noalias !6432, !nonnull !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %.sink9.i.i.i.i.i = select i1 %i.am, ptr %i.an, ptr %i.aj
  %.sink8.i.i.i.i.i = select i1 %i.am, ptr %i.ao, ptr %i.ak ; 2 uses
  %.sink.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 4)
  %i.ap = load i64, ptr %.sink8.i.i.i.i.i, align 8, !alias.scope !6433, !noalias !6434, !noundef !20 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %.sink.i.i.i.i.i
  br i1 %i.aq, label %bb.aa, label %bb.ad, !prof !18

bb.z:                                             ; preds = %bb.aa
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #36
          to label %.body.i.i.i unwind label %bb.ac, !noalias !6426

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvMsd_CsaPYpPPxBPjS_8smallvecINtB5_8SmallVecANtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypej4_E21reserve_one_uncheckedCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.aj)
          to label %bb.ab unwind label %bb.z, !noalias !6434

bb.ab:                                            ; preds = %bb.aa
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !6433, !noalias !6434, !nonnull !20, !noundef !20
  %.pre.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !6433, !noalias !6434
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !6426
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.y
  %i.au = phi i64 [ %.pre.i.i.i.i, %bb.ab ], [ %i.ap, %bb.y ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.ao, %bb.ab ], [ %.sink8.i.i.i.i.i, %bb.y ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.as, %bb.ab ], [ %.sink9.i.i.i.i.i, %bb.y ]
  %i.av = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.i.i.i.i, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !6426
  %i.aw = load i64, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !6433, !noalias !6434, !noundef !20
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !6433, !noalias !6434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6427
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.u
  invoke void @_RNvMs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB5_7ValType12to_wasm_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.d)
          to label %bb.af unwind label %bb.b, !noalias !6435

bb.af:                                            ; preds = %bb.ae
  %i.ay = load i64, ptr %i.d, align 8, !range !85, !alias.scope !6436, !noalias !6425, !noundef !20 ; 3 uses
  %i.az = add i64 %i.ay, 9223372036854775789
  %switch.i.i.i.i = icmp ult i64 %i.az, 5
  br i1 %switch.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11WasmValTypeuNCINvMsv_BW_NtBW_8FuncType27with_finality_and_supertypeINtNtB6_5chain5ChainINtNtBa_6option8IntoIterBU_EINtNtNtBa_5array4iter8IntoIterBU_Kj1_EEIB4j_BU_Kj0_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6i_3VecB1J_E14extend_trustedINtB4_3MapB3w_B2D_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ba = icmp ne i64 %i.ay, -9223372036854775795
  call void @llvm.assume(i1 %i.ba)
  %i.bb = xor i64 %i.ay, -9223372036854775808     ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 19
  %i.bd = select i1 %i.bc, i64 %i.bb, i64 13
  switch i64 %i.bd, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11WasmValTypeuNCINvMsv_BW_NtBW_8FuncType27with_finality_and_supertypeINtNtB6_5chain5ChainINtNtBa_6option8IntoIterBU_EINtNtNtBa_5array4iter8IntoIterBU_Kj1_EEIB4j_BU_Kj0_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6i_3VecB1J_E14extend_trustedINtB4_3MapB3w_B2D_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit [
    i64 3, label %.sink.split.i.i.i.i.i.i
    i64 9, label %.sink.split.i.i.i.i.i.i
    i64 11, label %.sink.split.i.i.i.i.i.i
    i64 13, label %bb.ah
    i64 14, label %.sink.split.i.i.i.i.i.i
  ]

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.ah, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %.sink1.i.i.i.i.sroa.phi.i.i = phi ptr [ %.sink1.i.i.i.i.sroa.gep.i.i, %bb.ah ], [ %.sink1.i.i.i.i.sroa.gep1.i.i, %bb.ag ], [ %.sink1.i.i.i.i.sroa.gep1.i.i, %bb.ag ], [ %.sink1.i.i.i.i.sroa.gep1.i.i, %bb.ag ], [ %.sink1.i.i.i.i.sroa.gep1.i.i, %bb.ag ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %.sink1.i.i.i.i.sroa.phi.i.i), !noalias !6426
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11WasmValTypeuNCINvMsv_BW_NtBW_8FuncType27with_finality_and_supertypeINtNtB6_5chain5ChainINtNtBa_6option8IntoIterBU_EINtNtNtBa_5array4iter8IntoIterBU_Kj1_EEIB4j_BU_Kj0_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6i_3VecB1J_E14extend_trustedINtB4_3MapB3w_B2D_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.d)
          to label %.sink.split.i.i.i.i.i.i unwind label %bb.ai, !noalias !6426

bb.ai:                                            ; preds = %bb.ah
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %.sink1.i.i.i.i.sroa.gep.i.i) #36
          to label %common.resume.i.i.i unwind label %bb.aj, !noalias !6426

bb.aj:                                            ; preds = %bb.ai
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !6426
  unreachable

common.resume.i.i.i:                              ; preds = %bb.ai, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.be, %bb.ai ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.ak:                                            ; preds = %.body.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !6426
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11WasmValTypeuNCINvMsv_BW_NtBW_8FuncType27with_finality_and_supertypeINtNtB6_5chain5ChainINtNtBa_6option8IntoIterBU_EINtNtNtBa_5array4iter8IntoIterBU_Kj1_EEIB4j_BU_Kj0_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6i_3VecB1J_E14extend_trustedINtB4_3MapB3w_B2D_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.af, %bb.ag, %.sink.split.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6419
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !6437, !noalias !6438, !noundef !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !6437, !noalias !6438, !noundef !20 ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !6435
  %i.bm = add i64 %i.bk, 1
  store i64 %i.bm, ptr %i.bj, align 8, !alias.scope !6437, !noalias !6438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1u_EB2d_NCINvNtB1y_5utils19find_exprs_in_exprsNCINvB2X_17find_window_exprsINtNtBV_5chain5ChainINtNtNtBb_5slice4iter4IterB1u_EINtNtBb_6option4IterB1u_EEE0B3W_E0NCINvNvMsg_NtBV_7flattenINtB5u_13FlattenCompatppE9iter_fold7flattenB2d_B2d_NCINvNvXsi_B5u_B5H_NtNtNtBX_6traits8iterator8Iterator4fold7flattenINtNtB2g_9into_iter8IntoIterB1u_EB2d_NCB2U_s_0E0E0E0INtB7_5FnMutTB2d_B1t_EE8call_mutCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !20, !align !31, !noundef !20 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !20, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6447
  invoke void @_RINvNtCs7fnekraeopg_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_17find_window_exprsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB1z_5slice4iter4IterNtNtB4_4expr4ExprEINtNtB1z_6option4IterB2J_EEE0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val1)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtNtCscdodAO9FK5_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2n_17find_window_exprsINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEE0B3l_E0NCINvNvMsg_NtB6_7flattenINtB4R_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B4R_B54_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2k_s_0E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.c, !noalias !6449

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %bb.b unwind label %bb.d, !noalias !6449

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !6449
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtNtCscdodAO9FK5_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2n_17find_window_exprsINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEE0B3l_E0NCINvNvMsg_NtB6_7flattenINtB4R_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B4R_B54_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2k_s_0E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !6448
  %.sroa.4.24.copyload.i = load i64, ptr %i.b, align 8, !noalias !6447
  %.sroa.6.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.24.copyload.i = load ptr, ptr %.sroa.6.24..sroa_idx.i, align 8, !noalias !6447, !nonnull !20, !noundef !20 ; 3 uses
  %.sroa.7.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.24.copyload.i = load i64, ptr %.sroa.7.24..sroa_idx.i, align 8, !noalias !6447 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = icmp ult i64 %.sroa.7.24.copyload.i, 82351536043346213
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [112 x i8], ptr %.sroa.6.24.copyload.i, i64 %.sroa.7.24.copyload.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %.sroa.6.24.copyload.i, ptr %i.j, align 8, !noalias !6450
end_hunk_0
