Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.06?download=true
inline.NumInlined: 5016
inline.NumDeleted: 2201
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs_NtNtCsjyfffbMAcup_10datafusion9execution13session_stateNtB5_12SessionState17resolve_table_refNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceECs43kcu4yvms7_24influxdb3_query_executor:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !182 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8
  %i.c = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !183, !noundef !21
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !noundef !21 ; 2 uses
  %.not = icmp eq ptr %i.g, null                  ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, !prof !27

bb.f:                                             ; preds = %bb.d
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.g, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs7fnekraeopg_15datafusion_expr4expr4Exprj2_ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(224) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !184 {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i1 [ false, %bb.a ], [ true, %bb.b ]
  %i.c = landingpad { ptr, i32 }
          cleanup
  br i1 %i.b, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.d) #31
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !187 {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(104) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.b) #31
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !28, !alias.scope !188, !noundef !21
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs43kcu4yvms7_24influxdb3_query_executor.exit.i
  ret void

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !189 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !21 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !29, !invariant.load !21 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBG_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !24, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBG_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !29, !invariant.load !21 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !24, !invariant.load !21
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #34
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBG_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !198 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.a = load i64, ptr %0, align 8, !range !201, !alias.scope !202, !noundef !21 ; 4 uses
  %.not.i.i = icmp eq i64 %i.a, -2
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %1 = icmp eq i64 %i.a, -1
  br i1 %1, label %bb.c, label %2

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !204 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !204, !nonnull !21, !align !23, !noundef !21 ; 5 uses
  %i.d = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !21, !noalias !204 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i.i)
          to label %bb.e unwind label %bb.g, !noalias !204

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !29, !invariant.load !21, !noalias !204 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !24, !invariant.load !21, !noalias !204
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #34, !noalias !204
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !29, !invariant.load !21, !noalias !204 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !24, !invariant.load !21, !noalias !204
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #34, !noalias !204
  br label %.body.i.i

2:                                                ; preds = %bb.b
  %3 = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %i.a, 2
  br i1 %4, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.i:                                             ; preds = %2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs4_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.h, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.j, %bb.h ], [ %i.j, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.r) #31
          to label %common.resume.i.i unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.i, %2, %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !range !28, !alias.scope !205, !noundef !21
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsbW2Hd8fG4t4_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsbW2Hd8fG4t4_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i.i:                                ; preds = %bb.l, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.v, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %bb.k
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsbW2Hd8fG4t4_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.n:                                             ; preds = %.body.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsaNmiEuYuYZf_9sqlparser3ast17WrappedCollectionINtNtCscdodAO9FK5_5alloc3vec3VecNtB10_4ExprEEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !206 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !21 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast17WrappedCollectionINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast17WrappedCollectionINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast17WrappedCollectionINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast17WrappedCollectionINtNtCscdodAO9FK5_5alloc3vec3VecNtBE_4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtB10_4ExprEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !207 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !21
  switch i64 %i.a, label %bb.b [
    i64 -5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtBE_4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit
    i64 -4, label %bb.c
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtBE_4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) #35, !inline_history !208
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtBE_4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.d, !inline_history !208

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.e, !inline_history !208

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !inline_history !208
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !208
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtBE_4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !209 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !28, !noundef !21
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !210 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !28, !noundef !21
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameEECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c
end_hunk_0
