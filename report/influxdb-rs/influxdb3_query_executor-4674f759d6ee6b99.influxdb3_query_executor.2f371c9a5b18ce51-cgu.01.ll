Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.01?download=true
inline.NumInlined: 8762
inline.NumDeleted: 2773
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB2C_7sources4once4OnceB12_EINtNtB6_9into_iter8IntoIterB12_EEE9from_iterCs43kcu4yvms7_24influxdb3_query_executor:bb.a
bb.q:                                             ; preds = %bb.s, %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.r:                                             ; preds = %.body, %bb.s
  %.pn7 = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.s:                                             ; preds = %bb.f, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1r_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtBI_7sources4once4OnceNtNtCs7fnekraeopg_15datafusion_expr11select_expr10SelectExprEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1F_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(448) %1) #23
          to label %bb.r unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtB12_6Column0EE9from_iterCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !97, !noundef !97
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !97, !noundef !97
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 16, i64 noundef 112)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !range !101, !noundef !97
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !249, !noundef !97 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !99

bb.b:                                             ; preds = %.noexc
  %i.p = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #21
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !97, !noundef !97 ; 2 uses
  %i.r = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14668)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !14669, !nonnull !97, !noundef !97
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val5.i.i = load ptr, ptr %i.v, align 8, !alias.scope !14669, !nonnull !97, !noundef !97
  %i.w = ptrtoint ptr %.val5.i.i to i64
  %i.x = ptrtoint ptr %.val.i.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 104                 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, %i.n
  br i1 %i.aa, label %bb.d, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtBF_6Column0EECs43kcu4yvms7_24influxdb3_query_executor.exit.i, !prof !99

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.z, i64 noundef 16, i64 noundef 112)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i unwind label %bb.e, !noalias !14669

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i: ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.t, align 8, !alias.scope !14670
  %.pre = load ptr, ptr %i.s, align 8, !alias.scope !14670
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtBF_6Column0EECs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.e:                                             ; preds = %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtBF_6Column0EECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i, %bb.c
  %i.ac = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i ], [ %i.q, %bb.c ]
  %i.ad = phi i64 [ %.pre.i.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14671
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !14671
  store ptr %i.t, ptr %i.a, align 8, !noalias !14671
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !noalias !14671
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtNtNtCs7fnekraeopg_15datafusion_expr4expr4Expr6Column0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callB2E_NCINvMsj_B12_INtB12_3VecB4z_E14extend_trustedBN_E0E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtBF_6Column0EECs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %lpad.thr_comm.i.i, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.d) #23
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtNtNtCs7fnekraeopg_15datafusion_expr4expr4Expr6Column0EECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.i

bb.h:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtBF_6Column0EECs43kcu4yvms7_24influxdb3_query_executor.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtNtNtCs7fnekraeopg_15datafusion_expr4expr4Expr6Column0EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.j, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ai, %bb.j ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENcNtNtNtCs7fnekraeopg_15datafusion_expr4expr4Expr6Column0EECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterAB12_j2_EEE9from_iterCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [240 x i8], align 16              ; 9 uses
  %i.g = alloca [240 x i8], align 16              ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [544 x i8], align 16              ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [544 x i8], align 16              ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = load i128, ptr %1, align 16, !range !145, !alias.scope !14770, !noundef !97
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load i64, ptr %i.n, align 16, !alias.scope !14770
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !14770
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i128, ptr %i.p, align 16, !range !145, !alias.scope !14770, !noundef !97
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val.i58.i.i = load i64, ptr %i.r, align 16, !alias.scope !14770
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val4.i59.i.i = load i64, ptr %i.s, align 8, !alias.scope !14770
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.u = load ptr, ptr %i.t, align 16, !alias.scope !14770, !noundef !97
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !14770, !nonnull !97, !noundef !97
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.val56.i.i = load ptr, ptr %i.w, align 8, !alias.scope !14770, !nonnull !97, !noundef !97
  %i.x = ptrtoint ptr %.val56.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 224
  %i.ab = shl nuw nsw i64 %i.aa, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.871.0.i.i = phi i64 [ %i.ab, %bb.b ], [ 0, %bb.a ]
  %i.ac = trunc nuw i128 %i.q to i1
  %i.ad = sub nuw i64 %.val4.i59.i.i, %.val.i58.i.i
  %.sroa.8.0.i.i = select i1 %i.ac, i64 %i.ad, i64 0
  %i.ae = trunc nuw i128 %i.m to i1
  %i.af = sub nuw i64 %.val4.i.i.i, %.val.i.i.i
  %.sroa.7.0.i.i = select i1 %i.ae, i64 %i.af, i64 0 ; 2 uses
  %i.ag = add i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i  ; 3 uses
  %.not74.i.i = icmp uge i64 %i.ag, %.sroa.7.0.i.i ; 2 uses
  %i.ah = add i64 %.sroa.871.0.i.i, %i.ag         ; 2 uses
  %i.ai = icmp uge i64 %i.ah, %i.ag
  %or.cond.not.i.i = select i1 %.not74.i.i, i1 %i.ai, i1 false, !prof !14771
  %.sroa.8.3.i.i = select i1 %.not74.i.i, i64 %i.ah, i64 undef, !prof !14771 ; 2 uses
  br i1 %or.cond.not.i.i, label %bb.d, label %bb.f, !prof !102

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.sroa.8.3.i.i, i1 noundef zeroext false, i64 noundef 16, i64 noundef 112)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.d
  %i.aj = load i64, ptr %i.j, align 8, !range !101, !noundef !97
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !249, !noundef !97 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.g, !prof !99

bb.e:                                             ; preds = %.noexc
  %i.ao = load i64, ptr %i.an, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #21
          to label %.noexc3 unwind label %bb.ah

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #21
          to label %bb.af unwind label %bb.ah

bb.g:                                             ; preds = %.noexc
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !97, !noundef !97 ; 2 uses
  %i.aq = icmp ule i64 %.sroa.8.3.i.i, %i.am
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.am, ptr %i.l, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.k, ptr noundef nonnull align 16 dereferenceable(544) %1, i64 544, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14775)
  %i.at = load i128, ptr %i.k, align 16, !range !145, !alias.scope !14776, !noundef !97
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val.i.i.i.i.i = load i64, ptr %i.au, align 16, !alias.scope !14776
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.val4.i.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !14776
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.ax = load i128, ptr %i.aw, align 16, !range !145, !alias.scope !14776, !noundef !97
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %.val.i58.i.i.i.i = load i64, ptr %i.ay, align 16, !alias.scope !14776
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %.val4.i59.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !14776
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  %i.bb = load ptr, ptr %i.ba, align 16, !alias.scope !14776, !noundef !97
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 520
  %.val.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !14776, !nonnull !97, !noundef !97
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 536
  %.val56.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !14776, !nonnull !97, !noundef !97
  %i.be = ptrtoint ptr %.val56.i.i.i.i to i64
  %i.bf = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bg = sub nuw i64 %i.be, %i.bf
  %i.bh = udiv exact i64 %i.bg, 224
  %i.bi = shl nuw nsw i64 %i.bh, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.871.0.i.i.i.i = phi i64 [ %i.bi, %bb.h ], [ 0, %bb.g ]
  %i.bj = trunc nuw i128 %i.ax to i1
  %i.bk = sub nuw i64 %.val4.i59.i.i.i.i, %.val.i58.i.i.i.i
  %.sroa.8.0.i.i.i.i = select i1 %i.bj, i64 %i.bk, i64 0
  %i.bl = trunc nuw i128 %i.at to i1
  %i.bm = sub nuw i64 %.val4.i.i.i.i.i, %.val.i.i.i.i.i
  %.sroa.7.0.i.i.i.i = select i1 %i.bl, i64 %i.bm, i64 0 ; 2 uses
  %i.bn = add i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i ; 3 uses
  %.not74.i.i.i.i = icmp uge i64 %i.bn, %.sroa.7.0.i.i.i.i ; 2 uses
  %i.bo = add i64 %.sroa.871.0.i.i.i.i, %i.bn     ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bn
  %or.cond.not.i.i.i.i = select i1 %.not74.i.i.i.i, i1 %i.bp, i1 false, !prof !14771
  %.sroa.8.3.i.i.i.i = select i1 %.not74.i.i.i.i, i64 %i.bo, i64 undef, !prof !14771 ; 2 uses
  br i1 %or.cond.not.i.i.i.i, label %bb.j, label %bb.l, !prof !102

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp ugt i64 %.sroa.8.3.i.i.i.i, %i.am
  br i1 %i.bq, label %bb.k, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, !prof !99

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0, i64 noundef %.sroa.8.3.i.i.i.i, i64 noundef 16, i64 noundef 112)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i unwind label %bb.ab, !noalias !14777

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i: ; preds = %bb.k
  %.pre.i.i = load i64, ptr %i.as, align 8, !alias.scope !14778
  %.pre = load ptr, ptr %i.ar, align 8, !alias.scope !14778
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %bb.aa unwind label %bb.ab, !noalias !14777

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i, %bb.j
  %i.br = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i ], [ %i.ap, %bb.j ]
  %i.bs = phi i64 [ %.pre.i.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i ], [ 0, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.i, ptr noundef nonnull align 16 dereferenceable(544) %1, i64 544, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14781
  store ptr %i.as, ptr %i.h, align 8, !noalias !14782
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store i64 %i.bs, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14782
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.br, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !14782
  call void @llvm.experimental.noalias.scope.decl(metadata !14783)
  call void @llvm.experimental.noalias.scope.decl(metadata !14784)
  %i.bt = load i128, ptr %i.i, align 16, !range !145, !alias.scope !14785, !noalias !14779, !noundef !97
  %i.bu = trunc nuw i128 %i.bt to i1
  br i1 %i.bu, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14786
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.g, ptr noundef nonnull align 16 dereferenceable(240) %i.bv, i64 240, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14787)
  call void @llvm.experimental.noalias.scope.decl(metadata !14788)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14789
  store ptr %i.bw, ptr %i.d, align 8, !noalias !14789
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 2, ptr %i.bx, align 8, !noalias !14789
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.by, align 8, !noalias !14789
  call void @llvm.experimental.noalias.scope.decl(metadata !14790)
  call void @llvm.experimental.noalias.scope.decl(metadata !14791)
  %i.bz = load i64, ptr %i.g, align 16, !alias.scope !14792, !noalias !14786, !noundef !97 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !14792, !noalias !14786, !noundef !97 ; 3 uses
  %i.cc = icmp ule i64 %i.bz, %i.cb
  call void @llvm.assume(i1 %i.cc)
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bz, %i.cb
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m, %.noexc.i.i.i.i.i.i.i.i
  %i.cd = phi i64 [ %i.ce, %.noexc.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ] ; 3 uses
  %i.ce = add nuw i64 %i.cd, 1                    ; 3 uses
  store i64 %i.ce, ptr %i.g, align 16, !alias.scope !14792, !noalias !14786
  call void @llvm.experimental.noalias.scope.decl(metadata !14793)
  %i.cf = load ptr, ptr %i.d, align 8, !alias.scope !14794, !noalias !14789, !nonnull !97, !align !113, !noundef !97
  %i.cg = load i64, ptr %i.bx, align 8, !alias.scope !14794, !noalias !14789, !noundef !97
  %i.ch = icmp ult i64 %i.cd, %i.cg
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [112 x i8], ptr %i.cf, i64 %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.ci, i64 112, i1 false), !noalias !14796
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2G_3VecB1O_E14extend_trustedINtNtNtB11_8adapters7flatten7FlattenINtNtB2G_9into_iter8IntoIterAB1O_j2_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.by, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !14797

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14795
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %i.cb
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load i64, ptr %i.g, align 16, !alias.scope !14798, !noalias !14786, !noundef !97
  %i.cl = load i64, ptr %i.ca, align 8, !alias.scope !14798, !noalias !14786, !noundef !97
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.bw, i64 noundef %i.ck, i64 noundef %i.cl)
          to label %.thread31.i.i.i.i.i.i unwind label %bb.o, !noalias !14797

_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 16, !alias.scope !14799, !noalias !14786
  %.pre2.i.i.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !14799, !noalias !14786
  br label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !14797
  unreachable

_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i: ; preds = %_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i.i.i.i.i.i.i, %bb.m
  %i.cn = phi i64 [ %.pre2.i.i.i.i.i.i.i.i, %_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ]
  %i.co = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14789
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.bw, i64 noundef %i.co, i64 noundef %i.cn)
          to label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i unwind label %bb.x, !noalias !14797

bb.p:                                             ; preds = %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cp, align 16, !alias.scope !14785, !noalias !14779 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.q

_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i: ; preds = %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14786
  br label %bb.p

bb.q:                                             ; preds = %bb.p
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14786
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !14786
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx3.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !14800
  invoke void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs7fnekraeopg_15datafusion_expr4expr4Exprj2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1Q_8adapters7flattenINtB2W_13FlattenCompatppE9iter_fold7flattenBW_uNCINvNvXsi_B2W_B3l_B1K_4fold7flattenINtNtNtB1S_5array4iter8IntoIterBX_KB1G_EuNCINvNvB1K_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtB2W_7FlattenBH_EE0E0E0E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.r unwind label %.thread45.i.i.i.i.i.i, !noalias !14797

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14786
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.cr = load i128, ptr %i.cq, align 16, !range !145, !alias.scope !14785, !noalias !14779, !noundef !97
  %i.cs = trunc nuw i128 %i.cr to i1
  br i1 %i.cs, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.f, ptr noundef nonnull align 16 dereferenceable(240) %i.ct, i64 240, i1 false), !noalias !14800
  call void @llvm.experimental.noalias.scope.decl(metadata !14801)
  call void @llvm.experimental.noalias.scope.decl(metadata !14802)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14803
  store ptr %i.cu, ptr %i.b, align 8, !noalias !14803
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 2, ptr %i.cv, align 8, !noalias !14803
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.cw, align 8, !noalias !14803
  call void @llvm.experimental.noalias.scope.decl(metadata !14804)
  call void @llvm.experimental.noalias.scope.decl(metadata !14805)
  %i.cx = load i64, ptr %i.f, align 16, !alias.scope !14806, !noalias !14786, !noundef !97 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !14806, !noalias !14786, !noundef !97 ; 3 uses
  %i.da = icmp ule i64 %i.cx, %i.cz
  call void @llvm.assume(i1 %i.da)
  %.not2.i.i.i11.i.i.i.i.i.i = icmp eq i64 %i.cx, %i.cz
  br i1 %.not2.i.i.i11.i.i.i.i.i.i, label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i19.i.i.i.i.i.i, label %.lr.ph.i.i.i12.i.i.i.i.i.i

.lr.ph.i.i.i12.i.i.i.i.i.i:                       ; preds = %bb.t, %.noexc.i.i14.i.i.i.i.i.i
  %i.db = phi i64 [ %i.dc, %.noexc.i.i14.i.i.i.i.i.i ], [ %i.cx, %bb.t ] ; 3 uses
  %i.dc = add nuw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.f, align 16, !alias.scope !14806, !noalias !14786
  call void @llvm.experimental.noalias.scope.decl(metadata !14807)
  %i.dd = load ptr, ptr %i.b, align 8, !alias.scope !14808, !noalias !14803, !nonnull !97, !align !113, !noundef !97
  %i.de = load i64, ptr %i.cv, align 8, !alias.scope !14808, !noalias !14803, !noundef !97
  %i.df = icmp ult i64 %i.db, %i.de
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [112 x i8], ptr %i.dd, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.dg, i64 112, i1 false), !noalias !14810
  invoke void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2G_3VecB1O_E14extend_trustedINtNtNtB11_8adapters7flatten7FlattenINtNtB2G_9into_iter8IntoIterAB1O_j2_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
          to label %.noexc.i.i14.i.i.i.i.i.i unwind label %bb.u, !noalias !14797

.noexc.i.i14.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i12.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14809
  %.not.i.i.i15.i.i.i.i.i.i = icmp eq i64 %i.dc, %i.cz
  br i1 %.not.i.i.i15.i.i.i.i.i.i, label %_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i16.i.i.i.i.i.i, label %.lr.ph.i.i.i12.i.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i12.i.i.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load i64, ptr %i.f, align 16, !alias.scope !14811, !noalias !14786, !noundef !97
  %i.dj = load i64, ptr %i.cy, align 8, !alias.scope !14811, !noalias !14786, !noundef !97
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.cu, i64 noundef %i.di, i64 noundef %i.dj)
          to label %.thread39.i.i.i.i.i.i unwind label %bb.v, !noalias !14797

.thread39.i.i.i.i.i.i:                            ; preds = %bb.u
  %.val943.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !14784, !noalias !14781, !nonnull !97, !align !132, !noundef !97
  %.val1044.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !14784, !noalias !14781, !noundef !97
  store i64 %.val1044.i.i.i.i.i.i, ptr %.val943.i.i.i.i.i.i, align 8, !noalias !14797
  br label %.body

_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i16.i.i.i.i.i.i: ; preds = %.noexc.i.i14.i.i.i.i.i.i
  %.pre.i.i17.i.i.i.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !14812, !noalias !14786
  %.pre2.i.i18.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !14812, !noalias !14786
  br label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i19.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !14797
  unreachable

_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs43kcu4yvms7_24influxdb3_query_executor.exit.i19.i.i.i.i.i.i: ; preds = %_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i16.i.i.i.i.i.i, %bb.t
  %i.dl = phi i64 [ %.pre2.i.i18.i.i.i.i.i.i, %_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i16.i.i.i.i.i.i ], [ %i.cx, %bb.t ]
  %i.dm = phi i64 [ %.pre.i.i17.i.i.i.i.i.i, %_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE8try_folduNCINvMNtB7_9try_traitINtB4z_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6a_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6a_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4O_E0B4O_ECs43kcu4yvms7_24influxdb3_query_executor.exit.loopexit.i.i16.i.i.i.i.i.i ], [ %i.cx, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14803
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.cu, i64 noundef %i.dm, i64 noundef %i.dl)
end_hunk_0
