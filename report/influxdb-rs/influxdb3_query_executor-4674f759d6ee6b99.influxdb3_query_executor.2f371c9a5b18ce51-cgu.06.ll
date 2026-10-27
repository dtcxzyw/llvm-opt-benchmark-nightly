Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.06?download=true
inline.NumInlined: 5016
inline.NumDeleted: 2201
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs_NtNtCsjyfffbMAcup_10datafusion9execution13session_stateNtB5_12SessionState14schema_for_refNtNtCslWccy9wMl4f_17datafusion_common15table_reference22ResolvedTableReferenceECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  tail call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.er, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @0, ptr %i.ey, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common15table_reference22ResolvedTableReferenceECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(48) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCsjyfffbMAcup_10datafusion9execution13session_stateNtB5_12SessionState17resolve_table_refNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(1640) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.f = load i64, ptr %i.e, align 8, !noundef !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !20, !noundef !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.j = load i64, ptr %i.i, align 8, !noundef !20
  tail call void @_RNvMs0_NtCslWccy9wMl4f_17datafusion_common15table_referenceNtB5_14TableReference7resolve(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !179, !noundef !20
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !noundef !20 ; 2 uses
  %.not = icmp eq ptr %i.g, null                  ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, !prof !26

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
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs7fnekraeopg_15datafusion_expr4expr4Exprj2_ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(224) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.d = load i64, ptr %i.c, align 8, !range !27, !alias.scope !182, !noundef !20
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
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !20 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBG_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBG_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #34
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBG_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.a = load i64, ptr %0, align 8, !range !193, !alias.scope !194, !noundef !20 ; 4 uses
  %.not.i.i = icmp eq i64 %i.a, -2
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !196 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !196, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !20, !noalias !196 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i.i)
          to label %bb.e unwind label %bb.g, !noalias !196

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !28, !invariant.load !20, !noalias !196 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !20, !noalias !196
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #34, !noalias !196
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !28, !invariant.load !20, !noalias !196 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !23, !invariant.load !20, !noalias !196
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #34, !noalias !196
  br label %.body.i.i

bb.i:                                             ; preds = %bb.b
  %i.q = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.a, 2
  br i1 %i.r, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs4_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.h, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.k, %bb.h ], [ %i.k, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.u) #31
          to label %common.resume.i.i unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !range !27, !alias.scope !197, !noundef !20
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsbW2Hd8fG4t4_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsbW2Hd8fG4t4_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i.i:                                ; preds = %bb.m, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.y, %bb.m ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %bb.l
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsbW2Hd8fG4t4_26wasmtime_internal_unwinder9stackwalk5FrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.o:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers17call_thread_state11UnwindStateEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers12UnwindReasonECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime2vm12traphandlers9backtrace9BacktraceECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsaNmiEuYuYZf_9sqlparser3ast17WrappedCollectionINtNtCscdodAO9FK5_5alloc3vec3VecNtB10_4ExprEEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !29, !noundef !20 ; 2 uses
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
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtB10_4ExprEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !20
  switch i64 %i.a, label %bb.b [
    i64 -5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtBE_4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit
    i64 -4, label %bb.c
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtBE_4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) #35, !inline_history !198
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtBE_4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.d, !inline_history !198

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.e, !inline_history !198

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !inline_history !198
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !198
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaNmiEuYuYZf_9sqlparser3ast19OneOrManyWithParensNtBE_4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !20
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
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeEECs43kcu4yvms7_24influxdb3_query_executor:bb.a
bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtBG_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEB18_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTINtNtB7_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTINtNtB7_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTINtNtBG_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEB1f_EEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTINtNtB7_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTINtNtBG_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEB1f_EEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs7fnekraeopg_15datafusion_expr4expr4SortbEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs7fnekraeopg_15datafusion_expr4expr4SortbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs7fnekraeopg_15datafusion_expr4expr4SortbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs7fnekraeopg_15datafusion_expr4expr4SortbEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs7fnekraeopg_15datafusion_expr4expr4SortbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs7fnekraeopg_15datafusion_expr4expr4SortbEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeclEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVeclEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVeclEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !327, !nonnull !20, !noundef !20
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !327
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaE9drop_slowCs6ePPILGZvJ2_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !330, !nonnull !20, !noundef !20
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !330
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaE9drop_slowCs7fnekraeopg_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs43kcu4yvms7_24influxdb3_query_executor(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !20 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #34
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #34
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBG_6string6StringEEECs43kcu4yvms7_24influxdb3_query_executor(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !27, !alias.scope !333, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #34
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #34
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr15WildcardOptionsEECs43kcu4yvms7_24influxdb3_query_executor(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr15WildcardOptionsECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(352) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast9StatementEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast9StatementECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(2688) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorEECs43kcu4yvms7_24influxdb3_query_executor(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(40) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(40) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 16) #34
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherEECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %.body.i.i unwind label %bb.f, !noalias !448

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !448
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.h, !noalias !448

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.y = icmp eq i64 %i.o, %i.h
  br i1 %i.y, label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.z = add i64 %.sroa.0.1.i.i21, 1              ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.h
  br i1 %i.aa, label %.body.i, label %.lr.ph

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.w, %bb.e ]
  %i.ac = icmp eq i64 %i.o, %i.h
  br i1 %i.ac, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i21 = phi i64 [ %i.z, %bb.g ], [ %i.o, %.body.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i21
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(56) %i.ad) #31
          to label %bb.g unwind label %bb.i, !noalias !448

bb.i:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !448
  unreachable

bb.j:                                             ; preds = %.body.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !448
  unreachable

bb.k:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !448
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !448
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !448, !nonnull !20, !noundef !20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !448, !noundef !20
  store i64 %i.ai, ptr %i.a, align 8, !noalias !448
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ag, ptr %i.aj, align 8, !noalias !448
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !448
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !457, !nonnull !20, !noundef !20 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !457, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = ptrtoint ptr %.val1.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 112                 ; 3 uses
  %i.i = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.i, label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph

.body.i:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !457
  %i.j = load ptr, ptr %0, align 8, !alias.scope !457, !nonnull !20, !noundef !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !457, !noundef !20
  store i64 %i.l, ptr %i.b, align 8, !noalias !457
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8, !noalias !457
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !457

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i1
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.b, !noalias !457

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i: ; preds = %.lr.ph3
  %i.q = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body.i, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i unwind label %bb.c, !noalias !457

bb.c:                                             ; preds = %.lr.ph3
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !457
  unreachable

bb.d:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !457
  unreachable

bb.e:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !457
  resume { ptr, i32 } %i.s

_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !457
  %i.x = load ptr, ptr %0, align 8, !alias.scope !457, !nonnull !20, !noundef !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !457, !noundef !20
  store i64 %i.z, ptr %i.a, align 8, !noalias !457
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !noalias !457
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !457
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !460, !noundef !20
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type0ECs43kcu4yvms7_24influxdb3_query_executor(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !49, !noundef !20
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #34
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #34
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBK_6schema14SchemaProvider10table_type0ECs43kcu4yvms7_24influxdb3_query_executor(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !49, !noundef !20
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #34
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #34
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultINtNtBN_6option6OptionINtNtB7_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsaIKnL9StOw_6anyhow5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1eXVLxSVbjH_14datafusion_sql7planner14PlannerContextECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !503, !nonnull !20, !noundef !20
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !503
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VecIBC_NtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecIBw_NtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEE9drop_slowCs1eXVLxSVbjH_14datafusion_sql(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VecIBC_NtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VecIBC_NtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit8 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.d, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !504, !noundef !20 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !505
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaE9drop_slowCs7fnekraeopg_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.s

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VecIBC_NtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit8: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtBG_3vec3VecIBC_NtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !506, !noundef !20 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit11, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit8
  %i.p = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !507
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit11

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaE9drop_slowCs7fnekraeopg_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit11 unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.e, %bb.k
  %.pn2 = phi { ptr, i32 } [ %i.w, %bb.k ], [ %.pn, %bb.e ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit ], [ %.pn, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !508, !noundef !20 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit13, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.u = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !509
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit13

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaE9drop_slowCs7fnekraeopg_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit13 unwind label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit11: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1A_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEECs43kcu4yvms7_24influxdb3_query_executor.exit8, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !510, !noundef !20 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit15, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit11
  %i.aa = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !511
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit15

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaE9drop_slowCs7fnekraeopg_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit15 unwind label %bb.p

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit13: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.j, %bb.p
  %.pn4 = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %.pn2, %bb.j ], [ %.pn2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit ], [ %.pn2, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !512, !noundef !20 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit17, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit13
  %i.af = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !513
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit17

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaE9drop_slowCs7fnekraeopg_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit17 unwind label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit13

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit15: ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit11, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !514, !noundef !20 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit18, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit15
  %i.al = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !515
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit18

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaE9drop_slowCs7fnekraeopg_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit18

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit18: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit15, %bb.q, %bb.r
  ret void

bb.s:                                             ; preds = %bb.o, %bb.j, %bb.e, %bb.c
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit17: ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaEEECs43kcu4yvms7_24influxdb3_query_executor.exit13, %bb.o
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6OdVU8oGBWI_10arrow_data4data16ArrayDataBuilderECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
end_hunk_2
begin_hunk_3_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 104, i64 noundef 8) #34
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnEECs43kcu4yvms7_24influxdb3_query_executor.exit4: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 104, i64 noundef 8) #34
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %.val3)
          to label %bb.j unwind label %.body5

.body5:                                           ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 56, i64 noundef 8) #34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %common.resume unwind label %bb.m

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnEECs43kcu4yvms7_24influxdb3_query_executor.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit8, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnEECs43kcu4yvms7_24influxdb3_query_executor.exit4
  ret void

bb.j:                                             ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 56, i64 noundef 8) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit8 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit8: ; preds = %bb.j
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.i

bb.m:                                             ; preds = %.body, %.body5
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.n:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 104, i64 noundef 8) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.n
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common6column6ColumnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1643, !noundef !20
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.bg
    i64 2, label %bb.cb
    i64 3, label %bb.gc
    i64 4, label %bb.gd
    i64 5, label %bb.gl
    i64 6, label %bb.go
    i64 7, label %bb.gr
    i64 8, label %bb.gu
    i64 9, label %bb.gx
    i64 10, label %bb.gy
    i64 11, label %bb.hb
    i64 12, label %bb.hj
    i64 13, label %bb.hm
    i64 14, label %bb.hs
    i64 15, label %bb.hv
    i64 16, label %bb.hy
    i64 17, label %bb.ik
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1646, !nonnull !20, !noundef !20
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !1646
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !20, !noundef !20 ; 24 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  %i.g = load i64, ptr %.val3, align 8, !range !1648, !alias.scope !1647, !noundef !20 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775796
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 12
  switch i64 %i.k, label %bb.in [
    i64 0, label %bb.e
    i64 1, label %bb.h
    i64 2, label %bb.n
    i64 3, label %bb.q
    i64 4, label %bb.t
    i64 5, label %bb.w
    i64 6, label %bb.z
    i64 8, label %bb.ac
    i64 9, label %bb.af
    i64 10, label %bb.ai
    i64 11, label %bb.al
    i64 12, label %bb.ao
    i64 13, label %bb.ar
    i64 14, label %bb.au
    i64 15, label %bb.ax
    i64 16, label %bb.ba
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1647 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %.val1.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1647, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !20, !noalias !1647 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.j unwind label %bb.l, !noalias !1647

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !28, !invariant.load !20, !noalias !1647 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.in, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !23, !invariant.load !20, !noalias !1647
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #34, !noalias !1647
  br label %bb.in

bb.l:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !28, !invariant.load !20, !noalias !1647 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !23, !invariant.load !20, !noalias !1647
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #34, !noalias !1647
  br label %.body

bb.n:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.q:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.t:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.w:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.z:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ac:                                            ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.af:                                            ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ai:                                            ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.al:                                            ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ao:                                            ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val3)
          to label %.body.i.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit21.i.i unwind label %bb.bd

bb.ar:                                            ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body unwind label %bb.at
end_hunk_3
begin_hunk_4_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.au:                                            ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ax:                                            ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ba:                                            ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i: ; preds = %bb.ba, %bb.ax, %bb.au, %bb.ar, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.e
  %i.br = phi ptr [ %i.bl, %bb.ax ], [ %i.bi, %bb.au ], [ %i.bf, %bb.ar ], [ %i.ba, %bb.al ], [ %i.ax, %bb.ai ], [ %i.au, %bb.af ], [ %i.ar, %bb.ac ], [ %i.ao, %bb.z ], [ %i.al, %bb.w ], [ %i.ai, %bb.t ], [ %i.af, %bb.q ], [ %i.ac, %bb.n ], [ %i.l, %bb.e ], [ %i.bo, %bb.ba ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %bb.in unwind label %bb.bf

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bd, %bb.ap
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bs, %bb.bd ], [ %i.bd, %bb.ap ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bt) #31
          to label %.body unwind label %bb.be

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit21.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.in unwind label %bb.bf

bb.be:                                            ; preds = %.body.i.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit21.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bf, %.body.i.i, %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.m, %bb.l, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bw, %bb.bf ], [ %i.bp, %bb.bb ], [ %i.m, %bb.f ], [ %i.w, %bb.l ], [ %i.ad, %bb.o ], [ %i.ag, %bb.r ], [ %i.aj, %bb.u ], [ %i.am, %bb.x ], [ %i.ap, %bb.aa ], [ %i.as, %bb.ad ], [ %i.av, %bb.ag ], [ %i.ay, %bb.aj ], [ %i.bb, %bb.am ], [ %i.bg, %bb.as ], [ %i.bj, %bb.av ], [ %i.bm, %bb.ay ], [ %i.w, %bb.m ], [ %eh.lpad-body.i.i, %.body.i.i ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 32, i64 noundef 8) #34
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.bx) #31
          to label %common.resume unwind label %bb.ir

bb.bg:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.by, align 8, !nonnull !20, !noundef !20 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1649)
  %i.bz = load i64, ptr %.val4, align 8, !range !80, !alias.scope !1649, !noundef !20
  switch i64 %i.bz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit [
    i64 0, label %bb.bh
    i64 1, label %bb.bk
    i64 2, label %bb.bn
    i64 3, label %bb.bq
    i64 5, label %bb.bt
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ca = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.invoke.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %bb.ca unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bk:                                            ; preds = %bb.bg
  %i.cd = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.invoke.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %bb.ca unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bn:                                            ; preds = %bb.bg
  %i.cg = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.invoke.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.ca unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bq:                                            ; preds = %bb.bg
  %i.cj = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.invoke.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %bb.ca unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.invoke.i: ; preds = %bb.bq, %bb.bn, %bb.bk, %bb.bh
  %i.cm = phi ptr [ %i.cg, %bb.bn ], [ %i.cd, %bb.bk ], [ %i.ca, %bb.bh ], [ %i.cj, %bb.bq ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.bz

bb.bt:                                            ; preds = %bb.bg
  %i.cn = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val.i.i12 = load ptr, ptr %i.cn, align 8, !alias.scope !1649 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %.val1.i.i13 = load ptr, ptr %i.co, align 8, !alias.scope !1649, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.cp = load ptr, ptr %.val1.i.i13, align 8, !invariant.load !20, !noalias !1649 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i14, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i12) ]
  invoke void %i.cp(ptr noundef nonnull %.val.i.i12)
          to label %bb.bv unwind label %bb.bx, !noalias !1649

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1.i.i13, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !28, !invariant.load !20, !noalias !1649 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i12) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1.i.i13, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !range !23, !invariant.load !20, !noalias !1649
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i12, i64 noundef range(i64 1, 0) %i.cr, i64 noundef range(i64 1, 536870913) %i.cu) #34, !noalias !1649
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.bx:                                            ; preds = %bb.bu
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1.i.i13, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !range !28, !invariant.load !20, !noalias !1649 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1.i.i13, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !range !23, !invariant.load !20, !noalias !1649
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i12, i64 noundef range(i64 1, 0) %i.cx, i64 noundef range(i64 1, 536870913) %i.da) #34, !noalias !1649
  br label %bb.ca

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.invoke.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

common.resume:                                    ; preds = %bb.iu, %.body, %.body23, %.body38, %.body48, %.body31, %bb.ip, %bb.il, %bb.hw, %bb.hq, %bb.hr, %bb.hk, %bb.gz, %bb.gv, %bb.gs, %bb.gp, %bb.gm, %bb.jf, %bb.jd, %bb.jb, %bb.hi, %bb.gb, %bb.ca
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i15, %bb.ca ], [ %eh.lpad-body.i16, %bb.gb ], [ %i.pk, %bb.jf ], [ %i.lo, %bb.gm ], [ %i.lr, %bb.gp ], [ %i.lu, %bb.gs ], [ %i.lx, %bb.gv ], [ %i.mp, %bb.hi ], [ %i.md, %bb.gz ], [ %i.mw, %bb.hk ], [ %i.ng, %bb.hq ], [ %i.nq, %bb.hw ], [ %i.ok, %bb.il ], [ %i.op, %bb.ip ], [ %eh.lpad-body.i46, %.body48 ], [ %eh.lpad-body.i53, %bb.jb ], [ %i.ph, %bb.jd ], [ %i.ng, %bb.hr ], [ %eh.lpad-body.i, %.body ], [ %eh.lpad-body.i22, %.body23 ], [ %i.ma, %.body31 ], [ %eh.lpad-body39, %.body38 ], [ %i.ov, %bb.iu ]
  resume { ptr, i32 } %common.resume.op

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.br, %bb.bo, %bb.bl, %bb.bi
  %eh.lpad-body.i15 = phi { ptr, i32 } [ %i.db, %bb.bz ], [ %i.ck, %bb.br ], [ %i.cb, %bb.bi ], [ %i.ce, %bb.bl ], [ %i.ch, %bb.bo ], [ %i.cv, %bb.by ], [ %i.cv, %bb.bx ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #34
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.bg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.invoke.i, %bb.bv, %bb.bw
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.cb:                                            ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.dc, align 8, !nonnull !20, !noundef !20 ; 54 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  %i.dd = load i64, ptr %.val5, align 8, !range !1651, !alias.scope !1650, !noundef !20 ; 6 uses
  %i.de = icmp ne i64 %i.dd, -9223372036854775800
  tail call void @llvm.assume(i1 %i.de)
  %i.df = add nsw i64 %i.dd, 9223372036854775802
  %i.dg = icmp ugt i64 %i.dd, -9223372036854775803
  %i.dh = select i1 %i.dg, i64 %i.df, i64 2
  switch i64 %i.dh, label %bb.cc [
    i64 0, label %bb.cf
    i64 1, label %bb.cl
    i64 2, label %bb.co
    i64 3, label %bb.dn
    i64 4, label %bb.du
    i64 5, label %bb.ea
    i64 6, label %bb.ed
    i64 7, label %bb.eg
    i64 8, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit
    i64 9, label %bb.ej
    i64 10, label %bb.em
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.di = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit20.i.i.invoke.i unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %bb.gb unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.cf:                                            ; preds = %bb.cb
  %i.dl = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %.val27.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !1650 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val28.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.dn = load ptr, ptr %.val28.i.i, align 8, !invariant.load !20, !noalias !1650 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i21, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i) ]
  invoke void %i.dn(ptr noundef nonnull %.val27.i.i)
          to label %bb.ch unwind label %bb.cj, !noalias !1650

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.do = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !28, !invariant.load !20, !noalias !1650 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !range !23, !invariant.load !20, !noalias !1650
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef range(i64 1, 0) %i.dp, i64 noundef range(i64 1, 536870913) %i.ds) #34, !noalias !1650
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.cj:                                            ; preds = %bb.cg
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !28, !invariant.load !20, !noalias !1650 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.gb, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.dx = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !23, !invariant.load !20, !noalias !1650
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef range(i64 1, 0) %i.dv, i64 noundef range(i64 1, 536870913) %i.dy) #34, !noalias !1650
  br label %bb.gb

bb.cl:                                            ; preds = %bb.cb
  %i.dz = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i20 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %.body.i.i18 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i20: ; preds = %bb.cl
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit32.i.i unwind label %bb.ep

bb.co:                                            ; preds = %bb.cb
  %i.ec = icmp ne i64 %i.dd, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = xor i64 %i.dd, -9223372036854775808
  %i.ee = icmp slt i64 %i.dd, 0
  %i.ef = select i1 %i.ee, i64 %i.ed, i64 1
  switch i64 %i.ef, label %bb.cp [
    i64 0, label %bb.cs
    i64 1, label %bb.cv
    i64 2, label %bb.cy
    i64 3, label %bb.db
    i64 4, label %bb.de
  ]

bb.cp:                                            ; preds = %bb.co
  %i.eg = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %.body.i.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i: ; preds = %bb.cp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.dk

bb.cs:                                            ; preds = %bb.co
  %i.ej = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit20.i.i.invoke.i unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %bb.gb unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.cv:                                            ; preds = %bb.co
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val5)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i6.i.i.i unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val5)
          to label %.body7.i.i.i unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i6.i.i.i: ; preds = %bb.cv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val5)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit9.i.i.i unwind label %bb.dh

bb.cy:                                            ; preds = %bb.co
  %i.eo = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %.body10.i.i.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i: ; preds = %bb.cy
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.dj

bb.db:                                            ; preds = %bb.co
  %i.er = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit20.i.i.invoke.i unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %bb.gb unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.de:                                            ; preds = %bb.co
  %i.eu = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit20.i.i.invoke.i unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %bb.gb unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.dh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i6.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i.i.i

.body7.i.i.i:                                     ; preds = %bb.dh, %bb.cw
  %eh.lpad-body8.i.i.i = phi { ptr, i32 } [ %i.ex, %bb.dh ], [ %i.em, %bb.cw ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(48) %i.ey) #31
          to label %bb.gb unwind label %bb.di

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit9.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i6.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(48) %i.ez)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.ga

bb.di:                                            ; preds = %.body.i.i.i, %.body10.i.i.i, %.body7.i.i.i
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.dj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i.i.i

.body10.i.i.i:                                    ; preds = %bb.dj, %bb.cz
  %eh.lpad-body11.i.i.i = phi { ptr, i32 } [ %i.fb, %bb.dj ], [ %i.ep, %bb.cz ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fc) #31
          to label %bb.gb unwind label %bb.di

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.ga

bb.dk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.dk, %bb.cq
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fe, %bb.dk ], [ %i.eh, %bb.cq ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff) #31
          to label %bb.gb unwind label %bb.di

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.val5, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit20.i.i.invoke.i unwind label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %bb.gb unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit20.i.i.invoke.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i, %bb.de, %bb.db, %bb.cs, %bb.cc
  %i.fj = phi ptr [ %i.eu, %bb.de ], [ %i.er, %bb.db ], [ %i.ej, %bb.cs ], [ %i.di, %bb.cc ], [ %i.fg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.ga

bb.dn:                                            ; preds = %bb.cb
  %i.fk = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %.val29.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !1650, !noundef !20 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %.val30.i.i = load ptr, ptr %i.fl, align 8, !alias.scope !1650 ; 6 uses
  %i.fm = icmp eq ptr %.val29.i.i, null
  br i1 %i.fm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i.i) ]
  %i.fn = load ptr, ptr %.val30.i.i, align 8, !invariant.load !20, !noalias !1650 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void %i.fn(ptr noundef nonnull %.val29.i.i)
          to label %bb.dq unwind label %bb.ds, !noalias !1650

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.fo = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !range !28, !invariant.load !20, !noalias !1650 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.fr = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !range !23, !invariant.load !20, !noalias !1650
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i, i64 noundef range(i64 1, 0) %i.fp, i64 noundef range(i64 1, 536870913) %i.fs) #34, !noalias !1650
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.ds:                                            ; preds = %bb.dp
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !range !28, !invariant.load !20, !noalias !1650 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.gb, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.fx = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !range !23, !invariant.load !20, !noalias !1650
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i, i64 noundef range(i64 1, 0) %i.fv, i64 noundef range(i64 1, 536870913) %i.fy) #34, !noalias !1650
  br label %bb.gb

bb.du:                                            ; preds = %bb.cb
  %i.fz = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %.val25.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !1650 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %.val26.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.gb = load ptr, ptr %.val26.i.i, align 8, !invariant.load !20, !noalias !1650 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i33.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i) ]
  invoke void %i.gb(ptr noundef nonnull %.val25.i.i)
          to label %bb.dw unwind label %bb.dy, !noalias !1650

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.gc = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !range !28, !invariant.load !20, !noalias !1650 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i) ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !range !23, !invariant.load !20, !noalias !1650
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i, i64 noundef range(i64 1, 0) %i.gd, i64 noundef range(i64 1, 536870913) %i.gg) #34, !noalias !1650
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.dy:                                            ; preds = %bb.dv
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !range !28, !invariant.load !20, !noalias !1650 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.gb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.gl = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !range !23, !invariant.load !20, !noalias !1650
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i, i64 noundef range(i64 1, 0) %i.gj, i64 noundef range(i64 1, 536870913) %i.gm) #34, !noalias !1650
  br label %bb.gb

bb.ea:                                            ; preds = %bb.cb
  %i.gn = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i37.i.i unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %.body38.i.i unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i37.i.i: ; preds = %bb.ea
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit40.i.i unwind label %bb.ew

bb.ed:                                            ; preds = %bb.cb
  %i.gq = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i42.i.i unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gq)
          to label %.body43.i.i unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i42.i.i: ; preds = %bb.ed
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit45.i.i unwind label %bb.fc

bb.eg:                                            ; preds = %bb.cb
  %i.gt = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i47.i.i unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %.body48.i.i unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i47.i.i: ; preds = %bb.eg
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit50.i.i unwind label %bb.fi

bb.ej:                                            ; preds = %bb.cb
  %i.gw = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i52.i.i unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %.body53.i.i unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i52.i.i: ; preds = %bb.ej
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit55.i.i unwind label %bb.fo

bb.em:                                            ; preds = %bb.cb
  %i.gz = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i57.i.i unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %.body58.i.i unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i57.i.i: ; preds = %bb.em
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit60.i.i unwind label %bb.fu

bb.ep:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i20
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i18

.body.i.i18:                                      ; preds = %bb.ep, %bb.cm
  %eh.lpad-body.i.i19 = phi { ptr, i32 } [ %i.hc, %bb.ep ], [ %i.ea, %bb.cm ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val23.i.i = load ptr, ptr %i.hd, align 8, !alias.scope !1650
  %i.he = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val24.i.i = load ptr, ptr %i.he, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val23.i.i, ptr nonnull %.val24.i.i) #31
          to label %bb.gb unwind label %bb.ev

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit32.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i20
  %i.hf = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val21.i.i = load ptr, ptr %i.hf, align 8, !alias.scope !1650 ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val22.i.i = load ptr, ptr %i.hg, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.hh = load ptr, ptr %.val22.i.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i61.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i61.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit32.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  invoke void %i.hh(ptr noundef nonnull %.val21.i.i)
          to label %bb.er unwind label %bb.et

bb.er:                                            ; preds = %bb.eq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit32.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef range(i64 1, 0) %i.hj, i64 noundef range(i64 1, 536870913) %i.hm) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.et:                                            ; preds = %bb.eq
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.gb, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.hr = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef range(i64 1, 0) %i.hp, i64 noundef range(i64 1, 536870913) %i.hs) #34
  br label %bb.gb

bb.ev:                                            ; preds = %.body58.i.i, %.body53.i.i, %.body48.i.i, %.body43.i.i, %.body38.i.i, %.body.i.i18
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ew:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i37.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body38.i.i

.body38.i.i:                                      ; preds = %bb.ew, %bb.eb
  %eh.lpad-body39.i.i = phi { ptr, i32 } [ %i.hu, %bb.ew ], [ %i.go, %bb.eb ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val19.i.i = load ptr, ptr %i.hv, align 8, !alias.scope !1650
  %i.hw = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val20.i.i = load ptr, ptr %i.hw, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val19.i.i, ptr nonnull %.val20.i.i) #31
          to label %bb.gb unwind label %bb.ev

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit40.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i37.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val17.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !1650 ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val18.i.i = load ptr, ptr %i.hy, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.hz = load ptr, ptr %.val18.i.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i64.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i64.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit40.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i) ]
  invoke void %i.hz(ptr noundef nonnull %.val17.i.i)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit40.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i) ]
  %i.id = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i, i64 noundef range(i64 1, 0) %i.ib, i64 noundef range(i64 1, 536870913) %i.ie) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.fa:                                            ; preds = %bb.ex
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.gb, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ij = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i, i64 noundef range(i64 1, 0) %i.ih, i64 noundef range(i64 1, 536870913) %i.ik) #34
  br label %bb.gb

bb.fc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i42.i.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i.i

.body43.i.i:                                      ; preds = %bb.fc, %bb.ee
  %eh.lpad-body44.i.i = phi { ptr, i32 } [ %i.il, %bb.fc ], [ %i.gr, %bb.ee ]
  %i.im = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val15.i.i = load ptr, ptr %i.im, align 8, !alias.scope !1650
  %i.in = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val16.i.i = load ptr, ptr %i.in, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val15.i.i, ptr nonnull %.val16.i.i) #31
          to label %bb.gb unwind label %bb.ev

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit45.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i42.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val13.i.i = load ptr, ptr %i.io, align 8, !alias.scope !1650 ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val14.i.i = load ptr, ptr %i.ip, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.iq = load ptr, ptr %.val14.i.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i67.i.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit45.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  invoke void %i.iq(ptr noundef nonnull %.val13.i.i)
          to label %bb.fe unwind label %bb.fg

bb.fe:                                            ; preds = %bb.fd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit45.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef range(i64 1, 0) %i.is, i64 noundef range(i64 1, 536870913) %i.iv) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.fg:                                            ; preds = %bb.fd
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %bb.gb, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ja = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef range(i64 1, 0) %i.iy, i64 noundef range(i64 1, 536870913) %i.jb) #34
  br label %bb.gb

bb.fi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i47.i.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body48.i.i

.body48.i.i:                                      ; preds = %bb.fi, %bb.eh
  %eh.lpad-body49.i.i = phi { ptr, i32 } [ %i.jc, %bb.fi ], [ %i.gu, %bb.eh ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val11.i.i = load ptr, ptr %i.jd, align 8, !alias.scope !1650
  %i.je = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val12.i.i = load ptr, ptr %i.je, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val11.i.i, ptr nonnull %.val12.i.i) #31
          to label %bb.gb unwind label %bb.ev

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit50.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i47.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val9.i.i = load ptr, ptr %i.jf, align 8, !alias.scope !1650 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val10.i.i = load ptr, ptr %i.jg, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.jh = load ptr, ptr %.val10.i.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i70.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i70.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit50.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  invoke void %i.jh(ptr noundef nonnull %.val9.i.i)
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit50.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef range(i64 1, 0) %i.jj, i64 noundef range(i64 1, 536870913) %i.jm) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.fm:                                            ; preds = %bb.fj
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %bb.gb, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.jr = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef range(i64 1, 0) %i.jp, i64 noundef range(i64 1, 536870913) %i.js) #34
  br label %bb.gb

bb.fo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i52.i.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body53.i.i

.body53.i.i:                                      ; preds = %bb.fo, %bb.ek
  %eh.lpad-body54.i.i = phi { ptr, i32 } [ %i.jt, %bb.fo ], [ %i.gx, %bb.ek ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val7.i.i = load ptr, ptr %i.ju, align 8, !alias.scope !1650
  %i.jv = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val8.i.i = load ptr, ptr %i.jv, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val7.i.i, ptr nonnull %.val8.i.i) #31
          to label %bb.gb unwind label %bb.ev

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit55.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i52.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val5.i.i = load ptr, ptr %i.jw, align 8, !alias.scope !1650 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val6.i.i = load ptr, ptr %i.jx, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.jy = load ptr, ptr %.val6.i.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i73.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i73.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit55.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  invoke void %i.jy(ptr noundef nonnull %.val5.i.i)
          to label %bb.fq unwind label %bb.fs

bb.fq:                                            ; preds = %bb.fp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit55.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.ka = load i64, ptr %i.jz, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 1, 536870913) %i.kd) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.fs:                                            ; preds = %bb.fp
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.gb, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ki = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.kj = load i64, ptr %i.ki, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef range(i64 1, 0) %i.kg, i64 noundef range(i64 1, 536870913) %i.kj) #34
  br label %bb.gb

bb.fu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i57.i.i
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body58.i.i

.body58.i.i:                                      ; preds = %bb.fu, %bb.en
  %eh.lpad-body59.i.i = phi { ptr, i32 } [ %i.kk, %bb.fu ], [ %i.ha, %bb.en ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val3.i.i = load ptr, ptr %i.kl, align 8, !alias.scope !1650
  %i.km = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val4.i.i = load ptr, ptr %i.km, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val3.i.i, ptr nonnull %.val4.i.i) #31
          to label %bb.gb unwind label %bb.ev

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit60.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i57.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val.i.i17 = load ptr, ptr %i.kn, align 8, !alias.scope !1650 ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val2.i.i = load ptr, ptr %i.ko, align 8, !alias.scope !1650, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.kp = load ptr, ptr %.val2.i.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i76.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i76.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit60.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i17) ]
  invoke void %i.kp(ptr noundef nonnull %.val.i.i17)
          to label %bb.fw unwind label %bb.fy

bb.fw:                                            ; preds = %bb.fv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit60.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i17) ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ku = load i64, ptr %i.kt, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i17, i64 noundef range(i64 1, 0) %i.kr, i64 noundef range(i64 1, 536870913) %i.ku) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.fy:                                            ; preds = %bb.fv
  %i.kv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.kz = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.la = load i64, ptr %i.kz, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i17, i64 noundef range(i64 1, 0) %i.kx, i64 noundef range(i64 1, 536870913) %i.la) #34
  br label %bb.gb

bb.ga:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit20.i.i.invoke.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit9.i.i.i
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy, %.body58.i.i, %bb.ft, %bb.fs, %.body53.i.i, %bb.fn, %bb.fm, %.body48.i.i, %bb.fh, %bb.fg, %.body43.i.i, %bb.fb, %bb.fa, %.body38.i.i, %bb.eu, %bb.et, %.body.i.i18, %bb.dz, %bb.dy, %bb.dt, %bb.ds, %bb.dl, %.body.i.i.i, %.body10.i.i.i, %.body7.i.i.i, %bb.df, %bb.dc, %bb.ct, %bb.ck, %bb.cj, %bb.cd
  %eh.lpad-body.i16 = phi { ptr, i32 } [ %i.lb, %bb.ga ], [ %i.ke, %bb.fs ], [ %i.dj, %bb.cd ], [ %i.dt, %bb.cj ], [ %i.fh, %bb.dl ], [ %i.ft, %bb.ds ], [ %i.gh, %bb.dy ], [ %i.hn, %bb.et ], [ %eh.lpad-body59.i.i, %.body58.i.i ], [ %i.if, %bb.fa ], [ %i.iw, %bb.fg ], [ %i.jn, %bb.fm ], [ %i.dt, %bb.ck ], [ %eh.lpad-body11.i.i.i, %.body10.i.i.i ], [ %i.ek, %bb.ct ], [ %i.es, %bb.dc ], [ %i.ev, %bb.df ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body8.i.i.i, %.body7.i.i.i ], [ %i.ft, %bb.dt ], [ %i.gh, %bb.dz ], [ %i.hn, %bb.eu ], [ %eh.lpad-body.i.i19, %.body.i.i18 ], [ %eh.lpad-body39.i.i, %.body38.i.i ], [ %eh.lpad-body44.i.i, %.body43.i.i ], [ %eh.lpad-body49.i.i, %.body48.i.i ], [ %eh.lpad-body54.i.i, %.body53.i.i ], [ %i.if, %bb.fb ], [ %i.iw, %bb.fh ], [ %i.jn, %bb.fn ], [ %i.ke, %bb.ft ], [ %i.kv, %bb.fz ], [ %i.kv, %bb.fy ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 72, i64 noundef 8) #34
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtCs1LivM9IBWqb_12object_store5ErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.cb, %bb.ch, %bb.ci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit9.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit20.i.i.invoke.i, %bb.dn, %bb.dq, %bb.dr, %bb.dw, %bb.dx, %bb.er, %bb.es, %bb.ey, %bb.ez, %bb.fe, %bb.ff, %bb.fk, %bb.fl, %bb.fq, %bb.fr, %bb.fw, %bb.fx
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 72, i64 noundef 8) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.gc:                                            ; preds = %bb.a
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lc)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.gd:                                            ; preds = %bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.ld, align 8, !nonnull !20, !noundef !20 ; 5 uses
  %i.le = load i64, ptr %.val6, align 8, !range !29, !alias.scope !1652, !noundef !20
  switch i64 %i.le, label %bb.is [
    i64 0, label %bb.ge
    i64 1, label %bb.gh
  ]

.sink.split.i.i:                                  ; preds = %bb.gh, %bb.ge
  %.sink.i.i = phi ptr [ %i.lf, %bb.ge ], [ %i.li, %bb.gh ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i.i)
          to label %bb.is unwind label %bb.gk

bb.ge:                                            ; preds = %bb.gd
  %i.lf = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %.sink.split.i.i unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %.body23 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.gh:                                            ; preds = %bb.gd
  %i.li = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %.sink.split.i.i unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %.body23 unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.gk:                                            ; preds = %.sink.split.i.i
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.gk, %bb.gi, %bb.gf
  %eh.lpad-body.i22 = phi { ptr, i32 } [ %i.ll, %bb.gk ], [ %i.lg, %bb.gf ], [ %i.lj, %bb.gi ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 32, i64 noundef 8) #34
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.lm) #31
          to label %common.resume unwind label %bb.ir

bb.gl:                                            ; preds = %bb.a
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ln)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.lo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ln)
          to label %common.resume unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.gl
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ln)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.go:                                            ; preds = %bb.a
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit26 unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %common.resume unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit26: ; preds = %bb.go
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lq)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.gr:                                            ; preds = %bb.a
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit28 unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.lu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lt)
          to label %common.resume unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit28: ; preds = %bb.gr
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lt)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.gu:                                            ; preds = %bb.a
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit30 unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lw)
          to label %common.resume unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit30: ; preds = %bb.gu
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.gx:                                            ; preds = %bb.a
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.lz, align 8, !nonnull !20, !noundef !20 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val7)
          to label %bb.iw unwind label %.body31

.body31:                                          ; preds = %bb.gx
  %i.ma = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef 40, i64 noundef 8) #34
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val11 = load ptr, ptr %i.mb, align 8, !nonnull !20, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBG_6string6StringEEECs43kcu4yvms7_24influxdb3_query_executor(ptr nonnull %.val11) #31
          to label %common.resume unwind label %bb.ir

bb.gy:                                            ; preds = %bb.a
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit34 unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mc)
          to label %common.resume unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit34: ; preds = %bb.gy
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mc)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.hb:                                            ; preds = %bb.a
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.mf, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.mg = getelementptr i8, ptr %.val8, i64 8
  %.val.i = load ptr, ptr %i.mg, align 8, !noundef !20 ; 4 uses
  %i.mh = getelementptr i8, ptr %.val8, i64 16
  %.val1.i = load ptr, ptr %i.mh, align 8         ; 6 uses
  %i.mi = icmp eq ptr %.val.i, null
  br i1 %i.mi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.mj = load ptr, ptr %.val1.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  invoke void %i.mj(ptr noundef nonnull %.val.i)
          to label %bb.he unwind label %bb.hg

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.mn = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.mo = load i64, ptr %i.mn, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ml, i64 noundef range(i64 1, 536870913) %i.mo) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.hg:                                            ; preds = %bb.hd
  %i.mp = landingpad { ptr, i32 }
          cleanup
  %i.mq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.mt = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.mu = load i64, ptr %i.mt, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.mr, i64 noundef range(i64 1, 536870913) %i.mu) #34
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 24, i64 noundef 8) #34
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.hb, %bb.he, %bb.hf
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 24, i64 noundef 8) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.hj:                                            ; preds = %bb.a
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit36 unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.mw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mv)
          to label %common.resume unwind label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.mx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit36: ; preds = %bb.hj
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mv)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.hm:                                            ; preds = %bb.a
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.my, align 8            ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.mz, align 8, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.na = load ptr, ptr %.val2, align 8, !invariant.load !20 ; 2 uses
  %.not.i = icmp eq ptr %i.na, null
  br i1 %.not.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.na(ptr noundef nonnull %.val)
          to label %bb.ho unwind label %bb.hq

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.nb = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.nc, i64 noundef range(i64 1, 536870913) %i.nf) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.hq:                                            ; preds = %bb.hn
  %i.ng = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %common.resume, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.nk = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.nl = load i64, ptr %i.nk, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ni, i64 noundef range(i64 1, 536870913) %i.nl) #34
  br label %common.resume

bb.hs:                                            ; preds = %bb.a
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.nn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nm)
          to label %.body38 unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.no = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.hs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit40 unwind label %bb.jc

bb.hv:                                            ; preds = %bb.a
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.np)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit43 unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.nq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.np)
          to label %common.resume unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit43: ; preds = %bb.hv
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.np)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.hy:                                            ; preds = %bb.a
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.ns, align 8, !nonnull !20, !noundef !20 ; 7 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.val9, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i47 unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.nu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %.body.i.i44 unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i47: ; preds = %bb.hy
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.ib

bb.ib:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i47
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i44

.body.i.i44:                                      ; preds = %bb.ib, %bb.hz
  %eh.lpad-body.i.i45 = phi { ptr, i32 } [ %i.nw, %bb.ib ], [ %i.nu, %bb.hz ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.val9, i64 64
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.nx) #31
          to label %.body2.i.i unwind label %bb.ii

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i47
  %i.ny = getelementptr inbounds nuw i8, ptr %.val9, i64 64 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ny)
          to label %bb.id unwind label %bb.ic

bb.ic:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %i.nz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ny)
          to label %.body2.i.i unwind label %bb.ie

bb.id:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ny)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

.body2.i.i:                                       ; preds = %bb.if, %bb.ic, %.body.i.i44
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i45, %.body.i.i44 ], [ %i.oc, %bb.if ], [ %i.nz, %bb.ic ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.val9, i64 88
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticHelpEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.ob) #31
          to label %.body48 unwind label %bb.ii

bb.if:                                            ; preds = %bb.id
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.id
  %i.od = getelementptr inbounds nuw i8, ptr %.val9, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.od)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticHelpEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.ig

bb.ig:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %i.oe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.od)
          to label %.body48 unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticHelpEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticNoteEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.od)
          to label %bb.je unwind label %bb.ij

bb.ii:                                            ; preds = %.body2.i.i, %.body.i.i44
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ij:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common10diagnostic14DiagnosticHelpEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body48:                                          ; preds = %bb.ij, %bb.ig, %.body2.i.i
  %eh.lpad-body.i46 = phi { ptr, i32 } [ %i.oh, %bb.ij ], [ %i.oe, %bb.ig ], [ %.pn.i.i, %.body2.i.i ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef 120, i64 noundef 8) #34
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8) %i.oi) #31
          to label %common.resume unwind label %bb.ir

bb.ik:                                            ; preds = %bb.a
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.ok = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %common.resume unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.ol = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.ik
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.in:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit21.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit33.i.invoke.i, %bb.k, %bb.j, %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 32, i64 noundef 8) #34
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.on = load i64, ptr %i.om, align 8, !range !27, !alias.scope !1653, !noundef !20
  %i.oo = icmp eq i64 %i.on, -1
  br i1 %i.oo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.io

bb.io:                                            ; preds = %bb.in
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.om)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.op = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.om)
end_hunk_4
begin_hunk_5_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common6unnest13UnnestOptionsECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common6unnest21RecursionUnnestOptionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common8dfschema8DFSchemaECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1786, !nonnull !20, !noundef !20
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !1786
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaE9drop_slowCs6ePPILGZvJ2_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #31
          to label %.body unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEENtNtNtBJ_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEENtNtNtBQ_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECs43kcu4yvms7_24influxdb3_query_executor.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEENtNtNtBQ_3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.g ], [ %i.f, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies22FunctionalDependenciesECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.h) #31
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies22FunctionalDependenciesECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies22FunctionalDependenciesECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.j:                                             ; preds = %.body, %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #31
          to label %common.resume unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit3: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs43kcu4yvms7_24influxdb3_query_executor.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs43kcu4yvms7_24influxdb3_query_executor.exit
    i64 1, label %bb.c
  ], !prof !1787

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !23, !invariant.load !20
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #34
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan8SubqueryECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1794, !nonnull !20, !noundef !20
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !1794
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %0) #31
          to label %.body unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEECs43kcu4yvms7_24influxdb3_query_executor.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.g ], [ %i.f, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5spans5SpansECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.h) #31
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common5spans4SpanENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5spans5SpansECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common5spans4SpanENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5spans5SpansECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common5spans4SpanENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.j:                                             ; preds = %.body, %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5store14AutoAssertNoGcECs43kcu4yvms7_24influxdb3_query_executor(ptr nofree readonly captures(none) %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i8 %.8.val to i1
  br i1 %i.a, label %bb.b, label %_RNvXs8_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtB5_14AutoAssertNoGcNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 352
  %i.c = load i64, ptr %i.b, align 8, !range !27, !noundef !20
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !20, !noundef !20
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 464
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !20, !align !22, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !20, !nonnull !20
  tail call void %i.i(ptr noundef nonnull %i.e), !inline_history !1795
  br label %_RNvXs8_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtB5_14AutoAssertNoGcNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @299, i64 noundef 68, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @301) #32
  unreachable

_RNvXs8_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5storeNtB5_14AutoAssertNoGcNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3dcl11ResetConfigECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !20
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast10ObjectNameECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast3dcl18AlterRoleOperationECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !83, !noundef !20 ; 3 uses
  %i.b = icmp ne i64 %i.a, 72
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -68
  %i.d = icmp sgt i64 %i.a, 67
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.i
    i64 2, label %bb.l
    i64 3, label %bb.o
    i64 4, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !27, !alias.scope !1806, !noundef !20
  %i.h = icmp eq i64 %i.g, -1
end_hunk_5
begin_hunk_6_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast18OperateFunctionArgENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1T_8adapters3map12map_try_foldBW_INtNtB1V_6result6ResultNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB1V_3ops12control_flow11ControlFlowIB6a_B3W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB77_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls9_0NCINvXB2Z_INtB2Z_12GenericShuntINtB2X_3MapBH_B70_EIB3A_NtNtB1V_7convert10InfallibleB59_EEB1N_8try_folduNCINvNvB1N_12try_for_each4callB3W_B6P_NcNtB6P_5Break0E0B6P_E0E0B69_ECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  invoke fastcc void @_RNvXs2_NtCsj9JzdWj4GcM_12arrow_schema8datatypeNtB5_8DataTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.q unwind label %bb.o, !noalias !4902

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %bb.j
  %.sroa.025.2.i.i = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ true, %bb.j ]
  %.pn.i.i = phi { ptr, i32 } [ %i.ak, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4904)
  call void @llvm.experimental.noalias.scope.decl(metadata !4905)
  %i.aa = load ptr, ptr %i.g, align 8, !alias.scope !4906, !noalias !4901, !nonnull !20, !noundef !20
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !4907
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.noexc.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc.i.i unwind label %bb.s, !noalias !4902

bb.j:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.d, align 16, !range !104, !noalias !4901, !noundef !20 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.617.i.sroa.0.0.copyload11.i = load i64, ptr %i.ag, align 8, !noalias !4901 ; 3 uses
  %.sroa.617.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.617.i.sroa.7.0.copyload13.i = load ptr, ptr %.sroa.617.i.sroa.7.0..sroa_idx.i, align 16, !noalias !4901 ; 3 uses
  %.sroa.617.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.sroa.8.0..sroa_idx.i, i64 24, i1 false), !noalias !4901
  br i1 %i.af, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.sroa.8.i, i64 24, i1 false), !noalias !4903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4901
  call void @llvm.experimental.noalias.scope.decl(metadata !4908)
  call void @llvm.experimental.noalias.scope.decl(metadata !4909)
  %i.ah = load ptr, ptr %i.g, align 8, !alias.scope !4910, !noalias !4901, !nonnull !20, !noundef !20
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !4911
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit47.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit47.i.i unwind label %.split.thread.i.i, !noalias !4902

bb.n:                                             ; preds = %bb.k
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.2.i.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.537.0..sroa_idx.i.i, i64 64, i1 false), !noalias !4901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.sroa.8.i, i64 24, i1 false), !noalias !4901
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4901
  %.pre.i.i = load ptr, ptr %i.g, align 8, !noalias !4901
  br label %bb.g

bb.o:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = icmp eq i64 %.sroa.014.0.copyload.i, -2
  br i1 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.s, !noalias !4902

bb.q:                                             ; preds = %bb.g
  %.sroa.716.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.716.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.716.112..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !4898
  %.sroa.716.176..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.716.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.716.176..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i.sroa.5.i, i64 24, i1 false), !noalias !4898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.716.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.2.i.sroa.6.i, i64 64, i1 false), !noalias !4898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4901
  call void @llvm.experimental.noalias.scope.decl(metadata !4912)
  call void @llvm.experimental.noalias.scope.decl(metadata !4913)
  %i.am = load ptr, ptr %i.g, align 8, !alias.scope !4914, !noalias !4901, !nonnull !20, !noundef !20
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !4915
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ai unwind label %.split.i.i, !noalias !4902

bb.s:                                             ; preds = %bb.af, %bb.ad, %bb.ac, %bb.ab, %.body.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %bb.p, %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !4902
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.p, %bb.o
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(64) %i.c) #31
          to label %bb.h unwind label %bb.s, !noalias !4902

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit47.i.i: ; preds = %bb.m, %bb.l, %bb.d
  %.sroa.9.0.i = phi ptr [ %.sroa.430.0.copyload.i.i, %bb.d ], [ %.sroa.617.i.sroa.7.0.copyload13.i, %bb.m ], [ %.sroa.617.i.sroa.7.0.copyload13.i, %bb.l ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ %i.r, %bb.d ], [ %.sroa.617.i.sroa.0.0.copyload11.i, %bb.m ], [ %.sroa.617.i.sroa.0.0.copyload11.i, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4901
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 328 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !27, !alias.scope !4916, !noalias !4898, !noundef !20
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit47.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.u, !noalias !4902

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %.body.i.i unwind label %bb.v, !noalias !4902

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !4902
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.w, !noalias !4902

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.w, %bb.u
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.av, %bb.w ], [ %i.at, %bb.u ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q) #31
          to label %bb.x unwind label %bb.s, !noalias !4902

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit47.i.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %bb.z unwind label %bb.y, !noalias !4902

bb.x:                                             ; preds = %bb.y, %.body.i.i
  %.pn43.i.i = phi { ptr, i32 } [ %i.ay, %bb.y ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.aw = load i64, ptr %i.h, align 8, !range !43, !alias.scope !4900, !noalias !4898, !noundef !20
  %i.ax = icmp ne i64 %i.aw, -4
  %or.cond3.i.i = and i1 %.not.i.i, %i.ax
  br i1 %or.cond3.i.i, label %bb.ab, label %common.resume.i

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %i.az = load i64, ptr %i.h, align 8, !range !43, !alias.scope !4900, !noalias !4898, !noundef !20
  %i.ba = icmp ne i64 %i.az, -4
  %or.cond.i.i = and i1 %.not.i.i, %i.ba
  br i1 %or.cond.i.i, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(456) %i.h), !noalias !4902
  br label %bb.ag

common.resume.i:                                  ; preds = %bb.aj, %bb.af, %bb.ae, %bb.ab, %bb.x
  %common.resume.op.i = phi { ptr, i32 } [ %i.bg, %bb.aj ], [ %.pn43.i.i, %bb.ab ], [ %.pn43.i.i, %bb.x ], [ %.pn4154.i.i, %bb.af ], [ %.pn4154.i.i, %bb.ae ]
  resume { ptr, i32 } %common.resume.op.i

bb.ab:                                            ; preds = %bb.x
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(456) %i.h) #31
          to label %common.resume.i unwind label %bb.s, !noalias !4902

bb.ac:                                            ; preds = %bb.ad, %.split.i.i, %.noexc.i.i
  %.pn4154.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %.split.i.i ], [ %.pn4155.i.i, %bb.ad ], [ %.pn.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.022.052.i.i = phi i1 [ %.not39.i.i, %.split.i.i ], [ %.sroa.022.053.i.i, %bb.ad ], [ %.not39.i.i, %.noexc.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q) #31
          to label %bb.ae unwind label %bb.s, !noalias !4902

bb.ad:                                            ; preds = %.split.thread.i.i, %.noexc.i.i
  %.pn4155.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.split.thread.i.i ], [ %.pn.i.i, %.noexc.i.i ]
  %.sroa.022.053.i.i = phi i1 [ %.sroa.022.1.ph.i.i, %.split.thread.i.i ], [ %.not39.i.i, %.noexc.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #31
          to label %bb.ac unwind label %bb.s, !noalias !4902

bb.ae:                                            ; preds = %bb.ac
  %i.bc = load i64, ptr %i.h, align 8, !range !43, !alias.scope !4900, !noalias !4898, !noundef !20
  %i.bd = icmp ne i64 %i.bc, -4
  %or.cond5.i.i = and i1 %.sroa.022.052.i.i, %i.bd
  br i1 %or.cond5.i.i, label %bb.af, label %common.resume.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(456) %i.h) #31
          to label %common.resume.i unwind label %bb.s, !noalias !4902

bb.ag:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4898
  %i.be = load i64, ptr %.val, align 8, !range !101, !alias.scope !4917, !noalias !4918, !noundef !20
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.aj, !noalias !4918

bb.ai:                                            ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4901
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q), !noalias !4902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.10, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.716.i, i64 160, i1 false)
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0.i, ptr %.val, align 8, !noalias !4919
  %.sroa.4.sroa.6.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx.i, align 8, !noalias !4919
  %.sroa.4.sroa.7.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false), !noalias !4898
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.ah, %bb.ag
  store i64 %.sroa.6.0.i, ptr %.val, align 8, !noalias !4919
  %.sroa.4.sroa.6.0..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx7.i, align 8, !noalias !4919
  %.sroa.4.sroa.7.0..8.val.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br label %bb.am

bb.ak:                                            ; preds = %bb.a
  store i64 -4, ptr %0, align 16, !alias.scope !4920
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.am
  ret void

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %bb.ai
  %.sroa.4.sroa.7.0..8.val.sroa_idx9.i.sink = phi ptr [ %.sroa.4.sroa.7.0..8.val.sroa_idx9.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ %.sroa.9, %bb.ai ]
  %.sroa.8.0 = phi ptr [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ %.sroa.5.0.copyload.i, %bb.ai ]
  %.sroa.6.0 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.ai ]
  %.sroa.06.0 = phi i64 [ -3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ %.sroa.014.0.copyload.i, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.0..8.val.sroa_idx9.i.sink, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i)
  store i64 %.sroa.06.0, ptr %0, align 16, !alias.scope !4921
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4921
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.0, ptr %.sroa.5.0..sroa_idx, align 16, !alias.scope !4921
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.7.0..sroa_idx10, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.10, i64 160, i1 false)
  br label %bb.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldBW_INtNtB1G_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB5r_B3H_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB6q_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapBH_B6h_EIB3l_NtNtB1G_7convert10InfallibleB4q_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB3H_B66_NcNtB66_5Break0E0B66_E0E0B5q_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i = alloca [104 x i8], align 8     ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !20, !align !22, !noundef !20 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.410.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %i.k, i64 328, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 328 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !4935)
  %i.m = load ptr, ptr %.val3, align 8, !alias.scope !4935, !noalias !4934, !nonnull !20, !align !22, !noundef !20
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !4935, !noalias !4934, !nonnull !20, !align !22, !noundef !20
  %i.o = load ptr, ptr %i.n, align 8, !noalias !4936, !nonnull !20, !noundef !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.i, align 8, !alias.scope !4935, !noalias !4934, !nonnull !20, !align !22, !noundef !20
  call void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE11sql_to_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.q), !noalias !4934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4934
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !4934 ; 3 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.r, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9w_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.s, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.t = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !4937, !noalias !4938, !noundef !20
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9w_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9w_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread unwind label %bb.e, !noalias !4938

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !4934
  resume { ptr, i32 } %i.v

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9w_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !4934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9w_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ -3, %bb.a ], [ -3, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9w_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9w_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6valuesINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9w_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldBW_INtNtB1G_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB5r_B3H_EENCNCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr12grouping_setINtNtB6s_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapBH_B6h_EIB3l_NtNtB1G_7convert10InfallibleB4q_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB3H_B66_NcNtB66_5Break0E0B66_E0E0B5q_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i = alloca [104 x i8], align 8     ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !20, !align !22, !noundef !20 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.410.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %i.k, i64 328, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 328 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %.val3, align 8, !alias.scope !4950, !noalias !4949, !nonnull !20, !align !22, !noundef !20
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !4950, !noalias !4949, !nonnull !20, !align !22, !noundef !20
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !4950, !noalias !4949, !nonnull !20, !align !22, !noundef !20
  call void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o), !noalias !4949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4949
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !4949 ; 3 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr12grouping_setINtNtB4G_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9R_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.q, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.r = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !4951, !noalias !4952, !noundef !20
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr12grouping_setINtNtB4G_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9R_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr12grouping_setINtNtB4G_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9R_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread unwind label %bb.e, !noalias !4952

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldBW_INtNtB1G_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB5r_B3H_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB6o_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapBH_B6h_EIB3l_NtNtB1G_7convert10InfallibleB4q_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB3H_B66_NcNtB66_5Break0E0B66_E0E0B5q_ECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  %.val.le42 = load ptr, ptr %i.hm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !5070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5068
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.e)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !5068

bb.ak:                                            ; preds = %bb.aj, %bb.ae
  %.val39 = phi ptr [ %.val.le42, %bb.aj ], [ %.val.le44, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5068
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit54.i.i

bb.al:                                            ; preds = %bb.am, %bb.ag, %.body.i.i
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5068
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit54.i.i: ; preds = %bb.ak, %bb.ab, %bb.y
  %.val38 = phi ptr [ %.val39, %bb.ak ], [ %.val.le46, %bb.ab ], [ %.val.le48, %bb.y ]
  call void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 144, i64 noundef 16), !noalias !5068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5068
  br label %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread.i

common.resume.i:                                  ; preds = %bb.ap, %bb.am, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.hs, %bb.ap ], [ %.pn.i.i, %bb.e ], [ %.pn4656.i.i, %bb.am ]
  resume { ptr, i32 } %common.resume.op.i

bb.am:                                            ; preds = %.split.i.i, %bb.e
  %.pn4656.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %.split.i.i ], [ %.pn.i.i, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.n) #31
          to label %common.resume.i unwind label %bb.al, !noalias !5068

_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit54.i.i, %bb.c
  %.val37 = phi ptr [ %.val38, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor.exit54.i.i ], [ %.val.le50, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !5066
  br label %bb.an

_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5068
  %.sroa.01.0.copyload.i = load i64, ptr %i.e, align 16, !noalias !5070 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.426.0..sroa_idx.i.i, i64 40, i1 false), !noalias !5070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.15.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.527.0..sroa_idx.i.i, i64 64, i1 false), !noalias !5070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5068
  call void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 144, i64 noundef 16), !noalias !5068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !5066
  %i.ho = icmp eq i64 %.sroa.01.0.copyload.i, -2
  br i1 %i.ho, label %.loopexit, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

.loopexit:                                        ; preds = %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.hp, align 8
  br label %bb.an

bb.an:                                            ; preds = %.loopexit, %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread.i
  %.val36 = phi ptr [ %.val.le, %.loopexit ], [ %.val37, %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  %i.hq = load i64, ptr %.val36, align 8, !range !101, !alias.scope !5099, !noalias !5100, !noundef !20
  %i.hr = icmp eq i64 %i.hq, -1
  br i1 %i.hr, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val36)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread unwind label %bb.ap, !noalias !5100

bb.ap:                                            ; preds = %bb.ao
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val36, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false), !noalias !5101
  br label %common.resume.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.an, %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val36, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false), !noalias !5101
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %.loopexit17

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.15.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %.not.i = icmp eq i64 %.sroa.01.0.copyload.i, -3
  br i1 %.not.i, label %bb.aq, label %.loopexit17

._crit_edge:                                      ; preds = %bb.aq, %bb.a, %.loopexit17
  %storemerge = phi i64 [ %.sroa.06.011, %.loopexit17 ], [ -3, %bb.a ], [ -3, %bb.aq ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit17:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread
  %.sroa.06.011 = phi i64 [ -2, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread ], [ %.sroa.01.0.copyload.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.aq:                                            ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql6selectINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9r_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not = icmp eq ptr %i.am, %i.r
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldBW_INtNtB1G_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB5r_B3H_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql8relationINtNtB6o_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE15create_relations_0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapBH_B6h_EIB3l_NtNtB1G_7convert10InfallibleB4q_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB3H_B66_NcNtB66_5Break0E0B66_E0E0B5q_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = alloca [112 x i8], align 16              ; 11 uses
  %i.f = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.10.i = alloca [96 x i8], align 16        ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !20, !noundef !20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !20, !noundef !20 ; 3 uses
  %.not = icmp eq ptr %i.j, %i.h
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.f, ptr noundef nonnull align 8 dereferenceable(328) %i.j, i64 328, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  store ptr %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.m, align 8, !nonnull !20, !align !22, !noundef !20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5121
  %i.n = load ptr, ptr %.val3, align 8, !alias.scope !5120, !noalias !5119, !nonnull !20, !align !22, !noundef !20
  %i.o = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !5120, !noalias !5119, !nonnull !20, !align !22, !noundef !20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5120, !noalias !5119, !nonnull !20, !align !22, !noundef !20
  call void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.r)
  %i.s = load i64, ptr %i.c, align 16, !range !104, !noundef !20 ; 2 uses
  %i.t = icmp eq i64 %i.s, -2
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.i.sroa.0.0.copyload8.i = load ptr, ptr %i.u, align 8 ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.511.0..sroa_idx.i.i, i64 64, i1 false)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.6.i.sroa.0.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5121
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 %i.s, ptr %i.e, align 16, !noalias !5121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5121
  invoke void @_RNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE16check_unnest_argCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p)
          to label %bb.e unwind label %bb.g, !noalias !5121

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.b, align 8, !range !101, !noalias !5121, !noundef !20 ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, -1
  br i1 %.not.i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %i.v to ptr
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.8..sroa_idx.i, i64 32, i1 false), !noalias !5119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5121
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.e), !noalias !5121
  br label %bb.i

common.resume.i:                                  ; preds = %bb.l, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.x, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.e) #31
          to label %common.resume.i unwind label %bb.h, !noalias !5121

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5121
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.c
  %.sroa.6.0.ph.i = phi ptr [ %i.w, %bb.f ], [ %.sroa.6.i.sroa.0.0.copyload8.i, %bb.c ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5119
  %i.z = load i64, ptr %.val, align 8, !range !101, !alias.scope !5122, !noalias !5123, !noundef !20
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.l, !noalias !5123

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !5121
  %i.ab = call noundef nonnull align 16 ptr @_RNvMs7_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_6Unnest3new(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a), !noalias !5121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5119
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.6.0.ph.i, ptr %.val, align 8, !noalias !5124
  %.sroa.4.sroa.6.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.6.0..8.val.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, i64 32, i1 false), !noalias !5119
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.j, %bb.i
  store ptr %.sroa.6.0.ph.i, ptr %.val, align 8, !noalias !5124
  %.sroa.4.sroa.6.0..8.val.sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.6.0..8.val.sroa_idx6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10.i, i64 32, i1 false), !noalias !5119
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  store i64 -3, ptr %0, align 16, !alias.scope !5125
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.o
  ret void

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %bb.k
  %.sroa.6.0 = phi ptr [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ %i.ab, %bb.k ]
  %.sroa.06.0 = phi i64 [ -2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ 35, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 %.sroa.06.0, ptr %0, align 16, !alias.scope !5126
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5126
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldBW_INtNtB1G_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB5r_B3H_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB6o_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapBH_B6h_EIB3l_NtNtB1G_7convert10InfallibleB4q_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB3H_B66_NcNtB66_5Break0E0B66_E0E0B5q_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i = alloca [104 x i8], align 8     ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !20, !align !22, !noundef !20 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.410.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %i.k, i64 328, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 328 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %.val3, align 8, !alias.scope !5138, !noalias !5137, !nonnull !20, !align !22, !noundef !20
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !5138, !noalias !5137, !nonnull !20, !align !22, !noundef !20
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !5138, !noalias !5137, !nonnull !20, !align !22, !noundef !20
  call void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE11sql_to_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o), !noalias !5137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5137
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !5137 ; 3 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.q, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.r = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !5139, !noalias !5140, !noundef !20
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread unwind label %bb.e, !noalias !5140

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !5137
  resume { ptr, i32 } %i.t

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !5137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ -3, %bb.a ], [ -3, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB4C_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls3_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldBW_INtNtB1G_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB5r_B3H_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB6q_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapBH_B6h_EIB3l_NtNtB1G_7convert10InfallibleB4q_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB3H_B66_NcNtB66_5Break0E0B66_E0E0B5q_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i = alloca [104 x i8], align 8     ; 3 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [328 x i8], align 8               ; 5 uses
  %i.c = alloca [112 x i8], align 16              ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not20 = icmp eq ptr %.promoted, %i.e
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !20, !align !22, !noundef !20 ; 2 uses
  %i.h = getelementptr i8, ptr %.val3, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.410.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.i, i64 328, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 328 ; 3 uses
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val.i = load ptr, ptr %.val3, align 8, !noalias !5153, !nonnull !20, !align !22, !noundef !20
  %.val2.i = load ptr, ptr %i.h, align 8, !noalias !5153, !nonnull !20, !align !22, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5152
  invoke void @_RNvMs7_NtCs1eXVLxSVbjH_14datafusion_sql7plannerNtB5_14PlannerContext3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a)
          to label %bb.d unwind label %bb.c, !noalias !5152

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.b) #31
          to label %common.resume.i unwind label %bb.f, !noalias !5152

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val2.i, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RNCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB8_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.e, !noalias !5153

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1eXVLxSVbjH_14datafusion_sql7planner14PlannerContextECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(80) %i.a) #31
          to label %common.resume.i unwind label %bb.f, !noalias !5152

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5152
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.e, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.l, %bb.e ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RNCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB8_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5152
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1eXVLxSVbjH_14datafusion_sql7planner14PlannerContextECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(80) %i.a), !noalias !5152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5152
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !noalias !5153 ; 3 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.n, label %bb.g, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9y_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.g:                                             ; preds = %_RNCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB8_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.o, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.p = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !5154, !noalias !5155, !noundef !20
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9y_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9y_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread unwind label %bb.i, !noalias !5155

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !5153
  br label %common.resume.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9y_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !5153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9y_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RNCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB8_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i, label %bb.j, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ -3, %bb.a ], [ -3, %bb.j ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9y_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9y_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.j:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B1W_EENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr5valueINtNtB4E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE17sql_array_literal0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4v_EIB1B_NtNtBa_7convert10InfallibleB2F_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9y_12try_for_each4callB1W_B4k_NcNtB4k_5Break0E0B4k_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldBW_uINtNtNtB1G_3ops12control_flow11ControlFlowIB3s_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB58_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB2K_3map12map_try_foldBW_INtNtB1G_6result6ResultB4c_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB3r_NCB4Z_s1_0NCINvXB2K_INtB2K_12GenericShuntINtB85_3MapINtB2I_6FilterBH_B4X_EBa1_EIB8x_NtNtB1G_7convert10InfallibleB8X_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB4c_B47_NcNtB47_5Break0E0B47_E0E0E0B3r_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i.i = alloca [104 x i8], align 8   ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = alloca [328 x i8], align 8               ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not24 = icmp eq ptr %.promoted, %i.e
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3 = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.410.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.c, ptr noundef nonnull align 8 dereferenceable(328) %i.l, i64 328, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 328 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5169)
  %.val.i = load i64, ptr %i.c, align 8, !range !71, !alias.scope !5169, !noundef !20 ; 2 uses
  %i.n = icmp ne i64 %.val.i, 45
  call void @llvm.assume(i1 %i.n)
  %.not.i = icmp eq i64 %.val.i, 42
  br i1 %.not.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %.noexc.i

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %i.l, i64 328, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5171
  %i.o = load ptr, ptr %.val3, align 8, !alias.scope !5172, !noalias !5170, !nonnull !20, !align !22, !noundef !20
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !5172, !noalias !5170, !nonnull !20, !align !22, !noundef !20
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !5172, !noalias !5170, !nonnull !20, !align !22, !noundef !20
  call void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.q), !noalias !5171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5170
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !noalias !5170 ; 3 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i, -2
  br i1 %i.r, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.le = load ptr, ptr %i.s, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.t = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !5173, !noalias !5174, !noundef !20
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread13, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread13 unwind label %bb.e, !noalias !5174

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !5170
  resume { ptr, i32 } %i.v

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread13: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !5170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.b
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.c), !noalias !5175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.k, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i4 = icmp eq i64 %.sroa.0.0.copyload.i.i, -3
  br i1 %.not.i4, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i.i, %.loopexit ], [ -3, %bb.a ], [ -3, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExpruINtNtNtBa_3ops12control_flow11ControlFlowIB1I_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMs_NtNtCs1eXVLxSVbjH_14datafusion_sql4expr8functionINtNtB3n_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs0_0NCINvNtB6_3map12map_try_foldB15_INtNtBa_6result6ResultB2r_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB1H_NCB3e_s1_0NCINvXB6_INtB6_12GenericShuntINtB6k_3MapINtB4_6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB15_EB3c_EB8f_EIB6M_NtNtBa_7convert10InfallibleB7b_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaU_12try_for_each4callB2r_B2m_NcNtB2m_5Break0E0B2m_E0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1E_8adapters9enumerateINtB2N_9EnumeratepEB1y_8try_fold9enumerateBW_uINtNtNtB1G_3ops12control_flow11ControlFlowIB3Z_ANtNtCs7fnekraeopg_15datafusion_expr4expr4Exprj2_EENCINvNtB2P_3map12map_try_foldTjBW_EINtNtB1G_6result6ResultB4J_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB3Y_NCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB7J_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24create_named_struct_expr0NCINvXB2P_INtB2P_12GenericShuntINtB5D_3MapIB3f_BH_EB7C_EIB68_NtNtB1G_7convert10InfallibleB6y_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB4J_B4E_NcNtB4E_5Break0E0B4E_E0E0E0B3Y_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 16 captures(none) dereferenceable(224) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.sroa.0.i.i = alloca [104 x i8], align 8 ; 3 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.613.i.i.i = alloca [40 x i8], align 8    ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [112 x i8], align 16              ; 9 uses
  %i.g = alloca [328 x i8], align 8               ; 4 uses
  %i.h = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.i = alloca [112 x i8], align 16              ; 9 uses
  %i.j = alloca [64 x i8], align 8                ; 12 uses
  %.sroa.05.i.sroa.6.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.05.i.sroa.8.i.i = alloca [64 x i8], align 16 ; 7 uses
  %.sroa.68.i.i.i = alloca [40 x i8], align 8     ; 7 uses
  %.sroa.7.i.i.i = alloca [64 x i8], align 16     ; 7 uses
  %i.k = alloca [328 x i8], align 8               ; 13 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.73.i.i = alloca [40 x i8], align 8       ; 9 uses
  %.sroa.10.i.i = alloca [64 x i8], align 16      ; 5 uses
  %.sroa.13.i.i = alloca [40 x i8], align 8       ; 5 uses
  %.sroa.15.i.i = alloca [64 x i8], align 16      ; 5 uses
  %.sroa.7.i = alloca [40 x i8], align 8          ; 2 uses
  %.sroa.8.i = alloca [64 x i8], align 16         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.n, align 8        ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %.not28 = icmp eq ptr %.promoted, %i.o
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !5197, !nonnull !20, !align !22, !noundef !20 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !5197 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !5197, !nonnull !20, !align !22, !noundef !20 ; 4 uses
  %.sroa.427.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.532.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.05.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.05.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.05.i.sroa.6.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.05.i.sroa.8.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.410.i.sroa.0.40..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.sroa.0.i.i, i64 40
  %.pre = load i64, ptr %i.q, align 8, !noalias !5198
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ar
  %i.y = phi i64 [ %.pre, %.lr.ph ], [ %i.bs, %bb.ar ]
  %i.z = phi ptr [ %.promoted, %.lr.ph ], [ %i.aa, %bb.ar ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 328 ; 3 uses
  store ptr %i.aa, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5197)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5199)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5200
  store i64 %i.y, ptr %i.l, align 8, !noalias !5200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.k, ptr noundef nonnull align 8 dereferenceable(328) %i.z, i64 328, i1 false)
  %i.ab = load i64, ptr %i.k, align 8, !range !71, !noalias !5200, !noundef !20 ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 45
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %i.ab, 54
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.w, align 8, !noalias !5200, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5200
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5200
  invoke void @_RNvXs_NtCs7fnekraeopg_15datafusion_expr7literalNtNtCscdodAO9FK5_5alloc6string6StringNtB4_7Literal3lit(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.g unwind label %bb.f, !noalias !5200

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5200
  store ptr %i.l, ptr %i.c, align 8, !noalias !5200
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.427.0..sroa_idx.i.i.i, align 8, !noalias !5200
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @36, ptr noundef nonnull %i.c)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %.body47.i.i.i, !noalias !5200

bb.e:                                             ; preds = %bb.h, %bb.f
  %.sroa.021.0.i.i.i = phi i1 [ %.sroa.021.1.i.i.i, %bb.f ], [ false, %bb.h ]
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ak, %bb.h ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j) #31
          to label %bb.n unwind label %bb.u, !noalias !5200

bb.f:                                             ; preds = %bb.j, %bb.c
  %.sroa.021.1.i.i.i = phi i1 [ false, %bb.j ], [ true, %bb.c ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5200
  %i.ah = load ptr, ptr %.val1.i, align 8, !alias.scope !5199, !noalias !5201, !nonnull !20, !align !22, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.g, ptr noundef nonnull align 8 dereferenceable(328) %i.ae, i64 328, i1 false), !noalias !5200
  %i.ai = load ptr, ptr %i.t, align 8, !alias.scope !5199, !noalias !5201, !nonnull !20, !align !22, !noundef !20
  %i.aj = load ptr, ptr %i.u, align 8, !alias.scope !5199, !noalias !5201, !nonnull !20, !align !22, !noundef !20
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aj)
          to label %bb.i unwind label %bb.h, !noalias !5200

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.i) #31
          to label %bb.e unwind label %bb.u, !noalias !5200

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5200
  %i.al = load i64, ptr %i.h, align 16, !range !104, !noalias !5200, !noundef !20 ; 3 uses
  %i.am = icmp eq i64 %i.al, -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !5200
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5200
end_hunk_7
begin_hunk_8_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast8CaseWhenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTINtNtBa_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEB3h_EENCINvNtNtB1I_8adapters3map12map_try_foldBW_INtNtB1K_6result6ResultB3g_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEB2G_INtNtNtB1K_3ops12control_flow11ControlFlowIB57_B2G_zEB2G_ENCNvMNtNtCs1eXVLxSVbjH_14datafusion_sql4expr10identifierINtNtB7F_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE27sql_case_identifier_to_expr0NCINvXB4w_INtB4w_12GenericShuntINtB4u_3MapBH_B7w_EIB57_NtNtB1K_7convert10InfallibleB5x_EEB1C_8try_foldB2G_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3g_E0B7g_E0E0B6A_ECs43kcu4yvms7_24influxdb3_query_executor:bb.a

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.e) #31
          to label %.thread27.i.i unwind label %bb.i, !noalias !5280

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5280
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ae, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !5280
  store ptr %i.ae, ptr %i.h, align 8, !noalias !5280
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.c, ptr noundef nonnull align 8 dereferenceable(328) %i.s, i64 328, i1 false), !noalias !5283
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.z)
          to label %bb.l unwind label %bb.k, !noalias !5280

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #31
          to label %bb.z unwind label %bb.r, !noalias !5280

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5280
  %i.aj = load i64, ptr %i.d, align 16, !range !104, !noalias !5280, !noundef !20 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -2
  %.sroa.6.i.sroa.0.0.copyload14.i = load i64, ptr %i.t, align 8, !noalias !5280 ; 2 uses
  %.sroa.6.i.sroa.7.0.copyload16.i = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx.i, align 16, !noalias !5280 ; 2 uses
  %.sroa.6.i.sroa.8.0.copyload18.i = load ptr, ptr %.sroa.6.i.sroa.8.0..sroa_idx.i, align 8, !noalias !5280 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.i.sroa.9.0..sroa_idx.i, i64 16, i1 false), !noalias !5280
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i, i64 16, i1 false), !noalias !5278
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 16 dereferenceable(112) %i.ae) #35
          to label %bb.s unwind label %bb.c, !noalias !5281, !inline_history !32

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.0..sroa_idx7.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.512.0..sroa_idx.i.i, i64 64, i1 false), !noalias !5280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5280
  store i64 %i.aj, ptr %i.b, align 16, !noalias !5280
  store i64 %.sroa.6.i.sroa.0.0.copyload14.i, ptr %.sroa.6.0..sroa_idx6.i.i, align 8, !noalias !5280
  store ptr %.sroa.6.i.sroa.7.0.copyload16.i, ptr %.sroa.6.i.sroa.7.0..sroa.6.0..sroa_idx6.i.sroa_idx.i, align 16, !noalias !5280
  store ptr %.sroa.6.i.sroa.8.0.copyload18.i, ptr %.sroa.6.i.sroa.8.0..sroa.6.0..sroa_idx6.i.sroa_idx.i, align 8, !noalias !5280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.i.sroa.9.0..sroa.6.0..sroa_idx6.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.9.i, i64 16, i1 false), !noalias !5280
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !5284
  %i.al = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 112, i64 noundef range(i64 1, 17) 16) #34, !noalias !5284 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.o, label %.thread.i, !prof !26

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #32
          to label %.noexc22.i.i unwind label %bb.p, !noalias !5280

.noexc22.i.i:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b) #31
          to label %.body.i.i unwind label %bb.q, !noalias !5280

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5280
  unreachable

.body.i.i:                                        ; preds = %bb.p
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #31
          to label %bb.z unwind label %bb.r, !noalias !5280

.thread.i:                                        ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.al, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !5280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5278
  br label %bb.ac

bb.r:                                             ; preds = %.thread27.i.i, %.body.i.i, %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5283
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 112, i64 noundef 16) #34, !noalias !5281, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.10.i)
  br label %bb.u

.thread27.i.i:                                    ; preds = %bb.h, %.thread31.i.i
  %eh.lpad-body1730.i.i = phi { ptr, i32 } [ %i.ab, %.thread31.i.i ], [ %i.ag, %bb.h ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.s) #31
          to label %bb.z unwind label %bb.r, !noalias !5283

bb.t:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.e
  %.sroa.85.0.i = phi ptr [ %.sroa.7.i.sroa.9.0.copyload12.i, %bb.e ], [ %.sroa.6.i.sroa.8.0.copyload18.i, %bb.s ] ; 3 uses
  %.sroa.63.0.i = phi ptr [ %.sroa.7.i.sroa.8.0.copyload10.i, %bb.e ], [ %.sroa.6.i.sroa.7.0.copyload16.i, %bb.s ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %.sroa.7.i.sroa.0.0.copyload8.i, %bb.e ], [ %.sroa.6.i.sroa.0.0.copyload14.i, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5278
  store ptr %2, ptr %i.a, align 8, !noalias !5285
  store ptr %.sroa.4.033, ptr %i.u, align 8, !noalias !5285
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.i, -1
  br i1 %.not.i.i.i, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.ar, align 8, !nonnull !20, !noundef !20 ; 10 uses
  %i.as = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !5286, !noalias !5285, !noundef !20
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.ab unwind label %bb.x, !noalias !5285

bb.x:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.0.i, ptr %.val.le, align 8, !noalias !5285
  %.sroa.511.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.63.0.i, ptr %.sroa.511.0..8.val.sroa_idx.i.i, align 8, !noalias !5285
  %.sroa.614.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  store ptr %.sroa.85.0.i, ptr %.sroa.614.0..8.val.sroa_idx.i.i, align 8, !noalias !5285
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !5278
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropTINtNtBI_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEB1y_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(16) %i.a) #31
          to label %.body.i unwind label %bb.y, !noalias !5285

bb.y:                                             ; preds = %bb.x
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5285
  unreachable

.body.i:                                          ; preds = %bb.z, %bb.x
  %eh.lpad-body21.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.z ], [ %i.au, %bb.x ]
  resume { ptr, i32 } %eh.lpad-body21.i

bb.z:                                             ; preds = %bb.t, %.thread27.i.i, %.body.i.i, %bb.k, %bb.c
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %i.ai, %bb.k ], [ %eh.lpad-body1730.i.i, %.thread27.i.i ], [ %i.aa, %bb.c ], [ %i.an, %.body.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropTINtNtBI_5boxed3BoxNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEB1y_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(16) %i.j) #31
          to label %.body.i unwind label %bb.aa, !noalias !5278

bb.aa:                                            ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5278
  unreachable

._crit_edge:                                      ; preds = %bb.ac, %bb.a, %bb.ab
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.033, %bb.ab ], [ %3, %bb.a ], [ %i.ba, %bb.ac ]
  %storemerge = phi i64 [ 1, %bb.ab ], [ 0, %bb.a ], [ 0, %bb.ac ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ay, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.ab:                                            ; preds = %bb.v, %bb.w
  store i64 %.sroa.01.0.i, ptr %.val.le, align 8, !noalias !5285
  %.sroa.511.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.63.0.i, ptr %.sroa.511.0..8.val.sroa_idx12.i.i, align 8, !noalias !5285
  %.sroa.614.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  store ptr %.sroa.85.0.i, ptr %.sroa.614.0..8.val.sroa_idx15.i.i, align 8, !noalias !5285
  %.sroa.7.0..8.val.sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx17.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %._crit_edge

bb.ac:                                            ; preds = %bb.u, %.thread.i
  %.sroa.63.028.i = phi ptr [ %i.ae, %.thread.i ], [ %.sroa.63.0.i, %bb.u ] ; 2 uses
  %.sroa.85.027.i = phi ptr [ %i.al, %.thread.i ], [ %.sroa.85.0.i, %bb.u ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.028.i), "nonnull"(ptr %.sroa.85.027.i) ]
  store ptr %.sroa.63.028.i, ptr %.sroa.4.033, align 8, !noalias !5287
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.4.033, i64 8
  store ptr %.sroa.85.027.i, ptr %i.az, align 8, !noalias !5287
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.033, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5278
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %.not = icmp eq ptr %i.w, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsaNmiEuYuYZf_9sqlparser3ast8MapEntryENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters3map12map_try_foldBW_IBI_INtNtBa_5boxed3BoxNtBY_4ExprEEuINtNtNtB1K_3ops12control_flow11ControlFlowIB3Y_NtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB5A_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0NCINvNvMsg_NtB2O_7flattenINtB8r_13FlattenCompatppE13iter_try_fold7flattenB3o_uB3X_NCINvNvXsi_B8r_B8F_B1C_8try_fold7flattenB3o_uB3X_NCIB2K_B3s_INtNtB1K_6result6ResultB4I_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuB3X_NCB5v_s_0NCINvXB2O_INtB2O_12GenericShuntINtB2M_3MapINtB8r_7FlatMapBH_B3o_B5t_EBc3_EIBaz_NtNtB1K_7convert10InfallibleBaZ_EEB1C_8try_folduNCINvNvB1C_12try_for_each4callB4I_B4D_NcNtB4D_5Break0E0B4D_E0E0E0E0E0B3X_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.e
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load ptr, ptr %i.g, align 8            ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.53.0..8.val.sroa_idx4.i = getelementptr inbounds nuw i8, ptr %.val3, i64 8 ; 3 uses
  %.sroa.66.0..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16 ; 2 uses
  %.sroa.7.0..8.val.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.val3, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.j ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !20, !align !22, !noundef !20 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !20, !align !22, !noundef !20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5314
  store ptr %i.j, ptr %i.c, align 8, !noalias !5315
  store ptr %i.l, ptr %i.h, align 8, !noalias !5315
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !5316
  %i.n = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 137) 16, i64 noundef range(i64 1, 17) 8) #34, !noalias !5316 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i, !prof !26

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #32
          to label %.noexc.i.i unwind label %bb.d, !noalias !5316

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %bb.f unwind label %bb.e, !noalias !5316

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5316
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #31
          to label %common.resume.i unwind label %bb.e, !noalias !5316

common.resume.i:                                  ; preds = %bb.h, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  store ptr %i.j, ptr %i.n, align 8, !noalias !5316
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.r, align 8, !noalias !5316
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5314
  call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %i.t = load ptr, ptr %.val3, align 8, !alias.scope !5318, !noalias !5319, !noundef !20
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.val3)
          to label %._RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i_crit_edge.i unwind label %bb.h, !noalias !5320

._RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i_crit_edge.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.n, align 8, !noalias !5321
  br label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %.val3, align 8, !alias.scope !5322, !noalias !5323
  store ptr %i.n, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !5322, !noalias !5323
  store i64 2, ptr %.sroa.66.0..8.val.sroa_idx7.i, align 8, !alias.scope !5322, !noalias !5323
  store ptr %i.s, ptr %.sroa.7.0..8.val.sroa_idx9.i, align 8, !alias.scope !5322, !noalias !5323
  br label %common.resume.i

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %._RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i_crit_edge.i, %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.w = phi ptr [ %.pre.i, %._RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i_crit_edge.i ], [ %i.j, %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i ]
  store ptr %i.n, ptr %.val3, align 8, !alias.scope !5322, !noalias !5323
  store i64 2, ptr %.sroa.66.0..8.val.sroa_idx7.i, align 8, !alias.scope !5322, !noalias !5323
  store ptr %i.s, ptr %.sroa.7.0..8.val.sroa_idx9.i, align 8, !alias.scope !5322, !noalias !5323
  call void @llvm.experimental.noalias.scope.decl(metadata !5324)
  call void @llvm.experimental.noalias.scope.decl(metadata !5325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5326
  store ptr %.val, ptr %i.b, align 8, !noalias !5327
  store ptr %i.r, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !5328, !noalias !5319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5327
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4O_B34_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB5E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB28_8MapEntryEIB9o_B1y_ENCB5z_0EB5x_EIB2J_NtNtBb_7convert10InfallibleB3N_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBba_12try_for_each4callB34_B5m_NcNtB5m_5Break0E0B5m_E0E0INtB7_5FnMutTuB1y_EE8call_mutCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.w), !noalias !5321
  %i.x = load i64, ptr %i.a, align 16, !range !102, !alias.scope !5329, !noalias !5327, !noundef !20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.x, -3
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.1.i, label %bb.i

.lr.ph.i.i.i.1.i:                                 ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5327
  %i.y = load ptr, ptr %i.r, align 8, !noalias !5321, !nonnull !20, !align !22, !noundef !20
  store ptr %i.s, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !5328, !noalias !5319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5327
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4O_B34_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB5E_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB28_8MapEntryEIB9o_B1y_ENCB5z_0EB5x_EIB2J_NtNtBb_7convert10InfallibleB3N_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBba_12try_for_each4callB34_B5m_NcNtB5m_5Break0E0B5m_E0E0INtB7_5FnMutTuB1y_EE8call_mutCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.y), !noalias !5321
  %i.z = load i64, ptr %i.a, align 16, !range !102, !alias.scope !5329, !noalias !5327, !noundef !20 ; 2 uses
  %.not.i.i.i.i.1.i = icmp eq i64 %i.z, -3
  br i1 %.not.i.i.i.i.1.i, label %bb.j, label %bb.i

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %storemerge = phi i64 [ %.lcssa.i, %bb.i ], [ -3, %bb.a ], [ -3, %bb.j ]
  store i64 %storemerge, ptr %0, align 16
  ret void

bb.i:                                             ; preds = %.lr.ph.i.i.i.1.i, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i
  %.lcssa.i = phi i64 [ %i.x, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEEE6insertCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.1.i ]
  %.sroa.7.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx4.i.i.i.i, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5326
  br label %._crit_edge

bb.j:                                             ; preds = %.lr.ph.i.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5326
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsbmokjIbagls_24datafusion_physical_expr12partitioning12DistributionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2d_8adapters3map8map_foldBW_buNCNvYNtNtCs43kcu4yvms7_24influxdb3_query_executor13query_planner10SchemaExecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlan32benefits_from_input_partitioning0NCINvNvB27_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedINtB3d_3MapBH_B3M_EE0E0E0EB3V_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not21 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted22 = load i64, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.val720 = phi i64 [ %.promoted22, %.lr.ph ], [ %i.w, %bb.g ] ; 3 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5340)
  %i.k = load i64, ptr %i.a, align 8, !range !55, !alias.scope !5341, !noalias !5339, !noundef !20 ; 2 uses
  %switch1.i.i.i = icmp slt i64 %i.k, -9223372036854775806
  br i1 %switch1.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.d, !noalias !5339

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread13 unwind label %bb.e, !noalias !5339

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5339
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %.thread18

.thread18:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread13

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.o = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.r, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsbmokjIbagls_24datafusion_physical_expr12partitioning12DistributionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.s, align 8, !noundef !20
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %i.t = icmp ne i64 %i.k, -9223372036854775807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5339
  call void @llvm.experimental.noalias.scope.decl(metadata !5342)
  call void @llvm.experimental.noalias.scope.decl(metadata !5343)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %.val720
  %i.v = zext i1 %i.t to i8
  store i8 %i.v, ptr %i.u, align 1, !noalias !5344
  %i.w = add i64 %.val720, 1                      ; 2 uses
  store i64 %i.w, ptr %i.h, align 8, !alias.scope !5345
  %.not.not = icmp eq ptr %i.j, %i.d
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %.thread13
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.z, align 8, !noundef !20
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsbmokjIbagls_24datafusion_physical_expr12partitioning12DistributionEECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsbmokjIbagls_24datafusion_physical_expr12partitioning12DistributionEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %.thread13, %bb.i
  %.pn12 = phi { ptr, i32 } [ %eh.lpad-body17, %.thread13 ], [ %i.y, %bb.i ]
  resume { ptr, i32 } %.pn12

.thread13:                                        ; preds = %bb.d, %.thread18
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.n, %.thread18 ], [ %i.l, %bb.d ]
  %.val619 = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  store i64 %.val720, ptr %.val619, align 8
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbmokjIbagls_24datafusion_physical_expr12partitioning12DistributionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsbmokjIbagls_24datafusion_physical_expr12partitioning12DistributionEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB24_8for_each4callBW_NCNCNvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtB3H_17IOxSessionContext19sql_to_logical_plan00E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not4 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not4, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host4http18HttpRequestMatcherEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
end_hunk_8
begin_hunk_9_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB26_8adapters3map12map_try_foldBW_INtNtB28_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB28_3ops12control_flow11ControlFlowIB5T_B49_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB6Q_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB3c_INtB3c_12GenericShuntINtB3a_3MapBH_B6J_EIB3N_NtNtB28_7convert10InfallibleB4S_EEB20_8try_folduNCINvNvB20_12try_for_each4callB49_B6y_NcNtB6y_5Break0E0B6y_E0E0B5S_ECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !5436, !nonnull !20, !align !22, !noundef !20
  %i.m = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.m, align 8, !noalias !5436, !nonnull !20, !align !22, !noundef !20
  call fastcc void @_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregate0Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr %.val.i.i, ptr nonnull %.val1.i.i, ptr noalias noundef align 8 captures(address) dereferenceable(400) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %.val2.i), !noalias !5437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5436
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !5437 ; 3 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.o, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.p = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !5438, !noalias !5439, !noundef !20
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread unwind label %bb.e, !noalias !5439

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !5437
  resume { ptr, i32 } %i.r

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !5437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ -3, %bb.a ], [ -3, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa2_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB26_8adapters3map12map_try_foldBW_INtNtB28_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtB28_3ops12control_flow11ControlFlowIB5T_B49_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB6Q_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB3c_INtB3c_12GenericShuntINtB3a_3MapBH_B6J_EIB3N_NtNtB28_7convert10InfallibleB4S_EEB20_8try_folduNCINvNvB20_12try_for_each4callB49_B6y_NcNtB6y_5Break0E0B6y_E0E0B5S_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i = alloca [104 x i8], align 8     ; 3 uses
  %i.a = alloca [408 x i8], align 8               ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !20, !align !22, !noundef !20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.410.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.a, ptr noundef nonnull align 8 dereferenceable(400) %i.k, i64 400, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 400 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i = load ptr, ptr %.val3, align 8, !noalias !5452, !nonnull !20, !align !22, !noundef !20 ; 2 uses
  %.val2.i = load ptr, ptr %i.h, align 8, !noalias !5452, !nonnull !20, !align !22, !noundef !20 ; 2 uses
  store ptr %.val2.i, ptr %i.i, align 8, !noalias !5451
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !5451, !nonnull !20, !align !22, !noundef !20
  %i.m = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.m, align 8, !noalias !5451, !nonnull !20, !align !22, !noundef !20
  call fastcc void @_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregate0Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr %.val.i.i, ptr nonnull %.val1.i.i, ptr noalias noundef align 8 captures(address) dereferenceable(400) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %.val2.i), !noalias !5452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5451
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !5452 ; 3 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.o, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.p = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !5453, !noalias !5454, !noundef !20
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread unwind label %bb.e, !noalias !5454

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !5452
  resume { ptr, i32 } %i.r

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !5452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ -3, %bb.a ], [ -3, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query23ExprWithAliasAndOrderByINtNtBa_6result6ResultNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_B2o_EENCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB54_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB4X_EIB23_NtNtBa_7convert10InfallibleB37_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2o_B4M_NcNtB4M_5Break0E0B4M_E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENCINvNtNtB1U_8adapters3map12map_try_foldBW_INtNtB1W_6result6ResultB3s_NtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEB2S_INtNtNtB1W_3ops12control_flow11ControlFlowIB5b_B2S_zEB2S_ENCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB7H_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0NCINvXB4A_INtB4A_12GenericShuntINtB4y_3MapBH_B7A_EIB5b_NtNtB1W_7convert10InfallibleB5B_EEB1O_8try_foldB2S_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3s_E0B7k_E0E0B6E_ECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.f
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !20, !align !22, !noundef !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.4.022 = phi ptr [ %3, %.lr.ph ], [ %i.x, %bb.n ] ; 5 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5465
  store ptr %2, ptr %i.d, align 8, !noalias !5465
  store ptr %.sroa.4.022, ptr %i.i, align 8, !noalias !5465
  %.val.i = load ptr, ptr %.val2, align 8, !noalias !5465, !nonnull !20, !align !22, !noundef !20
  invoke void @_RNvMs8_NtCs1eXVLxSVbjH_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE26convert_data_type_to_fieldCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !5465

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #31
          to label %bb.k unwind label %bb.e, !noalias !5466

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast9data_type8DataTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.f, !noalias !5465

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5466
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5465
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !5465 ; 3 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !5465 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5465
  store ptr %2, ptr %i.a, align 8, !noalias !5467
  store ptr %.sroa.4.022, ptr %i.j, align 8, !noalias !5467
  %.not.i.i.i = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %.not.i.i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.p, align 8, !nonnull !20, !noundef !20 ; 8 uses
  %.sroa.7.16..sroa_idx.i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.q = load i64, ptr %.val.le, align 8, !range !101, !alias.scope !5468, !noalias !5467, !noundef !20
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.m unwind label %bb.i, !noalias !5467

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !5467
  %.sroa.58.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i, align 8, !noalias !5467
  %.sroa.611.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.16..sroa_idx.i.le, i64 24, i1 false), !noalias !5465
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropINtNtBI_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(16) %i.a) #31
          to label %.body.i unwind label %bb.j, !noalias !5467

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5467
  unreachable

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body3.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.k ], [ %i.s, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.k:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.m, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropINtNtBI_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(16) %i.d) #31
          to label %.body.i unwind label %bb.l, !noalias !5465

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5465
  unreachable

._crit_edge:                                      ; preds = %bb.n, %bb.a, %bb.m
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.022, %bb.m ], [ %3, %bb.a ], [ %i.x, %bb.n ]
  %storemerge = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], [ 0, %bb.n ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.w, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %bb.g, %bb.h
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !5467
  %.sroa.58.0..8.val.sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i, align 8, !noalias !5467
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..8.val.sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.16..sroa_idx.i.le, i64 24, i1 false), !noalias !5465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge

bb.n:                                             ; preds = %_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0Cs43kcu4yvms7_24influxdb3_query_executor.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.4.022, align 8, !noalias !5467
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.022, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterRINtNtBa_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2D_8adapters3map8map_foldBW_BX_uNvYBX_NtNtB2F_5clone5Clone5cloneNCINvNvB2x_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtB3F_6cloned6ClonedBH_EE0E0E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not12 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted14 = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB4o_9into_iter8IntoIterBU_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.h = phi i64 [ %.promoted14, %.lr.ph ], [ %i.p, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB4o_9into_iter8IntoIterBU_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit ] ; 2 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %2, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB4o_9into_iter8IntoIterBU_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !20, !align !22, !noundef !20 ; 2 uses
  %.val = load ptr, ptr %i.j, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val5 = load ptr, ptr %i.k, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5477)
  %i.l = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !5477
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB4o_9into_iter8IntoIterBU_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB4o_9into_iter8IntoIterBU_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %2 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5479)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %.val, ptr %i.n, align 8, !noalias !5480
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.val5, ptr %i.o, align 8, !noalias !5480
  %i.p = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !5481
  %.not.not = icmp eq ptr %2, %i.c
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtB10_3vecINtB4o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB4o_9into_iter8IntoIterBU_EEE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.a
  %i.q = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.t, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.u = landingpad { ptr, i32 }
          cleanup
  %.val8 = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load i64, ptr %i.v, align 8, !noundef !20
  store i64 %.val9, ptr %.val8, align 8
  resume { ptr, i32 } %i.u

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.w, align 8, !noundef !20
  store i64 %.val7, ptr %.val6, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldBW_NtNtBa_6string6StringuNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB3M_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvB1G_8for_each4callB3j_NCINvMsj_B8_INtB8_3VecB3j_E14extend_trustedINtB2M_3MapBH_B3F_EE0E0E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not.not16 = icmp eq ptr %.promoted, %i.e
  br i1 %.not.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted17 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2m_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsj_NtB1H_3vecINtB68_3VecB1D_E14extend_trustedINtB4_3MapINtNtB68_9into_iter8IntoIterBU_EB2f_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit
  %.val715 = phi i64 [ %.promoted17, %.lr.ph ], [ %i.n, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2m_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsj_NtB1H_3vecINtB68_3VecB1D_E14extend_trustedINtB4_3MapINtNtB68_9into_iter8IntoIterBU_EB2f_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit ] ; 3 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2m_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsj_NtB1H_3vecINtB68_3VecB1D_E14extend_trustedINtB4_3MapINtNtB68_9into_iter8IntoIterBU_EB2f_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !20, !align !22, !noundef !20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5494
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.k)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2m_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsj_NtB1H_3vecINtB68_3VecB1D_E14extend_trustedINtB4_3MapINtNtB68_9into_iter8IntoIterBU_EB2f_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.f

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2m_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsj_NtB1H_3vecINtB68_3VecB1D_E14extend_trustedINtB4_3MapINtNtB68_9into_iter8IntoIterBU_EB2f_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5496)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.val715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5497
  %i.n = add i64 %.val715, 1                      ; 2 uses
  store i64 %i.n, ptr %i.i, align 8, !alias.scope !5497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5494
  %.not.not = icmp eq ptr %i.l, %i.e
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtCs1eXVLxSVbjH_14datafusion_sql9statementINtNtB2m_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsj_NtB1H_3vecINtB68_3VecB1D_E14extend_trustedINtB4_3MapINtNtB68_9into_iter8IntoIterBU_EB2f_EE0E0E0Cs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.a
  %i.o = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.q, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.r, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.s, align 8, !noundef !20
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.d:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.u = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.v, align 8, !noundef !20
  store i64 %.val7, ptr %.val6, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %.pn12 = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit ]
  resume { ptr, i32 } %.pn12

bb.f:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.val614 = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  store i64 %.val715, ptr %.val614, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !5498, !nonnull !20, !noundef !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.x, align 8, !alias.scope !5498, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5499
  store i64 %.val9, ptr %i.a, align 8, !noalias !5499
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val8, ptr %i.y, align 8, !noalias !5499
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5499
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB23_8for_each4callBW_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3G_7HashMapBX_B1i_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB27_7collect6ExtendBW_E6extendBH_E0E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not.not10 = icmp eq ptr %.promoted, %i.f
  br i1 %.not.not10, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5506
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.j, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5506
  invoke void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.lr.ph
  %i.k = load i64, ptr %i.a, align 16, !range !104, !alias.scope !5507, !noalias !5506, !noundef !20
  %i.l = icmp eq i64 %i.k, -2
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a)
          to label %bb.c unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.c, %bb.a
  %i.m = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.o, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.p, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5506
  %.not.not = icmp eq ptr %i.i, %i.f
  br i1 %.not.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtBG_6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %bb.b, %.lr.ph
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
end_hunk_9
begin_hunk_10_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB14_8adapters3map8map_foldjNtNtCs7fnekraeopg_15datafusion_expr4expr4ExpruNCINvMs_NtNtB2D_12logical_plan7builderNtB3r_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvBY_8for_each4callB2z_NCINvMsj_B8_INtB8_3VecB2z_E14extend_trustedINtB24_3MapBH_B3j_EE0E0E0ECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBa_6string6StringEEENtNtNtNtB1F_4iter6traits8iterator8Iterator5unzipBR_B1A_INtB8_3VecBR_EIB3u_B1A_EECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !5570
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !5570
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !5570
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !5570
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !5570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvXs_NvNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect14default_extendTINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEIB17_INtNtBc_6option6OptionNtNtB1b_6string6StringEEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1C_B2r_EEE6extendCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEIBD_INtNtB4_6option6OptionNtNtBH_6string6StringEEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(48) %i.b) #31
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtBI_6string6StringEEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtBI_6string6StringEEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5594, !noundef !20
  %i.c = load i64, ptr %0, align 8, !alias.scope !5594, !noundef !20 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5594, !noundef !20 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5594, !noundef !20 ; 3 uses
  %i.h = add i64 %i.b, %2
  %i.i = mul i64 %i.h, 6364136223846793005        ; 3 uses
  %i.j = icmp samesign ugt i64 %2, 8
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %2, 1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %2, 1
  br i1 %i.l, label %bb.e, label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %2, 3
  %i.n = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  br i1 %i.m, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr %1, align 1, !alias.scope !5595, !noalias !5596, !noundef !20
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i29.i.i.i.i.i = load i16, ptr %1, align 1, !alias.scope !5597, !noalias !5598
  %i.q = zext i16 %.sroa.0.0.copyload.i29.i.i.i.i.i to i64
  %i.r = getelementptr i8, ptr %i.n, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !5595, !noalias !5596, !noundef !20
  %i.t = zext i8 %i.s to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i31.i.i.i.i.i = load i32, ptr %1, align 1, !alias.scope !5597, !noalias !5599
  %i.u = zext i32 %.sroa.0.0.copyload.i31.i.i.i.i.i to i64
  %i.v = getelementptr i8, ptr %i.n, i64 -4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.v, align 1, !alias.scope !5597, !noalias !5600
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i, %bb.e, %bb.c
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.w, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i ], [ %i.t, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i ], [ %i.p, %bb.e ], [ 0, %bb.c ]
  %.sroa.068.0.i.i.i.i.i = phi i64 [ %i.u, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i ], [ %i.q, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i ], [ %i.p, %bb.e ], [ 0, %bb.c ]
  %i.x = xor i64 %.sroa.068.0.i.i.i.i.i, %i.e
  %i.y = xor i64 %.sroa.7.0.i.i.i.i.i, %i.g
  %i.z = zext i64 %i.x to i128
  %i.aa = zext i64 %i.y to i128
  %i.ab = mul nuw i128 %i.z, %i.aa                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64
  %i.af = add i64 %i.i, %i.c
  %i.ag = xor i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.f:                                             ; preds = %bb.a
  %i.ai = icmp samesign ugt i64 %2, 16
  br i1 %i.ai, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i33.i.i.i.i.i = load i64, ptr %1, align 1, !alias.scope !5597, !noalias !5601
  %i.aj = getelementptr i8, ptr %1, i64 %2
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %.sroa.0.0.copyload.i25.i.i.i.i.i = load i64, ptr %i.ak, align 1, !alias.scope !5597, !noalias !5596
  %i.al = xor i64 %.sroa.0.0.copyload.i33.i.i.i.i.i, %i.e
  %i.am = xor i64 %.sroa.0.0.copyload.i25.i.i.i.i.i, %i.g
  %i.an = zext i64 %i.al to i128
  %i.ao = zext i64 %i.am to i128
  %i.ap = mul nuw i128 %i.ao, %i.an               ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = xor i128 %i.aq, %i.ap
  %i.as = trunc i128 %i.ar to i64
  %i.at = add i64 %i.i, %i.c
  %i.au = xor i64 %i.at, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 23)
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i: ; preds = %bb.f
  %i.aw = getelementptr i8, ptr %1, i64 %2
  %i.ax = getelementptr i8, ptr %i.aw, i64 -16
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load i128, ptr %i.ax, align 1, !alias.scope !5597, !noalias !5596 ; 2 uses
  %.sroa.017.0.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.0.0.copyload.i27.i.i.i.i.i to i64
  %.sroa.4.0.extract.shift.i.i.i.i.i = lshr i128 %.sroa.0.0.copyload.i27.i.i.i.i.i, 64
  %i.ay = xor i64 %i.e, %.sroa.017.0.extract.trunc.i.i.i.i.i
  %i.az = zext i64 %i.ay to i128
  %i.ba = zext i64 %i.g to i128                   ; 2 uses
  %i.bb = xor i128 %.sroa.4.0.extract.shift.i.i.i.i.i, %i.ba
  %i.bc = mul nuw i128 %i.bb, %i.az               ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %i.bf = trunc i128 %i.be to i64
  %i.bg = add i64 %i.i, %i.c
  %i.bh = xor i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 23)
  br label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i
  %.sroa.0.0105.i.i.i.i.i = phi ptr [ %1, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i ], [ %i.bj, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.11.0104.i.i.i.i.i = phi i64 [ %2, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i ], [ %i.bk, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i ]
  %storemerge103.i.i.i.i.i = phi i64 [ %i.bi, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i ], [ %i.bu, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0105.i.i.i.i.i, i64 16
  %i.bk = add nsw i64 %.sroa.11.0104.i.i.i.i.i, -16 ; 2 uses
  %.sroa.0.0.copyload.i35.i.i.i.i.i = load i128, ptr %.sroa.0.0105.i.i.i.i.i, align 1, !alias.scope !5597, !noalias !5602 ; 2 uses
  %.sroa.018.0.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.0.0.copyload.i35.i.i.i.i.i to i64
  %.sroa.419.0.extract.shift.i.i.i.i.i = lshr i128 %.sroa.0.0.copyload.i35.i.i.i.i.i, 64
  %i.bl = xor i64 %i.e, %.sroa.018.0.extract.trunc.i.i.i.i.i
  %i.bm = zext i64 %i.bl to i128
  %i.bn = xor i128 %.sroa.419.0.extract.shift.i.i.i.i.i, %i.ba
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  %i.bs = add i64 %storemerge103.i.i.i.i.i, %i.c
  %i.bt = xor i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 23) ; 2 uses
  %i.bv = icmp ugt i64 %i.bk, 16
  br i1 %i.bv, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i
  %.lcssa.sink.i.i.i.i.i = phi i64 [ %i.ah, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i ], [ %i.av, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i ], [ %i.bu, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i ]
  %i.bw = xor i64 %.lcssa.sink.i.i.i.i.i, 255
  %i.bx = zext i64 %i.bw to i128
  %i.by = mul nuw nsw i128 %i.bx, 6364136223846793005 ; 2 uses
  %i.bz = lshr i128 %i.by, 64
  %i.ca = xor i128 %i.bz, %i.by                   ; 2 uses
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = and i128 %i.ca, 18446744073709551615
  %i.cd = zext i64 %i.c to i128
  %i.ce = mul nuw i128 %i.cc, %i.cd               ; 2 uses
  %i.cf = lshr i128 %i.ce, 64
  %i.cg = xor i128 %i.cf, %i.ce
  %i.ch = trunc i128 %i.cg to i64                 ; 2 uses
  %i.ci = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 %i.cb)
  ret i64 %i.ci
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs1eXVLxSVbjH_14datafusion_sql5queryINtNtB6_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregate0Cs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(112) %0, ptr nofree nonnull readonly captures(address, read_provenance) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(400) %1, ptr noalias noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %1, i64 328, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load ptr, ptr %.8.val, align 8, !nonnull !20, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke void @_RNvMNtCs1eXVLxSVbjH_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCsjyfffbMAcup_10datafusion9execution13session_state22SessionContextProviderE11sql_to_exprCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !range !27, !noundef !20
  %.not3 = icmp eq i64 %i.j, -1
  br i1 %.not3, label %common.resume, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 16, !range !104, !noundef !20 ; 2 uses
  %i.l = icmp eq i64 %i.k, -2
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.o = load i64, ptr %i.e, align 8, !range !27, !alias.scope !5605, !noundef !20
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.i, %bb.b ], [ %i.i, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.e
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.h:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.0..sroa_idx4, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %i.c, align 16
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.s = load i64, ptr %i.e, align 8, !range !27, !noundef !20
  %.not = icmp eq i64 %i.s, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvMsC_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4Expr16alias_if_changed(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.c, i64 112, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.j, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #31
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type0Cs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.4.sroa.3 = alloca [16 x i8], align 1     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !49, !noundef !20
  switch i8 %i.d, label %default.unreachable19 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !20, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !20
  %i.j = invoke { ptr, ptr } @_RNvXs1_CslmsipRFvlgQ_23influxdb3_system_tablesNtB5_20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider5table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.l, ptr %i.n, align 8
  br label %bb.f

.body:                                            ; preds = %bb.t, %bb.u, %bb.o, %bb.n, %bb.p, %bb.g
  %.pn2 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ], [ %i.ag, %bb.p ], [ %i.as, %bb.u ], [ %i.as, %bb.t ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.q, align 8, !nonnull !20, !align !22, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val, ptr nonnull %.val4) #31
          to label %.body unwind label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.b, align 8, !range !107, !noundef !20 ; 3 uses
  %i.s = icmp eq i64 %i.r, -2
  br i1 %i.s, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.i
  %storemerge = phi i8 [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.315.0.copyload = load ptr, ptr %.sroa.315.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.o, align 8            ; 5 uses
  %i.t = getelementptr i8, ptr %1, i64 32
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.u = load ptr, ptr %.val6, align 8, !invariant.load !20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.u(ptr noundef nonnull %.val5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !23, !invariant.load !20
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !invariant.load !20
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34
  br label %.body

bb.p:                                             ; preds = %bb.w, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.m, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !5619)
  call void @llvm.experimental.noalias.scope.decl(metadata !5620)
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.ah = ptrtoint ptr %.sroa.315.0.copyload to i64 ; 2 uses
  %.sroa.315.0.extract.trunc = trunc i64 %i.ah to i8
  %.sroa.315.1.extract.shift = lshr i64 %i.ah, 8
  %.sroa.315.1.extract.trunc = trunc nuw i64 %.sroa.315.1.extract.shift to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !alias.scope !5621
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not.i.i7 = icmp eq ptr %.sroa.315.0.copyload, null
  br i1 %.not.i.i7, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5621
  store ptr %.sroa.315.0.copyload, ptr %i.a, align 8, !noalias !5623
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload, ptr %i.ai, align 8, !noalias !5623
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !23, !invariant.load !20, !alias.scope !5622, !noalias !5621
  %i.al = add nsw i64 %i.ak, -1
  %i.am = and i64 %i.al, -16
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.315.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !20, !alias.scope !5622, !noalias !5621, !nonnull !20
  %i.ar = invoke noundef i8 %i.aq(ptr noundef nonnull %i.ao)
          to label %bb.v unwind label %bb.t, !noalias !5621

bb.t:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = atomicrmw add ptr %.sroa.315.0.copyload, i64 -1 release, align 8, !noalias !5624
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.u, label %.body

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body unwind label %bb.x, !noalias !5621

bb.v:                                             ; preds = %bb.s
  %i.av = atomicrmw add ptr %.sroa.315.0.copyload, i64 -1 release, align 8, !noalias !5625
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.w, label %_RNCNCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RNCNCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.p

bb.x:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5621
  unreachable

_RNCNCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5621
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.q, %_RNCNCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %bb.r
  %.sroa.4.sroa.0.0 = phi i56 [ %.sroa.315.1.extract.trunc, %bb.q ], [ undef, %_RNCNCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ undef, %bb.r ]
  %.sroa.4.sroa.2.0 = phi ptr [ %.sroa.6.0.copyload, %bb.q ], [ undef, %_RNCNCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ undef, %bb.r ]
  %.sroa.3.0 = phi i8 [ %.sroa.315.0.extract.trunc, %bb.q ], [ %i.ar, %_RNCNCNCNvYNtCslmsipRFvlgQ_23influxdb3_system_tables20SystemSchemaProviderNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ -1, %bb.r ]
  store i64 %i.r, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.4.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.sroa.2.0, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.3, i64 16, i1 false)
  br label %common.ret

bb.y:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtB8_6schema14SchemaProvider10table_type0Cs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.4.sroa.3 = alloca [16 x i8], align 1     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !49, !noundef !20
  switch i8 %i.d, label %default.unreachable19 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !20, !align !22, !noundef !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !20, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !20
  %i.j = invoke { ptr, ptr } @_RNvXso_NtCsaYhiBUKoVwV_18datafusion_catalog18information_schemaNtB5_25InformationSchemaProviderNtNtB7_6schema14SchemaProvider5table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.l, ptr %i.n, align 8
  br label %bb.f

.body:                                            ; preds = %bb.t, %bb.u, %bb.o, %bb.n, %bb.p, %bb.g
  %.pn2 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ], [ %i.ag, %bb.p ], [ %i.as, %bb.u ], [ %i.as, %bb.t ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.q, align 8, !nonnull !20, !align !22, !noundef !20
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val, ptr nonnull %.val4) #31
          to label %.body unwind label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.b, align 8, !range !107, !noundef !20 ; 3 uses
  %i.s = icmp eq i64 %i.r, -2
  br i1 %i.s, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1G_18information_schema25InformationSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.i
  %storemerge = phi i8 [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1G_18information_schema25InformationSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.315.0.copyload = load ptr, ptr %.sroa.315.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.o, align 8            ; 5 uses
  %i.t = getelementptr i8, ptr %1, i64 32
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  %i.u = load ptr, ptr %.val6, align 8, !invariant.load !20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.u(ptr noundef nonnull %.val5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !23, !invariant.load !20
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !28, !invariant.load !20 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !invariant.load !20
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34
  br label %.body

bb.p:                                             ; preds = %bb.w, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.m, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !5639)
  call void @llvm.experimental.noalias.scope.decl(metadata !5640)
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.ah = ptrtoint ptr %.sroa.315.0.copyload to i64 ; 2 uses
  %.sroa.315.0.extract.trunc = trunc i64 %i.ah to i8
  %.sroa.315.1.extract.shift = lshr i64 %i.ah, 8
  %.sroa.315.1.extract.trunc = trunc nuw i64 %.sroa.315.1.extract.shift to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !alias.scope !5641
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1G_18information_schema25InformationSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %.not.i.i7 = icmp eq ptr %.sroa.315.0.copyload, null
  br i1 %.not.i.i7, label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1G_18information_schema25InformationSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5642)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5641
  store ptr %.sroa.315.0.copyload, ptr %i.a, align 8, !noalias !5643
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload, ptr %i.ai, align 8, !noalias !5643
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !23, !invariant.load !20, !alias.scope !5642, !noalias !5641
  %i.al = add nsw i64 %i.ak, -1
  %i.am = and i64 %i.al, -16
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.315.0.copyload, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !20, !alias.scope !5642, !noalias !5641, !nonnull !20
  %i.ar = invoke noundef i8 %i.aq(ptr noundef nonnull %i.ao)
          to label %bb.v unwind label %bb.t, !noalias !5641

bb.t:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = atomicrmw add ptr %.sroa.315.0.copyload, i64 -1 release, align 8, !noalias !5644
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.u, label %.body

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body unwind label %bb.x, !noalias !5641

bb.v:                                             ; preds = %bb.s
  %i.av = atomicrmw add ptr %.sroa.315.0.copyload, i64 -1 release, align 8, !noalias !5645
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.w, label %_RNCNCNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RNCNCNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.p

bb.x:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !5641
  unreachable

_RNCNCNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5641
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1G_18information_schema25InformationSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtB5_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProviderEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorE3mapIBJ_NtNtCs7fnekraeopg_15datafusion_expr12table_source9TableTypeENCNCNvYNtNtB1G_18information_schema25InformationSchemaProviderNtNtB1G_6schema14SchemaProvider10table_type00ECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.q, %_RNCNCNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %bb.r
  %.sroa.4.sroa.0.0 = phi i56 [ %.sroa.315.1.extract.trunc, %bb.q ], [ undef, %_RNCNCNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ undef, %bb.r ]
  %.sroa.4.sroa.2.0 = phi ptr [ %.sroa.6.0.copyload, %bb.q ], [ undef, %_RNCNCNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ undef, %bb.r ]
  %.sroa.3.0 = phi i8 [ %.sroa.315.0.extract.trunc, %bb.q ], [ %i.ar, %_RNCNCNCNvYNtNtCsaYhiBUKoVwV_18datafusion_catalog18information_schema25InformationSchemaProviderNtNtBc_6schema14SchemaProvider10table_type000Cs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ], [ -1, %bb.r ]
  store i64 %i.r, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.4.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.sroa.2.0, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.3, i64 16, i1 false)
  br label %common.ret

bb.y:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBb_5types14StringViewTypeENtB9_5Array9into_data6vtableCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvXs6_NtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_arrayNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeEE4fromCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE13with_capacityCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = add i64 %1, 1                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.e = load i64, ptr %i.b, align 8, !range !24, !noundef !20
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !25, !noundef !20 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #32
  unreachable

bb.c:                                             ; preds = %bb.e, %bb.i, %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeclEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.c) #31
          to label %bb.l unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.m = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %i.p = icmp eq i64 %i.h, 0
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs52Be9pdaNRP_12pbjson_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge unwind label %bb.c

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.n, align 8, !alias.scope !5648
  br label %bb.g

bb.f:                                             ; preds = %bb.i
  unreachable

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.d ]
  store i32 0, ptr %i.q, align 4
  store i64 1, ptr %i.o, align 8, !alias.scope !5648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.a, align 8, !range !24, !noundef !20
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !25, !noundef !20 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.v, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #32
          to label %bb.f unwind label %bb.c

bb.j:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !20, !noundef !20
  %i.y = icmp ule i64 %2, %i.u
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.u, ptr %0, align 8
end_hunk_10
