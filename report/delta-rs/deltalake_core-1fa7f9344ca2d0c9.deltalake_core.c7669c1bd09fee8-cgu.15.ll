inline.NumInlined: 12000
inline.NumDeleted: 3498
begin_hunk_0_@_RINvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core:bb.a
  store i64 %i.l, ptr %i.o, align 8, !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
          to label %bb.g unwind label %bb.d, !noalias !19

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !20
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %.thread16

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #52
          to label %.thread16 unwind label %bb.f, !noalias !19

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !19
  unreachable

bb.g:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17
  store i64 1, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !27
  %i.w = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 80, i64 noundef range(i64 1, 17) 8) #45, !noalias !27 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.k, !prof !4

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #53
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #50
          to label %.thread16 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.w, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  invoke fastcc void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e, i64 noundef %i.l)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !30
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #52
          to label %.thread unwind label %bb.t

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.w, ptr %i.ad, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.ae, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB2_8DFSchema11check_names(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.h) #50
          to label %.thread unwind label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.ag = load i64, ptr %i.d, align 8, !range !35, !noundef !3
  %.not = icmp eq i64 %i.ag, 20
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775808, ptr %0, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.h)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.t:                                             ; preds = %bb.m, %.thread16, %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.thread:                                          ; preds = %bb.l, %bb.m, %bb.o, %.thread16
  %.pn15 = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %eh.lpad-body19, %.thread16 ], [ %i.af, %bb.o ], [ %i.aa, %bb.m ]
  resume { ptr, i32 } %.pn15

.thread16:                                        ; preds = %bb.d, %bb.e, %bb.i
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i) #50
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB6_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE5spawnNCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [152 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i8 0, ptr %i.c, align 8, !noalias !36
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !39
  %i.d = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 152, i64 noundef range(i64 1, 17) 8) #45, !noalias !39 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #53
          to label %.noexc.i unwind label %bb.c, !noalias !36

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #50
          to label %common.resume.i unwind label %bb.d, !noalias !36

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !36
  unreachable

common.resume.i:                                  ; preds = %bb.g, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false), !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, i64 56) acquire, align 8, !noalias !36
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  %i.j = load ptr, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, align 8, !noalias !36, !nonnull !3
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, i64 8), align 8, !noalias !36, !nonnull !3, !align !42
  %.sroa.3.0.i = select i1 %i.i, ptr @50, ptr %i.k
  %.sroa.01.0.i = select i1 %i.i, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils11NOOP_TRACER, ptr %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !36, !nonnull !3
  %i.n = tail call { ptr, ptr } %i.m(ptr noundef nonnull %.sroa.01.0.i, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49), !noalias !36, !inline_history !43 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store ptr %i.o, ptr %i.a, align 8, !noalias !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !36
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !36
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 16, i64 noundef range(i64 1, 17) 8) #45, !noalias !36 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %_RINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs14kWLkQVSKO_14deltalake_core.exit, !prof !4

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #53
          to label %.noexc4.i unwind label %bb.g, !noalias !36

.noexc4.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6future3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIB1O_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB3k_EL_EENCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #50
          to label %common.resume.i unwind label %bb.h, !noalias !36

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !36
  unreachable

_RINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  store ptr %i.o, ptr %i.r, align 8, !noalias !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %i.v, align 8, !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  %i.w = tail call noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task5spawn5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBM_6future6future6Futurep6OutputTjINtNtBM_6result6ResultINtNtB1i_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBM_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.x = tail call noundef nonnull ptr @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w)
  ret ptr %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_4Sbbf5writeQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [4 x i8], align 4                 ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [8 x i8], align 8                 ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 3 uses
  %i.q = icmp ult i64 %i.p, 288230376151711744
  call void @llvm.assume(i1 %i.q)
  %i.r = trunc i64 %i.p to i32
  %i.s = shl i32 %i.r, 5
  store i32 %i.s, ptr %i.k, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !47
  call void @_RINvXs14_NtCs4tdlwR1I4n2_7parquet14parquet_thriftlNtB7_16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef 1, i16 noundef 0), !noalias !44
  %i.t = load i64, ptr %i.i, align 8, !range !50, !noalias !47, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.t, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load i16, ptr %i.u, align 8, !noalias !47 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %.sroa.346.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.346.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.643.0..sroa_idx.i, i64 22, i1 false), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !47
  br label %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  call void @_RINvXs3m_NtCs4tdlwR1I4n2_7parquet5basicNtB7_20BloomFilterAlgorithmNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef 2, i16 noundef %i.v), !noalias !44
  %i.x = load i64, ptr %i.h, align 8, !range !50, !noalias !47, !noundef !3 ; 2 uses
  %.not74.i = icmp eq i64 %i.x, 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = load i16, ptr %i.y, align 8, !noalias !47 ; 2 uses
  br i1 %.not74.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %.sroa.355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.355.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.652.0..sroa_idx.i, i64 22, i1 false), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !47
  br label %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !47
  call void @_RINvXs3w_NtCs4tdlwR1I4n2_7parquet5basicNtB7_15BloomFilterHashNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef 3, i16 noundef %i.z), !noalias !44
  %i.aa = load i64, ptr %i.g, align 8, !range !50, !noalias !47, !noundef !3 ; 2 uses
  %.not75.i = icmp eq i64 %i.aa, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !noalias !47 ; 2 uses
  br i1 %.not75.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.661.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %.sroa.364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.364.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.661.0..sroa_idx.i, i64 22, i1 false), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !47
  br label %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47
  call void @_RINvXs3G_NtCs4tdlwR1I4n2_7parquet5basicNtB7_22BloomFilterCompressionNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef 4, i16 noundef %i.ac), !noalias !44
  %i.ad = load i64, ptr %i.f, align 8, !range !50, !noalias !47, !noundef !3 ; 2 uses
  %.not76.i = icmp eq i64 %i.ad, 8
  br i1 %.not76.i, label %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.569.0.copyload.i = load i16, ptr %.sroa.569.0..sroa_idx.i, align 8, !noalias !47
  %.sroa.670.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.sroa.373.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.373.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.670.0..sroa_idx.i, i64 22, i1 false), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !47
  br label %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %.sink32 = phi i64 [ %i.t, %bb.b ], [ %i.x, %bb.d ], [ %i.aa, %bb.f ], [ %i.ad, %bb.h ]
  %.sink = phi i16 [ %i.v, %bb.b ], [ %i.z, %bb.d ], [ %i.ac, %bb.f ], [ %.sroa.569.0.copyload.i, %bb.h ]
  store i64 %.sink32, ptr %i.l, align 8, !alias.scope !44, !noalias !51
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i16 %.sink, ptr %.sroa.245.0..sroa_idx.i, align 8, !alias.scope !44, !noalias !51
  br label %bb.i

_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !47
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef 0)
  %.pr = load i64, ptr %i.l, align 8
  %.not = icmp eq i64 %.pr, 8
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !52
  store ptr %i.j, ptr %i.d, align 8, !noalias !52
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs4tdlwR1I4n2_7parquet6errorsNtB2_12ParquetErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !52
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @68, ptr noundef nonnull %i.d)
          to label %_RNCINvMs1_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB8_4Sbbf5writeQINtNtNtBa_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE0Cs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j, !noalias !56

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #50
          to label %common.resume unwind label %bb.k, !noalias !56

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !56
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.aj, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RNCINvMs1_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB8_4Sbbf5writeQINtNtNtBa_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !52
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.r

bb.l:                                             ; preds = %_RINvXs3_NtCs4tdlwR1I4n2_7parquet12bloom_filterNtB6_17BloomFilterHeaderNtNtB8_14parquet_thrift11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.ah = shl nuw nsw i64 %i.p, 5
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !57, !noalias !60, !nonnull !3, !align !42, !noundef !3
  %i.ai = call noundef ptr @_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, 9223372036854775777) %i.ah), !noalias !64 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i3, label %bb.q, label %bb.m
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1A_NtB1A_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4g_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EEB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB2O_12map_try_foldB1w_B1w_uINtNtNtBb_3ops12control_flow11ControlFlowB1w_ENCINvXs4_B1A_B3N_INtNtB6D_7collect12FromIteratorB1w_E9from_iterBO_E0NCINvNvB6z_4find5checkB1w_QNCB8z_s_0E0E0B7N_EB4k_:bb.a
bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.us.i unwind label %bb.v, !noalias !21457

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.us.i: ; preds = %bb.t
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !21457
  br label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.us.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21450
  store i64 -9223372036854775807, ptr %i.q, align 8, !alias.scope !21445, !noalias !21460
  br label %bb.aa

bb.u:                                             ; preds = %.lr.ph.split.us.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #50
          to label %common.resume unwind label %bb.x, !noalias !21457

bb.v:                                             ; preds = %bb.t
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.w, !noalias !21457

bb.w:                                             ; preds = %bb.v
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !21457
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !21457
  unreachable

bb.y:                                             ; preds = %bb.i
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !21462
  br label %bb.p

bb.z:                                             ; preds = %bb.r
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx4.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.r, ptr %0, align 8, !alias.scope !21465
  br label %bb.p

bb.aa:                                            ; preds = %bb.q, %._crit_edge.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !21469
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1A_NtB1A_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4g_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EEB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB2O_12map_try_foldB1w_B1w_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvXs4_B1A_B3N_INtNtB6D_7collect12FromIteratorB1w_E9from_iterBO_E0NCINvB2s_15filter_try_foldB1w_uB7N_NCB8y_s_0NCIB7k_B1w_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB7N_NCB8y_s0_0NCINvMs0_B7Q_B7N_10wrap_mut_2uBav_NCINvNvB6z_8for_each4callBav_NCNvYIB2M_IB2q_IB2M_BO_B8w_EBab_EBbc_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B7N_EB4k_(ptr noalias noundef align 8 dereferenceable(184) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = load i64, ptr %0, align 8, !range !724, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21472)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8, !noalias !21475
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !range !859, !alias.scope !21472, !noalias !21477, !noundef !3 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775806
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21475
  store ptr %i.g, ptr %i.f, align 8, !noalias !21481
  store i64 -9223372036854775807, ptr %i.i, align 8, !alias.scope !21483, !noalias !21486
  %.not6.i.i = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not6.i.i, label %bb.e, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.c
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i.i, i64 16, i1 false), !noalias !21488
  store i64 %i.j, ptr %i.e, align 8, !noalias !21481
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartB1z_uINtNtB9_9try_trait17NeverShortCircuituENCINvXs4_B1D_NtB1D_4PathINtNtNtBY_6traits7collect12FromIteratorB1z_E9from_iterINtNtBW_5chain5ChainIB4q_INtNtNtBY_7sources4once4OnceB1z_EINtNtBW_6filter6FilterINtBU_3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1D_B3m_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6Z_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EEB4O_EE0NCINvB5o_15filter_try_foldB1z_uB2w_NCB3b_s_0NCIBS_B1z_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB2w_NCB3b_s0_0NCINvMs0_B2z_B2w_10wrap_mut_2uBac_NCINvNvNtNtB3C_8iterator8Iterator8for_each4callBac_NCNvYIB5I_IB5m_IB5I_B4p_B39_EB9T_EBaT_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0INtB7_5FnMutTuB1z_EE8call_mutB73_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !21489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21481
  br label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.not6.i = icmp eq i64 %i.h, 2
  br i1 %.not6.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1w_NtB1w_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4c_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvB2K_12map_try_foldB1s_B1s_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvXs4_B1w_B3J_INtNtB6u_7collect12FromIteratorB1s_E9from_iterIBP_BO_B10_EE0NCINvB2o_15filter_try_foldB1s_uB7F_NCB8q_s_0NCIB7c_B1s_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB7F_NCB8q_s0_0NCINvMs0_B7I_B7F_10wrap_mut_2uBaw_NCINvNvB6q_8for_each4callBaw_NCNvYIB2I_IB2m_IB2I_B9p_B8o_EBac_EBbd_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B7F_EB4g_.exit.thread, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1w_NtB1w_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4c_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvB2K_12map_try_foldB1s_B1s_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvXs4_B1w_B3J_INtNtB6u_7collect12FromIteratorB1s_E9from_iterIBP_BO_B10_EE0NCINvB2o_15filter_try_foldB1s_uB7F_NCB8q_s_0NCIB7c_B1s_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB7F_NCB8q_s0_0NCINvMs0_B7I_B7F_10wrap_mut_2uBaw_NCINvNvB6q_8for_each4callBaw_NCNvYIB2I_IB2m_IB2I_B9p_B8o_EBac_EBbd_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B7F_EB4g_.exit

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1w_NtB1w_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4c_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvB2K_12map_try_foldB1s_B1s_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvXs4_B1w_B3J_INtNtB6u_7collect12FromIteratorB1s_E9from_iterIBP_BO_B10_EE0NCINvB2o_15filter_try_foldB1s_uB7F_NCB8q_s_0NCIB7c_B1s_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB7F_NCB8q_s0_0NCINvMs0_B7I_B7F_10wrap_mut_2uBaw_NCINvNvB6q_8for_each4callBaw_NCNvYIB2I_IB2m_IB2I_B9p_B8o_EBac_EBbd_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B7F_EB4g_.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB19_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB17_6filter6FilterINtNtB17_3map3MapINtNtNtB4_3str4iter15SplitTerminatorReENCNvMB2b_NtB2b_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4T_15GenerateBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future0s_0EEEEB4X_.exit

bb.e:                                             ; preds = %.lr.ph.split.us.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21475
  store i64 -9223372036854775806, ptr %i.i, align 8, !alias.scope !21472, !noalias !21477
  br label %bb.d

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1w_NtB1w_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4c_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvB2K_12map_try_foldB1s_B1s_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvXs4_B1w_B3J_INtNtB6u_7collect12FromIteratorB1s_E9from_iterIBP_BO_B10_EE0NCINvB2o_15filter_try_foldB1s_uB7F_NCB8q_s_0NCIB7c_B1s_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB7F_NCB8q_s0_0NCINvMs0_B7I_B7F_10wrap_mut_2uBaw_NCINvNvB6q_8for_each4callBaw_NCNvYIB2I_IB2m_IB2I_B9p_B8o_EBac_EBbd_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B7F_EB4g_.exit: ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !noalias !21475, !nonnull !3, !align !42, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB1F_4Path5parts0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldNtNtB1F_5parts8PathPartuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB54_15GenerateBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future0s_0QNCINvB6_12map_try_foldB3N_B3N_uB4b_NCINvXs4_B1F_B2e_INtNtB2B_7collect12FromIteratorB3N_E9from_iterINtNtB8_5chain5ChainIB8S_INtNtNtBa_7sources4once4OnceB3N_EINtB3k_6FilterBN_B4U_EEB9g_EE0NCIB3i_B3N_uB4b_NCB7S_s_0NCIB7k_B3N_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB4b_NCB7S_s0_0NCINvMs0_B4e_B4b_10wrap_mut_2uBaR_NCINvNvB2x_8for_each4callBaR_NCNvYIBO_IB9O_IBO_B8R_B7Q_EBax_EBby_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0E0B4b_EB58_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
  %.pre = load i64, ptr %i.i, align 8, !range !859
  %i.m = icmp slt i64 %.pre, -9223372036854775805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.n = load i64, ptr %0, align 8, !range !724, !alias.scope !21490, !noundef !3
  %i.o = icmp eq i64 %i.n, 3
  %or.cond = select i1 %i.o, i1 true, i1 %i.m
  br i1 %or.cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB19_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB17_6filter6FilterINtNtB17_3map3MapINtNtNtB4_3str4iter15SplitTerminatorReENCNvMB2b_NtB2b_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4T_15GenerateBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future0s_0EEEEB4X_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1w_NtB1w_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4c_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvB2K_12map_try_foldB1s_B1s_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvXs4_B1w_B3J_INtNtB6u_7collect12FromIteratorB1s_E9from_iterIBP_BO_B10_EE0NCINvB2o_15filter_try_foldB1s_uB7F_NCB8q_s_0NCIB7c_B1s_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB7F_NCB8q_s0_0NCINvMs0_B7I_B7F_10wrap_mut_2uBaw_NCINvNvB6q_8for_each4callBaw_NCNvYIB2I_IB2m_IB2I_B9p_B8o_EBac_EBbd_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B7F_EB4g_.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB19_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB17_6filter6FilterINtNtB17_3map3MapINtNtNtB4_3str4iter15SplitTerminatorReENCNvMB2b_NtB2b_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4T_15GenerateBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future0s_0EEEEB4X_.exit unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB19_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB17_6filter6FilterINtNtB17_3map3MapINtNtNtB4_3str4iter15SplitTerminatorReENCNvMB2b_NtB2b_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4T_15GenerateBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future0s_0EEEEB4X_.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !range !859, !noundef !3 ; 5 uses
  %.not6 = icmp eq i64 %i.s, -9223372036854775806
  br i1 %.not6, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldBS_BS_uINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvXs4_BW_NtBW_4PathINtNtB1P_7collect12FromIteratorBS_E9from_iterINtNtB2A_5chain5ChainIB52_B3_INtNtB2A_6filter6FilterINtB2y_3MapINtNtNtBc_3str4iter15SplitTerminatorReENCNvMBW_B48_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB79_15GenerateBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future0s_0EEB3_EE0NCINvB5x_15filter_try_foldBS_uB3d_NCB3Y_s_0NCIB2w_BS_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB3d_NCB3Y_s0_0NCINvMs0_B3g_B3d_10wrap_mut_2uBak_NCINvNvB1L_8for_each4callBak_NCNvYIB5S_IB5v_IB5S_B51_B3W_EBa1_EBb1_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B3d_EB7d_.exit, label %bb.k

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.resume:                                    ; preds = %bb.n, %bb.s, %bb.x, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.an, %bb.x ], [ %lpad.phi.i, %bb.n ], [ %i.aj, %bb.s ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %bb.g, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.p, %bb.g ]
  store i64 3, ptr %0, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB19_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB17_6filter6FilterINtNtB17_3map3MapINtNtNtB4_3str4iter15SplitTerminatorReENCNvMB2b_NtB2b_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4T_15GenerateBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future0s_0EEEEB4X_.exit: ; preds = %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1w_NtB1w_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4c_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvB2K_12map_try_foldB1s_B1s_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvXs4_B1w_B3J_INtNtB6u_7collect12FromIteratorB1s_E9from_iterIBP_BO_B10_EE0NCINvB2o_15filter_try_foldB1s_uB7F_NCB8q_s_0NCIB7c_B1s_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB7F_NCB8q_s0_0NCINvMs0_B7I_B7F_10wrap_mut_2uBaw_NCINvNvB6q_8for_each4callBaw_NCNvYIB2I_IB2m_IB2I_B9p_B8o_EBac_EBbd_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B7F_EB4g_.exit.thread, %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1w_NtB1w_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4c_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvB2K_12map_try_foldB1s_B1s_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvXs4_B1w_B3J_INtNtB6u_7collect12FromIteratorB1s_E9from_iterIBP_BO_B10_EE0NCINvB2o_15filter_try_foldB1s_uB7F_NCB8q_s_0NCIB7c_B1s_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB7F_NCB8q_s0_0NCINvMs0_B7I_B7F_10wrap_mut_2uBaw_NCINvNvB6q_8for_each4callBaw_NCNvYIB2I_IB2m_IB2I_B9p_B8o_EBac_EBbd_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B7F_EB4g_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i
  store i64 3, ptr %0, align 8
  br label %bb.i

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldBS_BS_uINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvXs4_BW_NtBW_4PathINtNtB1P_7collect12FromIteratorBS_E9from_iterINtNtB2A_5chain5ChainIB52_B3_INtNtB2A_6filter6FilterINtB2y_3MapINtNtNtBc_3str4iter15SplitTerminatorReENCNvMBW_B48_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB79_15GenerateBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future0s_0EEB3_EE0NCINvB5x_15filter_try_foldBS_uB3d_NCB3Y_s_0NCIB2w_BS_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB3d_NCB3Y_s0_0NCINvMs0_B3g_B3d_10wrap_mut_2uBak_NCINvNvB1L_8for_each4callBak_NCNvYIB5S_IB5v_IB5S_B51_B3W_EBa1_EBb1_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B3d_EB7d_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit.i, %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.i
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21493)
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i64 -9223372036854775807, ptr %i.r, align 8, !alias.scope !21496, !noalias !21499
  %.not8.i = icmp eq i64 %i.s, -9223372036854775807
  br i1 %.not8.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldBS_BS_uINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvXs4_BW_NtBW_4PathINtNtB1P_7collect12FromIteratorBS_E9from_iterINtNtB2A_5chain5ChainIB52_B3_INtNtB2A_6filter6FilterINtB2y_3MapINtNtNtBc_3str4iter15SplitTerminatorReENCNvMBW_B48_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB79_15GenerateBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future0s_0EEB3_EE0NCINvB5x_15filter_try_foldBS_uB3d_NCB3Y_s_0NCIB2w_BS_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB3d_NCB3Y_s0_0NCINvMs0_B3g_B3d_10wrap_mut_2uBak_NCINvNvB1L_8for_each4callBak_NCNvYIB5S_IB5v_IB5S_B51_B3W_EBa1_EBb1_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B3d_EB7d_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21501
  store i64 %i.s, ptr %i.d, align 8, !noalias !21493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !21504)
  %.val.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !21504, !noalias !21501, !noundef !3
  %.not.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21507
  store i64 %i.s, ptr %i.c, align 8, !noalias !21493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !21514)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.y = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !21517, !nonnull !3, !noundef !3
  %i.z = load i64, ptr %i.x, align 8, !noalias !21517, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.3.0.copyload, i64 noundef %i.z)
          to label %.noexc19.i.i.i.i.i.i.i unwind label %.loopexit.i, !noalias !21517

.noexc19.i.i.i.i.i.i.i:                           ; preds = %bb.l
  %i.aa = load i64, ptr %i.v, align 8, !alias.scope !21518, !noalias !21517, !noundef !3 ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  call void @llvm.assume(i1 %i.ab)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.noexc19.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !21518, !noalias !21517, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !noalias !21517
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !21518, !noalias !21517
  br label %bb.o

.loopexit.i:                                      ; preds = %bb.o, %bb.l
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #50
          to label %common.resume unwind label %bb.u, !noalias !21507

bb.o:                                             ; preds = %bb.m, %.noexc19.i.i.i.i.i.i.i
  %i.ae = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.m ], [ %i.aa, %.noexc19.i.i.i.i.i.i.i ]
  %i.af = add i64 %i.ae, %i.z
  store i64 %i.af, ptr %i.v, align 8, !alias.scope !21518, !noalias !21517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21517
  store ptr %i.c, ptr %i.b, align 8, !noalias !21517
  store ptr @_RNvXsb_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !21517
  %i.ag = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.sroa.3.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @0, ptr noundef nonnull %i.b)
          to label %bb.p unwind label %.loopexit.i, !noalias !21507

bb.p:                                             ; preds = %bb.o
  br i1 %i.ag, label %bb.q, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #53
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !21507

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.q
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21517
  %i.ah = load i64, ptr %i.c, align 8, !range !140, !alias.scope !21521, !noalias !21507, !noundef !3
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %i.ai, label %bb.z, label %bb.r

bb.r:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i unwind label %bb.s, !noalias !21507

bb.s:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.t, !noalias !21507

bb.t:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !21507
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !21524
  br label %bb.z

bb.u:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !21507
  unreachable

bb.v:                                             ; preds = %.lr.ph.i
  %i.am = icmp eq i64 %i.s, -9223372036854775808
  br i1 %i.am, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i unwind label %bb.x, !noalias !21501

bb.x:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.y, !noalias !21501

bb.y:                                             ; preds = %bb.x
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !21501
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.w
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !21501
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit.i

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21507
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit.i: ; preds = %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21501
  store i64 -9223372036854775807, ptr %i.r, align 8, !alias.scope !21496, !noalias !21525
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldBS_BS_uINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvXs4_BW_NtBW_4PathINtNtB1P_7collect12FromIteratorBS_E9from_iterINtNtB2A_5chain5ChainIB52_B3_INtNtB2A_6filter6FilterINtB2y_3MapINtNtNtBc_3str4iter15SplitTerminatorReENCNvMBW_B48_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB79_15GenerateBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future0s_0EEB3_EE0NCINvB5x_15filter_try_foldBS_uB3d_NCB3Y_s_0NCIB2w_BS_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB3d_NCB3Y_s0_0NCINvMs0_B3g_B3d_10wrap_mut_2uBak_NCINvNvB1L_8for_each4callBak_NCNvYIB5S_IB5v_IB5S_B51_B3W_EBa1_EBb1_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B3d_EB7d_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1u_EEB2e_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1u_ENCINvNtB7_3map8map_foldRB1u_B3m_B3m_NCINvNtB1y_5utils19find_exprs_in_exprsNCINvB4D_20find_aggregate_exprsBO_E0BO_E0NCINvNvMsg_NtB7_7flattenINtB60_13FlattenCompatppE9iter_fold7flattenB3m_B3m_NCINvNvXsi_B60_B6d_B2J_4fold7flattenINtNtB3p_9into_iter8IntoIterB1u_EB3m_NCB4A_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  store ptr %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %4, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !285, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.q, 2
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8, !noalias !21527
  %.not.i = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21527
  store ptr %i.k, ptr %i.j, align 8, !noalias !21533
  %i.r = icmp eq ptr %.sroa.3.0.copyload, %.sroa.4.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !21538
  br i1 %i.r, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.t = ptrtoint ptr %.sroa.3.0.copyload to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !21527
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %.sroa.3.0.copyload, i64 %.sroa.01.0.i.i ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !noalias !21533
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1v_EB2e_NCINvNtB1z_5utils19find_exprs_in_exprsNCINvB2Z_20find_aggregate_exprsINtNtBW_5chain5ChainIB42_INtNtNtBb_5slice4iter4IterB1v_EINtNtBb_6option4IterB1v_EEB4V_EE0B41_E0NCINvNvMsg_NtBW_7flattenINtB5J_13FlattenCompatppE9iter_fold7flattenB2e_B2e_NCINvNvXsi_B5J_B5W_NtNtNtBY_6traits8iterator8Iterator4fold7flattenINtNtB2h_9into_iter8IntoIterB1v_EB2e_NCB2W_s_0E0E0E0INtB7_5FnMutTB2e_B1u_EE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.x), !noalias !21539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21533
  %i.y = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !21538
  br label %bb.f

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  %i.aa = trunc nuw i64 %i.q to i1
  br i1 %i.aa, label %bb.g, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.k, align 8, !noalias !21527, !nonnull !3, !align !42, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21527
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schema:bb.a

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schema0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %0)
          to label %bb.i unwind label %bb.v

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType7try_newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB6_11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = load i64, ptr %i.b, align 16, !range !140, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.v, %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.m:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.ab, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.n:                                             ; preds = %bb.h
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.513.0..sroa_idx, i64 104, i1 false)
  store i64 %i.x, ptr %i.e, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.614.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 808
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext12stats_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ad)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.aj, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.e) #50
          to label %common.resume unwind label %bb.u

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32834
  %i.ah = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 160, i64 noundef range(i64 1, 17) 8) #45, !noalias !32834 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.q, label %bb.t, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #53
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.ag)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ah, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.al, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.u:                                             ; preds = %bb.v, %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.v:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %common.resume unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB7_16BinaryExprFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt11write_child(ptr %.0.val, ptr nofree readonly captures(address, read_provenance) %.8.val, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, i8 noundef range(i8 5, 46) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 16, !range !2305, !noundef !3 ; 2 uses
  %i.h = icmp ne i64 %i.g, 35
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i8, ptr %i.k, align 8, !range !4838, !noundef !3
  switch i8 %i.l, label %default.unreachable2 [
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.d
    i8 3, label %bb.j
    i8 4, label %bb.d
    i8 5, label %bb.j
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %.thread
    i8 9, label %.thread
    i8 10, label %.thread
    i8 11, label %bb.f
    i8 12, label %bb.g
    i8 13, label %bb.h
    i8 14, label %bb.h
    i8 15, label %bb.h
    i8 16, label %bb.h
    i8 17, label %bb.h
    i8 18, label %bb.h
    i8 19, label %bb.i
    i8 20, label %bb.i
    i8 21, label %bb.i
    i8 22, label %bb.i
    i8 23, label %bb.h
    i8 24, label %bb.h
    i8 25, label %bb.h
    i8 26, label %bb.h
    i8 27, label %bb.h
    i8 28, label %bb.h
    i8 29, label %bb.h
    i8 30, label %bb.h
    i8 31, label %bb.h
    i8 32, label %bb.h
    i8 33, label %bb.h
    i8 34, label %bb.h
    i8 35, label %bb.h
    i8 36, label %bb.h
    i8 37, label %bb.h
    i8 38, label %bb.h
    i8 39, label %bb.h
    i8 40, label %bb.h
    i8 41, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.m = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

default.unreachable2:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  br label %bb.j

bb.e:                                             ; preds = %bb.b, %bb.b
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  br label %bb.j

bb.h:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.01.0 = phi i8 [ 20, %bb.d ], [ 30, %bb.h ], [ 40, %bb.e ], [ 15, %bb.b ], [ 10, %bb.f ], [ 5, %bb.g ], [ 25, %bb.i ], [ 15, %bb.b ], [ 15, %bb.b ], [ 15, %bb.b ]
  %i.n = icmp samesign ult i8 %.sroa.01.0, %1
  br i1 %i.n, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.b, %bb.b, %bb.b, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_16BinaryExprFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noundef nonnull @0, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_16BinaryExprFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.p = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noundef nonnull @189, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread, %bb.c
  %.sroa.0.0 = phi i1 [ %i.m, %bb.c ], [ %i.o, %.thread ], [ %i.p, %bb.k ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtCs1N9T06jgEdt_11arrow_array6scalarINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_5array5ArrayEL_ENtB2_5Datum3getCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @190, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer11trace_block(ptr noalias nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer12trace_future(ptr noalias nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtBA_3num7nonzero7NonZeroyEENtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #14 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !3
  ret i64 %.val
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32842
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !32840, !noalias !32837, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !32842
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !noalias !32842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32842
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.g unwind label %bb.f, !noalias !32837

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  %i.h = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !32843
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.i, !noalias !32837

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32842
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.h, !noalias !32837

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %bb.d unwind label %bb.i, !noalias !32837

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32837
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %.pn.i

_RNvXsc_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !32840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32842
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.o, align 8, !alias.scope !32837, !noalias !32840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !32840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32842
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0INtB2_7FnOnce1INtNtB2w_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EE9call_onceCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32854
  store ptr %1, ptr %i.c, align 8, !noalias !32856
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !32856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32856
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3, !alias.scope !32858, !noalias !32859, !nonnull !3
  invoke void %i.f(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %1)
          to label %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b, !noalias !32859

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #50
          to label %common.resume.i unwind label %bb.c, !noalias !32859

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32859
  unreachable

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.i = load i128, ptr %i.b, align 16, !noalias !32856, !noundef !3
  %i.j = icmp eq i128 %i.i, -37062676355244807409671512867870684984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32854
  br i1 %i.j, label %_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32854
  store ptr %1, ptr %i.a, align 8, !noalias !32854
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.k, align 8, !noalias !32854
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 48, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #53
          to label %bb.f unwind label %bb.e, !noalias !32860

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #50
          to label %common.resume.i unwind label %bb.g, !noalias !32860

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32860
  unreachable

_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !32848
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 48, i64 noundef 8) #45, !noalias !32860
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayNtB2_3Any7type_idBx_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1197, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs4lawaffTVVK_9sqlparser7dialect7generic14GenericDialectNtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1198, i64 16, i1 false)
  ret void
end_hunk_2
begin_hunk_3_@_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt:bb.a
  %i.dz = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dy, ptr noundef nonnull @1773, ptr noundef nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.ah

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !3, !noundef !3
  store ptr %i.eb, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.az, ptr %i.ay, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.446.0..sroa_idx, align 8
  %i.ec = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !3, !align !42, !noundef !3
  %i.ef = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ee, ptr noundef nonnull @1774, ptr noundef nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !3, !noundef !3
  store ptr %i.eh, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %i.ax, ptr %i.aw, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  %i.ei = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !3, !align !42, !noundef !3
  %i.el = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ek, ptr noundef nonnull @1775, ptr noundef nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.ah

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.em = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !3, !noundef !3
  store ptr %i.en, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.av, ptr %i.au, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  %i.eo = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !3, !align !42, !noundef !3
  %i.er = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noundef nonnull @1776, ptr noundef nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ah

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.es = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !3, !noundef !3
  store ptr %i.et, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.at, ptr %i.as, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.eu = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !3, !align !42, !noundef !3
  %i.ex = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ew, ptr noundef nonnull @1777, ptr noundef nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.ah

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !3, !noundef !3
  store ptr %i.ez, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.ar, ptr %i.aq, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  %i.fa = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !3, !align !42, !noundef !3
  %i.fd = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fc, ptr noundef nonnull @1778, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.ah

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !3, !noundef !3
  store ptr %i.ff, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store ptr %i.bh, ptr %i.bg, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  %i.fg = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !nonnull !3, !align !42, !noundef !3
  %i.fj = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fi, ptr noundef nonnull @1779, ptr noundef nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.ah

bb.q:                                             ; preds = %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.fm = load i8, ptr %i.fl, align 16, !range !136, !noundef !3
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  br i1 %i.fn, label %bb.ay, label %bb.ax

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.fq, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.fs = load ptr, ptr %i.fr, align 16, !nonnull !3, !noundef !3
  store ptr %i.fs, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.am, ptr %i.al, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.an, ptr %i.ft, align 8
  %.sroa.4309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4309.0..sroa_idx, align 8
  %i.fu = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !3, !align !42, !noundef !3
  %i.fx = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.fu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fw, ptr noundef nonnull @1786, ptr noundef nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.ah

bb.s:                                             ; preds = %bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.fz = load ptr, ptr %i.fy, align 16, !nonnull !3, !noundef !3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = tail call { ptr, i64 } @_RNvMs2_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB5_9ScalarUDF4name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ga) ; 2 uses
  %i.gc = extractvalue { ptr, i64 } %i.gb, 0
  %i.gd = extractvalue { ptr, i64 } %i.gb, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.gf = load ptr, ptr %i.ge, align 16, !nonnull !3, !noundef !3 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !3
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val543 = load ptr, ptr %i.gi, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.gc, ptr %i.f, align 8, !noalias !35444
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.gd, ptr %i.gj, align 8, !noalias !35444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35444
  %i.gk = getelementptr inbounds nuw [112 x i8], ptr %i.gf, i64 %i.gh
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr12fmt_function0EE9from_iterB40_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull readonly align 16 %i.gf, ptr noundef nonnull readonly %i.gk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35444
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !35444
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.gl, align 8, !noalias !35444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35444
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !35444, !nonnull !3, !noundef !3
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !noalias !35444, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35444
  invoke void @_RINvNtCs6Po7BT7Nknu_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gn, i64 noundef %i.gp, ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 2)
          to label %bb.u unwind label %bb.t

.body.i:                                          ; preds = %bb.x, %bb.v, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.gu, %bb.v ], [ %i.gq, %bb.t ], [ %i.gv, %bb.x ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #50
          to label %common.resume unwind label %bb.ab

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.s
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !35444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35444
  store ptr %i.f, ptr %i.b, align 8, !noalias !35444
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !35444
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.gr, align 8, !noalias !35444
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !35444
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.gs, align 8, !noalias !35444
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !35444
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val543) ]
  %i.gt = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val543, ptr noundef nonnull @160, ptr noundef nonnull %i.b)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #50
          to label %.body.i unwind label %bb.ab

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35444
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35444
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr12fmt_function.exit unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.bv, %bb.bq, %bb.bm, %bb.ad, %bb.bk, %bb.bo, %bb.bt, %bb.bx, %bb.af, %.body.i, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.li, %bb.bv ], [ %.pn.i, %.body.i ], [ %i.hh, %bb.af ], [ %i.kw, %bb.bk ], [ %i.kx, %bb.bm ], [ %i.lf, %bb.bq ], [ %i.gx, %bb.z ], [ %i.hg, %bb.ad ], [ %i.lp, %bb.bx ], [ %i.lh, %bb.bt ], [ %i.le, %bb.bo ], [ %i.lq, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.v, %.body.i
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr12fmt_function.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ah

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.ha, ptr %i.o, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.hc = load i8, ptr %i.hb, align 8, !range !136, !noundef !3
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  br i1 %i.hd, label %bb.bj, label %bb.bi

bb.ad:                                            ; preds = %bb.b
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu) #50
          to label %common.resume unwind label %bb.ai

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ae
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.bg, %bb.bb, %bb.e, %bb.az, %bb.a, %bb.bh, %bb.ax, %bb.ay, %bb.bs, %bb.r, %bb.be, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.aw, %bb.av, %bb.ap, %bb.am, %bb.d, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr12fmt_function.exit
  %.sroa.0.1.shrunk = phi i1 [ %i.gt, %_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr12fmt_function.exit ], [ %i.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ck, %bb.c ], [ %i.cp, %bb.d ], [ true, %bb.az ], [ true, %bb.am ], [ %.sroa.0.5.in, %bb.ap ], [ true, %bb.aw ], [ %.sroa.0.8.in, %bb.av ], [ %i.dh, %bb.g ], [ %i.dn, %bb.h ], [ %i.dt, %bb.i ], [ %i.dz, %bb.j ], [ %i.ef, %bb.k ], [ %i.el, %bb.l ], [ %i.er, %bb.m ], [ %i.ex, %bb.n ], [ %i.fd, %bb.o ], [ %i.fj, %bb.p ], [ %i.jh, %bb.ay ], [ %i.iy, %bb.ax ], [ true, %bb.a ], [ true, %bb.e ], [ true, %bb.bb ], [ %i.kh, %bb.bh ], [ %.sroa.0.25.in, %bb.bs ], [ true, %bb.be ], [ %i.fx, %bb.r ], [ true, %bb.bg ]
  ret i1 %.sroa.0.1.shrunk

bb.ai:                                            ; preds = %bb.bx, %bb.bt, %bb.bo, %bb.bk, %bb.ad
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.aj:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bv, i64 29
  %i.hl = load i8, ptr %i.hk, align 1, !range !136, !noundef !3
  %i.hm = trunc nuw i8 %i.hl to i1                ; 2 uses
  %spec.select = select i1 %i.hm, ptr @574, ptr @648
  %spec.select554 = select i1 %i.hm, i64 5, i64 4
  store ptr %spec.select, ptr %i.aa, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %spec.select554, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.hp = load i8, ptr %i.ho, align 4, !range !136, !noundef !3
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !range !32417, !noundef !3
  %.not541 = icmp eq i32 %i.hs, 1114112
  br i1 %.not541, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !invariant.load !3, !nonnull !3
  %i.hv = call noundef zeroext i1 %i.hu(ptr noundef nonnull %i.cs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1765, i64 noundef 4) #55
  br i1 %i.hv, label %bb.am, label %bb.ak

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ah

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.hr, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 16, !nonnull !3, !noundef !3
  store ptr %i.hx, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.aa, ptr %i.x, align 8
  %.sroa.4397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4397.0..sroa_idx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.hy, align 8
  %.sroa.4401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4401.0..sroa_idx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.z, ptr %i.hz, align 8
  %.sroa.4405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRcNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4405.0..sroa_idx, align 8
  %i.ia = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu, ptr noundef nonnull @1766, ptr noundef nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ic = load ptr, ptr %i.ib, align 16, !nonnull !3, !noundef !3
  store ptr %i.ic, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.aa, ptr %i.v, align 8
  %.sroa.4421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.4421.0..sroa_idx, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.id, align 8
  %.sroa.4425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.4425.0..sroa_idx, align 8
  %i.ie = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu, ptr noundef nonnull @1767, ptr noundef nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.0.5.in = phi i1 [ %i.ia, %bb.an ], [ %i.ie, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ah

bb.aq:                                            ; preds = %bb.f
  %i.if = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.ig = load i8, ptr %i.if, align 4, !range !136, !noundef !3
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB4_9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl9signature
define noundef nonnull align 8 ptr @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB4_9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl9signature(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB6_9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl9signature9SIGNATURE, i64 72) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature9SignatureE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB6_9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl9signature9SIGNATURE, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB6_9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl9signature9SIGNATURE, i64 72), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature9SignatureE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature9SignatureE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB6_9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl9signature9SIGNATURE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_jsonNtB4_6ToJsonNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl11return_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias nonnull readonly align 8 captures(none) %2, i64 range(i64 0, 384307168202282326) %3) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 24, ptr %i.a, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_jsonNtB4_6ToJsonNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl13documentation(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json13DOCUMENTATION, i64 184) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json7get_doc.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json13DOCUMENTATION, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json13DOCUMENTATION, i64 184), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json7get_doc.exit

_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json7get_doc.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json13DOCUMENTATION
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_jsonNtB4_6ToJsonNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl15output_ordering(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias noundef nonnull readonly align 16 captures(none) %2, i64 noundef range(i64 0, 64051194700380388) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = load i8, ptr %i.a, align 16, !range !165, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 129
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.d, ptr %i.f, align 1
  store i64 20, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2425) #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_jsonNtB4_6ToJsonNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl16invoke_with_args(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 29, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs0_NtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_valueNtB5_13ColumnarValue8to_array(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.m, i64 noundef %i.i)
          to label %bb.m unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.q, %bb.d
  %.pn90 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ab, %bb.q ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %.body unwind label %bb.ah

bb.d:                                             ; preds = %bb.aj, %bb.u, %bb.f, %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !range !5, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !140, !noundef !3 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.s, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #53
          to label %bb.l unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 28
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.u, ptr noundef nonnull align 1 dereferenceable(29) @2426, i64 29, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.w, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 29, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i128 51, ptr %0, align 16
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit113, %bb.n, %bb.g
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.y

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.l:                                             ; preds = %bb.f
  unreachable

bb.m:                                             ; preds = %bb.c
  %.sroa.022.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.826.0.copyload = load ptr, ptr %.sroa.826.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not87 = icmp eq i64 %.sroa.022.0.copyload, 20
  br i1 %.not87, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.470.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.022.0.copyload, ptr %i.z, align 16
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.0.copyload, ptr %.sroa.268.0..sroa_idx, align 8
  %.sroa.369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.826.0.copyload, ptr %.sroa.369.0..sroa_idx, align 16
  store i128 51, ptr %0, align 16
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.826.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.7.0.copyload, ptr %i.f, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.826.0.copyload, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression19evaluate_expression7to_json(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2427)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35963)
  call void @llvm.experimental.noalias.scope.decl(metadata !35966)
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !35969, !nonnull !3, !noundef !3
  %i.ad = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !35969
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ah

bb.r:                                             ; preds = %bb.o
  %i.af = load i64, ptr %i.e, align 8, !range !323, !noundef !3 ; 2 uses
  %.not88 = icmp eq i64 %i.af, -9223372036854775788
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  br i1 %.not88, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.784.0.copyload = load i64, ptr %.sroa.784.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.af, ptr %i.b, align 8
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %.sroa.249.0..sroa_idx, align 8
  %.sroa.350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aj, ptr %.sroa.350.0..sroa_idx, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.784.0.copyload, ptr %.sroa.451.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.ai unwind label %bb.p

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i128 50, ptr %0, align 16
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %.sroa.536.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aj, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35970)
  call void @llvm.experimental.noalias.scope.decl(metadata !35973)
  %i.ak = load ptr, ptr %i.f, align 8, !alias.scope !35976, !nonnull !3, !noundef !3
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !35976
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit98

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit98 unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit98: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit98
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.x

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit98
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueEECs14kWLkQVSKO_14deltalake_core.exit103 unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.i, %bb.v, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %.pn92 = phi { ptr, i32 } [ %.pn90, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.x, %bb.i ], [ %i.aq, %bb.y ], [ %i.an, %bb.v ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #50
          to label %bb.as unwind label %bb.ah

bb.y:                                             ; preds = %bb.w, %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueEECs14kWLkQVSKO_14deltalake_core.exit103: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueEECs14kWLkQVSKO_14deltalake_core.exit103
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body105 unwind label %bb.ab

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueEECs14kWLkQVSKO_14deltalake_core.exit103
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.body105:                                         ; preds = %bb.z, %bb.ac
  %eh.lpad-body106 = phi { ptr, i32 } [ %i.au, %bb.ac ], [ %i.as, %bb.z ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35977)
  call void @llvm.experimental.noalias.scope.decl(metadata !35980)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !35983, !nonnull !3, !noundef !3
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !35983
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %.body105
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aa
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35984)
  call void @llvm.experimental.noalias.scope.decl(metadata !35987)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !35990, !nonnull !3, !noundef !3
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !35990
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit109

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit109 unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body105, %bb.ad, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.ag ], [ %eh.lpad-body106, %bb.ad ], [ %eh.lpad-body106, %.body105 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35991)
  call void @llvm.experimental.noalias.scope.decl(metadata !35994)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !35997, !nonnull !3, !noundef !3
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !35997
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit109: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35998)
  call void @llvm.experimental.noalias.scope.decl(metadata !36001)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !36004, !nonnull !3, !noundef !3
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !36004
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit111.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit111

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit111.sink.split: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit109, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit122
  %.sink = phi ptr [ %i.ci, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit122 ], [ %i.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit109 ]
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit111

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit111: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit111.sink.split, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit122, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit109
  ret void

bb.ah:                                            ; preds = %bb.au, %bb.at, %bb.aq, %bb.ao, %bb.af, %bb.ad, %bb.q, %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

end_hunk_4
