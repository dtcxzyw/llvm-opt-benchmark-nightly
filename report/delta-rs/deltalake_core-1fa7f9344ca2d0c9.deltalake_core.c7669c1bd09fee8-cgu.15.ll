inline.NumInlined: 12000
inline.NumDeleted: 3498
begin_hunk_0_@_RINvMNtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB3_8DFSchema25try_from_qualified_schemaNtNtB5_15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
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
begin_hunk_1_@_RINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAlias7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core:bb.a
bb.bt:                                            ; preds = %bb.v, %bb.bs
  %.pn49.pn.ph = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %lpad.thr_comm, %bb.bs ] ; 2 uses
  %i.ei = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !297
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.bu, label %.thread107.thread

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #52
          to label %.thread107.thread unwind label %bb.bn

.thread107.thread:                                ; preds = %bb.br, %bb.ab, %.thread107.thread154, %bb.bt, %bb.bu, %bb.y, %bb.bl, %.thread91
  %.pn49.pn.pn95 = phi { ptr, i32 } [ %i.bd, %.thread91 ], [ %lpad.thr_comm.split-lp122155, %.thread107.thread154 ], [ %.pn49.pn.ph, %bb.bt ], [ %.pn49.pn.ph, %bb.bu ], [ %lpad.thr_comm.split-lp, %bb.y ], [ %i.ed, %bb.bl ], [ %.pn118, %bb.br ], [ %eh.lpad-body, %bb.ab ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.ek = load ptr, ptr %i.v, align 8, !alias.scope !310, !nonnull !3, !noundef !3
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !310
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.bv, label %.body59

bb.bv:                                            ; preds = %.thread107.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #52
          to label %.body59 unwind label %bb.bn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core.exit78: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.x)
  br label %bb.bh

.body66.thread:                                   ; preds = %.thread, %bb.bo, %.body66
  %.pn55131 = phi { ptr, i32 } [ %.pn53, %.body66 ], [ %i.eg, %bb.bo ], [ %lpad.thr_comm146, %.thread ]
  %.sroa.032.2130 = phi i1 [ %.sroa.032.4, %.body66 ], [ false, %bb.bo ], [ %.sroa.032.3.ph, %.thread ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.x) #50
          to label %.body66.thread132 unwind label %bb.bn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84: ; preds = %bb.bf, %bb.bw, %bb.bx, %.body66.thread132
  %.pn5790 = phi { ptr, i32 } [ %i.dy, %bb.bf ], [ %.pn57, %.body66.thread132 ], [ %.pn57, %bb.bx ], [ %.pn57, %bb.bw ]
  resume { ptr, i32 } %.pn5790

bb.bw:                                            ; preds = %.body66.thread132
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.en = load ptr, ptr %i.y, align 8, !alias.scope !317, !nonnull !3, !noundef !3
  %i.eo = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !317
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84 unwind label %bb.bn
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6Fields13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB1h_12arrow_reader18ArrowReaderBuilderINtB1f_11AsyncReaderNtNtB1f_5store19ParquetObjectReaderEE5builds_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %i.j, align 8
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.k, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !318
  store i64 0, ptr %i.f, align 8, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !318
  store ptr %i.g, ptr %i.e, align 8, !noalias !318
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.l, align 8, !noalias !318
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.val1
  store ptr %i.m, ptr %i.c, align 8, !noalias !318
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.o, align 8, !noalias !318
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.p, align 8, !noalias !318
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvMs_NtB28_6fieldsNtB2W_6Fields17try_filter_leavesNCINvB2T_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4d_12arrow_reader18ArrowReaderBuilderINtB4b_11AsyncReaderNtNtB4b_5store19ParquetObjectReaderEE5builds_0E0Es_0EINtNtB6_6option6OptionB1w_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB28_5error10ArrowErrorENCINvXso_B7h_IB7f_INtNtB1B_3vec3VecB6N_EB81_EINtNtNtB4_6traits7collect12FromIteratorIB7f_B6N_B81_EE9from_iterBQ_E0B8K_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !318
  %i.q = load i64, ptr %i.d, align 8, !range !323, !noalias !318, !noundef !3 ; 2 uses
  %.not.i2 = icmp eq i64 %i.q, -9223372036854775788
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not.i2, label %bb.b, label %bb.j

common.resume:                                    ; preds = %bb.k, %bb.c, %.body.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.y, %bb.c ], [ %eh.lpad-body.i, %bb.h ], [ %i.aj, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !318
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !318, !nonnull !3, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !318, !noundef !3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.x = invoke { ptr, i64 } @_RINvXs1g_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcSIBz_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1E_8adapters10filter_map9FilterMapINtNtNtB1G_5slice4iter4IterINtNtB1G_6option6OptionBJ_EENCINvMs_NtBR_6fieldsNtB4s_6Fields17try_filter_leavesNCINvB4p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5I_12arrow_reader18ArrowReaderBuilderINtB5G_11AsyncReaderNtNtB5G_5store19ParquetObjectReaderEE5builds_0E0Es0_0EECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.t, ptr noundef nonnull %i.w)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2t_6fieldsNtB3i_6Fields17try_filter_leavesNCINvB3f_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4z_12arrow_reader18ArrowReaderBuilderINtB4x_11AsyncReaderNtNtB4x_5store19ParquetObjectReaderEE5builds_0E0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectIB1S_SB1R_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !322 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %common.resume unwind label %bb.i, !noalias !322

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2t_6fieldsNtB3i_6Fields17try_filter_leavesNCINvB3f_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4z_12arrow_reader18ArrowReaderBuilderINtB4x_11AsyncReaderNtNtB4x_5store19ParquetObjectReaderEE5builds_0E0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectIB1S_SB1R_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  %i.z = extractvalue { ptr, i64 } %i.x, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.x, 1
  store ptr %i.z, ptr %i.b, align 8, !noalias !318
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !318
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBK_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.d, !noalias !322

bb.d:                                             ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2t_6fieldsNtB3i_6Fields17try_filter_leavesNCINvB3f_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4z_12arrow_reader18ArrowReaderBuilderINtB4x_11AsyncReaderNtNtB4x_5store19ParquetObjectReaderEE5builds_0E0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectIB1S_SB1R_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.f, !noalias !322

bb.e:                                             ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2t_6fieldsNtB3i_6Fields17try_filter_leavesNCINvB3f_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4z_12arrow_reader18ArrowReaderBuilderINtB4x_11AsyncReaderNtNtB4x_5store19ParquetObjectReaderEE5builds_0E0Es0_0ENtNtNtBa_6traits8iterator8Iterator7collectIB1S_SB1R_EECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsNtNtBL_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g, !noalias !322

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !322
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.ac, %bb.d ] ; 2 uses
  %i.af = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !324
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %common.resume

bb.h:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #52
          to label %common.resume unwind label %bb.i, !noalias !322

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !322
  unreachable

bb.j:                                             ; preds = %bb.a
  %.sroa.6.8.copyload = load ptr, ptr %i.r, align 8, !noalias !331
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ai = load <2 x i64>, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !332
  store i64 %i.q, ptr %i.h, align 8
  store ptr %.sroa.6.8.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  store <2 x i64> %i.ai, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #53
          to label %bb.l unwind label %bb.k, !noalias !332

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h) #50
          to label %common.resume unwind label %bb.m, !noalias !332

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !332
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsNtNtBL_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret { ptr, i64 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCshmPyUV8PP35_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcE17format_with_itemsNtNtNtB8_6format8strftime13StrftimeItemsNtB1D_4ItemECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @_RNvMNtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB2_13NaiveDateTime22overflowing_add_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load i32, ptr %i.c, align 4, !range !335, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load <2 x i32>, ptr %i.f, align 4
  store <2 x i32> %i.h, ptr %i.g, align 4
  store i32 1, ptr %i.b, align 4
  call void @_RINvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE15new_with_offsetNtNtNtB7_6offset3utc3UtcECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i32 noundef %i.e, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i75 = alloca [40 x i8], align 8        ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 13 uses
  %i.s = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 2 uses
  %i.z = alloca [56 x i8], align 8                ; 12 uses
  %i.aa = alloca [16 x i8], align 16              ; 9 uses
  store ptr %2, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  store ptr %3, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs6Po7BT7Nknu_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.ad = load i64, ptr %i.z, align 8, !range !285, !noundef !3
  %switch.idx.mult = shl nuw nsw i64 %i.ad, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %switch.idx.mult
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !3
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.e

default.unreachable158:                           ; preds = %bb.ai
  unreachable

bb.c:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !336
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread126

.noexc:                                           ; preds = %bb.c
  %i.ai = load i64, ptr %i.m, align 8, !range !5, !noalias !336, !noundef !3
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !140, !noalias !336, !noundef !3 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.d, label %bb.f, !prof !4

bb.d:                                             ; preds = %.noexc
  %i.an = load i64, ptr %i.am, align 8, !noalias !336
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #53
          to label %.noexc56 unwind label %.thread126

.noexc56:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_4IntoNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE4intoCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ao = load ptr, ptr %i.aa, align 16, !nonnull !3, !noundef !3
  %i.ap = load ptr, ptr %i.ab, align 8, !nonnull !3, !align !42, !noundef !3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !349, !invariant.load !3
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !3, !nonnull !3
  %i.ay = invoke noundef nonnull ptr %i.ax(ptr noundef nonnull %i.av)
          to label %bb.s unwind label %.thread126

.thread126:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i63, %bb.d, %bb.bj, %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

bb.f:                                             ; preds = %.noexc
  %i.az = load ptr, ptr %i.am, align 8, !noalias !336, !nonnull !3, !noundef !3 ; 2 uses
  %i.ba = icmp ugt i64 %i.al, 25
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(26) @28, i64 range(i64 0, -9223372036854775808) 26, i1 false), !noalias !350
  store i64 %i.al, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx105, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 26, ptr %.sroa.5106.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g

.body59:                                          ; preds = %bb.l, %bb.g, %bb.k
  %.pn45 = phi { ptr, i32 } [ %i.bk, %bb.k ], [ %i.bb, %bb.g ], [ %i.bl, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #50
          to label %.thread122 unwind label %bb.q

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.i, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body59

bb.h:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %i.q, align 8, !range !5, !noundef !3
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !140, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.bh = load i64, ptr %i.bg, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #53
          to label %bb.r unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.bg, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.bf, ptr %i.w, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bi, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.527.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.x, ptr %i.v, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.bj, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @29, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit58 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #50
          to label %.body59 unwind label %bb.q

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit58: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit58
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeANtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeaturej6_ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %.lcssa11 = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.1 ], [ 3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.2 ], [ 4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.3 ], [ 5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.4 ], [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.5 ]
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.k
  %i.q = phi i64 [ %.lcssa11, %bb.k ], [ %.lcssa, %bb.c ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.b, %bb.c ]
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body, %bb.j
  %.sroa.0.116 = phi i64 [ %i.n, %bb.j ], [ %i.q, %.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.116
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.s) #50
          to label %bb.j unwind label %bb.l

._crit_edge:                                      ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeANtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeaturej7_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !689, !alias.scope !705, !noundef !3
  %switch1.i = icmp slt i64 %i.a, -9223372036854775783
  br i1 %switch1.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  %.lcssa13 = phi ptr [ %0, %bb.b ], [ %i.d, %bb.e ], [ %i.f, %bb.f ], [ %i.h, %bb.g ], [ %i.j, %bb.h ], [ %i.l, %bb.i ], [ %i.n, %bb.j ]
  %.lcssa = phi i64 [ 1, %bb.b ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ]
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.lcssa13)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !689, !alias.scope !705, !noundef !3
  %switch1.i.1 = icmp slt i64 %i.e, -9223372036854775783
  br i1 %switch1.i.1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.1, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.1 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.1: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.1 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !689, !alias.scope !705, !noundef !3
  %switch1.i.2 = icmp slt i64 %i.g, -9223372036854775783
  br i1 %switch1.i.2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.1
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.2 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.2: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.2 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !689, !alias.scope !705, !noundef !3
  %switch1.i.3 = icmp slt i64 %i.i, -9223372036854775783
  br i1 %switch1.i.3, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.3, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.2
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.3 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.3: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.3 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !range !689, !alias.scope !705, !noundef !3
  %switch1.i.4 = icmp slt i64 %i.k, -9223372036854775783
  br i1 %switch1.i.4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.4, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.3
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.4 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.4: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.4 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !689, !alias.scope !705, !noundef !3
  %switch1.i.5 = icmp slt i64 %i.m, -9223372036854775783
  br i1 %switch1.i.5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.5, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.4
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.5 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.5: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.5 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.5: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !689, !alias.scope !705, !noundef !3
  %switch1.i.6 = icmp slt i64 %i.o, -9223372036854775783
  br i1 %switch1.i.6, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.6, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.5
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.6 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.6: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.6 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.6: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core.exit.5
  ret void

bb.k:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.0.116, 1          ; 2 uses
  %i.q = icmp eq i64 %i.p, 7
  br i1 %i.q, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %.lcssa11 = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.1 ], [ 3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.2 ], [ 4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.3 ], [ 5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.4 ], [ 6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.5 ], [ 7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.6 ]
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.l
  %i.s = phi i64 [ %.lcssa11, %bb.l ], [ %.lcssa, %bb.c ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.l ], [ %i.b, %bb.c ]
  %i.t = icmp eq i64 %i.s, 7
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body, %bb.k
  %.sroa.0.116 = phi i64 [ %i.p, %bb.k ], [ %i.s, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.116
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.u) #50
          to label %bb.k unwind label %bb.m

._crit_edge:                                      ; preds = %bb.k, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3B_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEB3l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEB3l_.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropB33_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropB33_.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropB33_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEB3l_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB36_5ErrorENtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2c_5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB15_4ExprEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !285, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtBJ_4ExprEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtB15_4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(328) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !709, !noundef !3
  switch i64 %i.a, label %bb.b [
    i64 70, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtBJ_4ExprEECs14kWLkQVSKO_14deltalake_core.exit
    i64 69, label %bb.c
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtBJ_4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) #54, !inline_history !710
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtBJ_4ExprEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d, !inline_history !710

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !inline_history !710

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !inline_history !710
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !inline_history !710
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4lawaffTVVK_9sqlparser3ast19OneOrManyWithParensNtBJ_4ExprEECs14kWLkQVSKO_14deltalake_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB17_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !140, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2e_5error5ErrorENtNtBQ_6marker4SendEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2e_5error5ErrorENtNtBQ_6marker4SendEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6result6ResultIBy_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2e_5error5ErrorENtNtBQ_6marker4SendEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !42, !noundef !3 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d, !noalias !711, !inline_history !714

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #45, !noalias !711
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #45, !noalias !711
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !715, !noundef !3 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d, !noalias !716, !inline_history !719

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #45, !noalias !716
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #45, !noalias !716
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !42, !noundef !3 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1400) %i.a) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d, !noalias !720, !inline_history !723

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 1400, i64 noundef 8) #45, !noalias !720, !inline_history !723
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 1400, i64 noundef 8) #45, !noalias !720, !inline_history !723
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB27_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB45_5error5ErrorEEINtNtB25_7flatten7FlattenINtBJ_8IntoIterIB3s_DNtNtNtB27_6traits8iterator8Iteratorp4ItemB35_NtNtB4_6marker4SendEL_EEEEINtB15_18MapSpecialCaseFnOkNCNCNvMNtB45_11log_segmentNtB7N_10LogSegment24create_checkpoint_streams_00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load i64, ptr %i.a, align 16, !range !724, !noundef !3
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB1L_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3J_5error5ErrorEEINtNtB1J_7flatten7FlattenINtNtB4_6option8IntoIterIB36_DNtNtNtB1L_6traits8iterator8Iteratorp4ItemB2J_NtNtB4_6marker4SendEL_EEEEINtBJ_18MapSpecialCaseFnOkNCNCNvMNtB3J_11log_segmentNtB7z_10LogSegment24create_checkpoint_streams_00EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.d = load i64, ptr %0, align 16, !range !734, !alias.scope !735, !noundef !3 ; 3 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775741
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB1L_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3J_5error5ErrorEEINtNtB1J_7flatten7FlattenINtNtB4_6option8IntoIterIB36_DNtNtNtB1L_6traits8iterator8Iteratorp4ItemB2J_NtNtB4_6marker4SendEL_EEEEINtBJ_18MapSpecialCaseFnOkNCNCNvMNtB3J_11log_segmentNtB7z_10LogSegment24create_checkpoint_streams_00EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.f = icmp eq i64 %i.d, -9223372036854775742
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB1L_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3J_5error5ErrorEEINtNtB1J_7flatten7FlattenINtNtB4_6option8IntoIterIB36_DNtNtNtB1L_6traits8iterator8Iteratorp4ItemB2J_NtNtB4_6marker4SendEL_EEEEINtBJ_18MapSpecialCaseFnOkNCNCNvMNtB3J_11log_segmentNtB7z_10LogSegment24create_checkpoint_streams_00EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.g = icmp eq i64 %i.d, -9223372036854775743
  br i1 %i.g, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !751 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 16, !alias.scope !751, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.j = load ptr, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !invariant.load !3, !noalias !751 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i)
          to label %bb.h unwind label %bb.j, !noalias !751

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !708, !invariant.load !3, !noalias !751 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB1L_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3J_5error5ErrorEEINtNtB1J_7flatten7FlattenINtNtB4_6option8IntoIterIB36_DNtNtNtB1L_6traits8iterator8Iteratorp4ItemB2J_NtNtB4_6marker4SendEL_EEEEINtBJ_18MapSpecialCaseFnOkNCNCNvMNtB3J_11log_segmentNtB7z_10LogSegment24create_checkpoint_streams_00EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !349, !invariant.load !3, !noalias !751
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #45, !noalias !751
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB1L_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3J_5error5ErrorEEINtNtB1J_7flatten7FlattenINtNtB4_6option8IntoIterIB36_DNtNtNtB1L_6traits8iterator8Iteratorp4ItemB2J_NtNtB4_6marker4SendEL_EEEEINtBJ_18MapSpecialCaseFnOkNCNCNvMNtB3J_11log_segmentNtB7z_10LogSegment24create_checkpoint_streams_00EEECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !708, !invariant.load !3, !noalias !751 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.body.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !349, !invariant.load !3, !noalias !751
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #45, !noalias !751
  br label %.body.i.i

bb.l:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(160) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB1L_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3J_5error5ErrorEEINtNtB1J_7flatten7FlattenINtNtB4_6option8IntoIterIB36_DNtNtNtB1L_6traits8iterator8Iteratorp4ItemB2J_NtNtB4_6marker4SendEL_EEEEINtBJ_18MapSpecialCaseFnOkNCNCNvMNtB3J_11log_segmentNtB7z_10LogSegment24create_checkpoint_streams_00EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.k, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.p, %bb.k ], [ %i.p, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBJ_8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1Y_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3I_5error5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.a) #50
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %.body.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.o:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB1L_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3J_5error5ErrorEEINtNtB1J_7flatten7FlattenINtNtB4_6option8IntoIterIB36_DNtNtNtB1L_6traits8iterator8Iteratorp4ItemB2J_NtNtB4_6marker4SendEL_EEEEINtBJ_18MapSpecialCaseFnOkNCNCNvMNtB3J_11log_segmentNtB7z_10LogSegment24create_checkpoint_streams_00EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d, %bb.h, %bb.i, %bb.l
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBJ_8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1Y_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3I_5error5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB4q_16MatchedFilesScan9files_set00EEEB4u_(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !285, !noundef !3
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB43_16MatchedFilesScan9files_set00EEB47_.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB43_16MatchedFilesScan9files_set00EEB47_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !767, !noundef !3
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB43_16MatchedFilesScan9files_set00EEB47_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !774, !noundef !3 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB43_16MatchedFilesScan9files_set00EEB47_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !775
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB43_16MatchedFilesScan9files_set00EEB47_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB43_16MatchedFilesScan9files_set00EEB47_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB13_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB2v_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4f_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB4f_11log_segmentNtB5X_10LogSegment24create_checkpoint_streams_0EINtNtNtB1F_8adaptors3map14MapSpecialCaseINtNtB17_5chain5ChainINtNtNtB19_7sources4once4OnceB3J_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB2u_EEEINtB75_18MapSpecialCaseFnOkNCNCB5U_s_00EEB5a_ENCB5U_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(496) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 16, !range !786, !noundef !3
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBH_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB28_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3R_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB3R_11log_segmentNtB5z_10LogSegment24create_checkpoint_streams_0EINtNtNtB1j_8adaptors3map14MapSpecialCaseINtNtBL_5chain5ChainINtNtNtBN_7sources4once4OnceB3l_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB27_EEEINtB6H_18MapSpecialCaseFnOkNCNCB5w_s_00EEB4M_ENCB5w_s0_0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !796 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.val1.i.i.i = load ptr, ptr %i.f, align 16, !alias.scope !796, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.g = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !3, !noalias !796 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i.i.i)
          to label %bb.e unwind label %bb.g, !noalias !796

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !708, !invariant.load !3, !noalias !796 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !349, !invariant.load !3, !noalias !796
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #45, !noalias !796
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !708, !invariant.load !3, !noalias !796 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !349, !invariant.load !3, !noalias !796
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #45, !noalias !796
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtBL_10LogSegment24create_checkpoint_streams_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.d) #50
          to label %.body.i.i unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtBL_10LogSegment24create_checkpoint_streams_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1f_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2Y_11log_segmentNtB4G_10LogSegment24create_checkpoint_streams_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.j

bb.i:                                             ; preds = %.body.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.m, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB27_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB45_5error5ErrorEEINtNtB25_7flatten7FlattenINtBJ_8IntoIterIB3s_DNtNtNtB27_6traits8iterator8Iteratorp4ItemB35_NtNtB4_6marker4SendEL_EEEEINtB15_18MapSpecialCaseFnOkNCNCNvMNtB45_11log_segmentNtB7N_10LogSegment24create_checkpoint_streams_00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(496) %0) #50
          to label %bb.k unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1f_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2Y_11log_segmentNtB4G_10LogSegment24create_checkpoint_streams_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIBH_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB27_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB45_5error5ErrorEEINtNtB25_7flatten7FlattenINtBJ_8IntoIterIB3s_DNtNtNtB27_6traits8iterator8Iteratorp4ItemB35_NtNtB4_6marker4SendEL_EEEEINtB15_18MapSpecialCaseFnOkNCNCNvMNtB45_11log_segmentNtB7N_10LogSegment24create_checkpoint_streams_00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(496) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBH_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB28_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3R_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB3R_11log_segmentNtB5z_10LogSegment24create_checkpoint_streams_0EINtNtNtB1j_8adaptors3map14MapSpecialCaseINtNtBL_5chain5ChainINtNtNtBN_7sources4once4OnceB3l_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB27_EEEINtB6H_18MapSpecialCaseFnOkNCNCB5w_s_00EEB4M_ENCB5w_s0_0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.l, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.v, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB27_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB45_5error5ErrorEEINtNtB25_7flatten7FlattenINtBJ_8IntoIterIB3s_DNtNtNtB27_6traits8iterator8Iteratorp4ItemB35_NtNtB4_6marker4SendEL_EEEEINtB15_18MapSpecialCaseFnOkNCNCNvMNtB45_11log_segmentNtB7N_10LogSegment24create_checkpoint_streams_00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(160) %i.u) #50
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1f_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2Y_11log_segmentNtB4G_10LogSegment24create_checkpoint_streams_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %.body.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.n:                                             ; preds = %bb.k
  resume { ptr, i32 } %.pn.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBH_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB28_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3R_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB3R_11log_segmentNtB5z_10LogSegment24create_checkpoint_streams_0EINtNtNtB1j_8adaptors3map14MapSpecialCaseINtNtBL_5chain5ChainINtNtNtBN_7sources4once4OnceB3l_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB27_EEEINtB6H_18MapSpecialCaseFnOkNCNCB5w_s_00EEB4M_ENCB5w_s0_0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1f_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Y_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2Y_11log_segmentNtB4G_10LogSegment24create_checkpoint_streams_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB27_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB45_5error5ErrorEEINtNtB25_7flatten7FlattenINtBJ_8IntoIterIB3s_DNtNtNtB27_6traits8iterator8Iteratorp4ItemB35_NtNtB4_6marker4SendEL_EEEEINtB15_18MapSpecialCaseFnOkNCNCNvMNtB45_11log_segmentNtB7N_10LogSegment24create_checkpoint_streams_00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(160) %i.x)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB17_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2K_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3V_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6Z_10LogSegment24create_checkpoint_streams_0EINtNtNtB35_8adaptors3map14MapSpecialCaseIB13_INtNtNtB19_7sources4once4OnceB59_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB3U_EEEINtB87_18MapSpecialCaseFnOkNCNCB6W_s_00EEB6c_ENCB6W_s0_0EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 16, !range !797, !noundef !3
  %i.c = icmp eq i64 %i.b, 5
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val.i = load ptr, ptr %i.d, align 16, !alias.scope !798, !noundef !3 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !798 ; 6 uses
  %i.f = icmp eq ptr %.val.i, null
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.g = load ptr, ptr %.val1.i, align 8, !invariant.load !3, !noalias !798 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.g(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.h, !noalias !798

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !708, !invariant.load !3, !noalias !798 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !349, !invariant.load !3, !noalias !798
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #45, !noalias !798
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !708, !invariant.load !3, !noalias !798 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !349, !invariant.load !3, !noalias !798
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #45, !noalias !798
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB13_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB2v_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4f_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB4f_11log_segmentNtB5X_10LogSegment24create_checkpoint_streams_0EINtNtNtB1F_8adaptors3map14MapSpecialCaseINtNtB17_5chain5ChainINtNtNtB19_7sources4once4OnceB3J_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB2u_EEEINtB75_18MapSpecialCaseFnOkNCNCB5U_s_00EEB5a_ENCB5U_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(512) %0) #50
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.f, %bb.g
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB13_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB2v_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4f_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB4f_11log_segmentNtB5X_10LogSegment24create_checkpoint_streams_0EINtNtNtB1F_8adaptors3map14MapSpecialCaseINtNtB17_5chain5ChainINtNtNtB19_7sources4once4OnceB3J_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB2u_EEEINtB75_18MapSpecialCaseFnOkNCNCB5U_s_00EEB5a_ENCB5U_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(512) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters7flatten7FlattenINtBJ_8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1Y_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3I_5error5ErrorENtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !285, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1L_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1L_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB13_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2T_5error5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1F_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3o_5error5ErrorENtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !813, !noundef !3 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !813 ; 6 uses
  %i.f = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1F_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3o_5error5ErrorENtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.g = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !3, !noalias !813 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.g(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.f unwind label %bb.h, !noalias !813

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !708, !invariant.load !3, !noalias !813 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1F_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3o_5error5ErrorENtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !349, !invariant.load !3, !noalias !813
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #45, !noalias !813
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB1F_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3o_5error5ErrorENtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !708, !invariant.load !3, !noalias !813 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body.i.i, label %bb.i
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1110, !nonnull !3, !noundef !3
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1110
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayEEB1p_(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjXVmwyzybGx_27datafusion_functions_nested10make_array9MakeArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #50
          to label %common.resume.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayEBM_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayEBM_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json6ToJsonEEB1t_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common9signature13TypeSignatureECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #50
          to label %common.resume.i.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !140, !alias.scope !1111, !noundef !3
  %i.f = icmp eq i64 %i.e, -9223372036854775808
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json6ToJsonEBQ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %bb.b
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json6ToJsonEBQ_.exit

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json6ToJsonEBQ_.exit: ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  invoke void %i.c(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val2 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6option6OptionReEEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6option6OptionReEEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6option6OptionReEEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6option6OptionReEEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6option6OptionReEEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6option6OptionReEEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBQ_6option6OptionReEEL_ENtNtNtBQ_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !140, !alias.scope !1118, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #45
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #45
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs14kWLkQVSKO_14deltalake_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !285, !alias.scope !1121, !noundef !3
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #45
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast9StatementECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(2688) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(352) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #45
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1T_5types14StringViewTypeEEINtNtBL_3map3MapINtBJ_7FlattenINtNtB1T_8iterator9ArrayIterRB1M_EENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB4M_16MatchedFilesScan9files_set00ENCB4G_0EEB4Q_:bb.a
bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB4q_16MatchedFilesScan9files_set00EEEB4u_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB4q_16MatchedFilesScan9files_set00EEEB4u_(ptr noalias noundef align 8 dereferenceable(120) %i.l) #50
          to label %bb.l unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB4q_16MatchedFilesScan9files_set00EEEB4u_.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.n = load i64, ptr %i.m, align 8, !range !285, !alias.scope !1379, !noundef !3
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBL_3map3MapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB2g_5types14StringViewTypeEENCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB44_16MatchedFilesScan9files_set0EIB1u_INtBJ_7FlattenINtNtB2g_8iterator9ArrayIterRB29_EENCNCB3Y_00EEEB48_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB4q_16MatchedFilesScan9files_set00EEEB4u_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1395, !noundef !3
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBL_3map3MapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB2g_5types14StringViewTypeEENCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB44_16MatchedFilesScan9files_set0EIB1u_INtBJ_7FlattenINtNtB2g_8iterator9ArrayIterRB29_EENCNCB3Y_00EEEB48_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1402, !noundef !3 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBL_3map3MapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB2g_5types14StringViewTypeEENCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB44_16MatchedFilesScan9files_set0EIB1u_INtBJ_7FlattenINtNtB2g_8iterator9ArrayIterRB29_EENCNCB3Y_00EEEB48_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1403
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBL_3map3MapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB2g_5types14StringViewTypeEENCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB44_16MatchedFilesScan9files_set0EIB1u_INtBJ_7FlattenINtNtB2g_8iterator9ArrayIterRB29_EENCNCB3Y_00EEEB48_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBL_3map3MapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB2g_5types14StringViewTypeEENCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB44_16MatchedFilesScan9files_set0EIB1u_INtBJ_7FlattenINtNtB2g_8iterator9ArrayIterRB29_EENCNCB3Y_00EEEB48_.exit

bb.k:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.l:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBL_3map3MapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB2g_5types14StringViewTypeEENCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB44_16MatchedFilesScan9files_set0EIB1u_INtBJ_7FlattenINtNtB2g_8iterator9ArrayIterRB29_EENCNCB3Y_00EEEB48_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB4q_16MatchedFilesScan9files_set00EEEB4u_.exit.i, %bb.g, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6stream21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2t_yEEEEBP_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1420, !nonnull !3, !noundef !3
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1425
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %.body

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #52
          to label %.body unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1432, !nonnull !3, !noundef !3
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1433
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3r_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3r_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded8ReceiverINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2m_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3t_(ptr noalias noundef align 8 dereferenceable(8) %i.j) #50
          to label %.body4 unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3r_.exit: ; preds = %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXsb_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3r_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !1440, !nonnull !3, !noundef !3
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1445
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.i, label %.body4

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #52
          to label %.body4 unwind label %bb.l

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3r_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.p = load ptr, ptr %i.k, align 8, !alias.scope !1452, !nonnull !3, !noundef !3
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1453
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded8ReceiverINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2m_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3t_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded8ReceiverINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2m_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3t_.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.body4:                                           ; preds = %bb.m, %bb.i, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.u, %bb.m ], [ %i.l, %bb.i ], [ %i.l, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4task8join_set7JoinSetINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1U_(ptr noalias noundef align 8 dereferenceable(16) %i.t) #50
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded8ReceiverINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2m_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3t_.exit: ; preds = %bb.j, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4task8join_set7JoinSetINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1U_(ptr noalias noundef align 8 dereferenceable(16) %i.v)
  ret void

bb.n:                                             ; preds = %.body4, %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.o:                                             ; preds = %.body4
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #45
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0) #50
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.i:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded8ReceiverINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2m_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3t_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsb_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1460, !nonnull !3, !noundef !3
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1463
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtBL_3vec3VecbEEIB2N_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1j_7bounded9SemaphoreEEEB3D_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtBL_3vec3VecbEEIB2N_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1j_7bounded9SemaphoreEEEB3D_.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1470, !nonnull !3, !noundef !3
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1471
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan2RxINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2d_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEEB3k_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan2RxINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2d_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEEB3k_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtBL_3vec3VecbEEIB2N_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1j_7bounded9SemaphoreEEEB3D_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan2RxINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2d_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEEB3k_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtBP_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprNtNtBT_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprNtNtBc_5alloc6GlobalEBV_4dropCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 4 uses
  %i.g = icmp ult i64 %i.f, 9373345565909326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprNtNtBc_5alloc6GlobalEBV_4dropCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw [984 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [984 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 984
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprNtNtBc_5alloc6GlobalEBV_4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtBP_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtBT_5alloc6GlobalEEB2m_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtBc_5alloc6GlobalEBV_4dropB21_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 4 uses
  %i.g = icmp ult i64 %i.f, 33909456017848441
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtBc_5alloc6GlobalEBV_4dropB21_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw [272 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [272 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 272
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtBc_5alloc6GlobalEBV_4dropB21_.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtBP_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryNtNtBT_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 4 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, %i.f
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ]
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.e, align 8
  br label %_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.f
  %i.p = mul i64 %i.b, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvXNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB8_5DrainppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryNtNtBc_5alloc6GlobalEBV_4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i8, ptr %i.a, align 8, !range !165, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.j
  ]

common.ret:                                       ; preds = %bb.q, %bb.n, %bb.m, %bb.j, %bb.i, %bb.f, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !range !165, !noundef !3
  switch i8 %i.d, label %common.ret [
    i8 0, label %bb.c
    i8 3, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8             ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.f = load ptr, ptr %.val2.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %common.ret, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #45
  br label %common.ret

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #45
  br label %common.resume

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.r)
  br label %common.ret

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i8, ptr %i.s, align 8, !range !165, !noundef !3
  switch i8 %i.t, label %common.ret [
    i8 0, label %bb.k
    i8 3, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2 = load ptr, ptr %i.u, align 8          ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 80
  %.val2.i3 = load ptr, ptr %i.v, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.w = load ptr, ptr %.val2.i3, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2) ]
  invoke void %i.w(ptr noundef nonnull %.val.i2)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i3, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.ret, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #45
  br label %common.ret

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2.i3, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #45
  br label %common.resume

bb.q:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ai)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !165, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.h
  ]

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.d = load ptr, ptr %.val2, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #45
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #45
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.p)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtBL_10LogSegment24create_checkpoint_streams_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1478, !nonnull !3, !noundef !3
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1478
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1485, !nonnull !3, !noundef !3
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1485
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit7

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit7 unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.f, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %eh.lpad-body, %bb.f ], [ %eh.lpad-body, %.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.l) #50
          to label %.body8 unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit7
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %.body8 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit7
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

.body8:                                           ; preds = %bb.l, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.u, %bb.l ], [ %i.o, %bb.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1492, !nonnull !3, !noundef !3
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1492
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %.body8
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.s

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1499, !nonnull !3, !noundef !3
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1499
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13 unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body8, %bb.k, %bb.p
  %.pn4 = phi { ptr, i32 } [ %i.ae, %bb.p ], [ %.pn2, %bb.k ], [ %.pn2, %.body8 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1500, !noundef !3 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ac = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !1503
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1508, !noundef !3 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit15, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13
  %i.ai = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !1511
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit15

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit15

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit15: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit13, %bb.q, %bb.r
  ret void

bb.s:                                             ; preds = %bb.o, %bb.k, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit, %bb.o
  resume { ptr, i32 } %.pn4
}
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %.body4 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !140, !alias.scope !1561, !noundef !3
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body4 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i3: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

.body4:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.h ], [ %i.h, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #50
          to label %common.resume unwind label %bb.l

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i3
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !140, !alias.scope !1564, !noundef !3
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit8, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i7 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body4, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.j ], [ %.pn, %.body4 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i7: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit8: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i7
  ret void

bb.l:                                             ; preds = %.body4, %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1567, !noundef !3 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.v
    i64 5, label %bb.ab
    i64 6, label %bb.ae
    i64 7, label %bb.ah
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 9, label %bb.ak
    i64 10, label %bb.an
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.ca, %bb.bt, %bb.bu, %bb.bn, %bb.bo, %bb.bh, %bb.bi, %bb.bb, %bb.bc, %.body58, %.body53, %.body48, %.body43, %.body38, %.body, %bb.au, %bb.av, %bb.z, %bb.aa, %bb.t, %bb.u, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.bt ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.ai, %bb.t ], [ %i.aw, %bb.z ], [ %i.cc, %bb.au ], [ %eh.lpad-body59, %.body58 ], [ %i.cu, %bb.bb ], [ %i.dl, %bb.bh ], [ %i.ec, %bb.bn ], [ %i.q, %bb.j ], [ %i.ai, %bb.u ], [ %i.aw, %bb.aa ], [ %i.cc, %bb.av ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body39, %.body38 ], [ %eh.lpad-body44, %.body43 ], [ %eh.lpad-body49, %.body48 ], [ %eh.lpad-body54, %.body53 ], [ %i.cu, %bb.bc ], [ %i.dl, %bb.bi ], [ %i.ec, %bb.bo ], [ %i.et, %bb.bu ], [ %i.fk, %bb.ca ], [ %i.fk, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.i, align 8           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.k = load ptr, ptr %.val28, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.k(ptr noundef nonnull %.val27)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #45
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit32 unwind label %bb.aq

bb.n:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29 = load ptr, ptr %i.z, align 8, !noundef !3 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30 = load ptr, ptr %i.aa, align 8          ; 6 uses
  %i.ab = icmp eq ptr %.val29, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30) ]
  %i.ac = load ptr, ptr %.val30, align 8, !invariant.load !3, !noalias !1568 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.ac(ptr noundef nonnull %.val29)
          to label %bb.r unwind label %bb.t, !noalias !1568

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !708, !invariant.load !3, !noalias !1568 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !349, !invariant.load !3, !noalias !1568
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #45, !noalias !1568
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !708, !invariant.load !3, !noalias !1568 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !349, !invariant.load !3, !noalias !1568
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #45, !noalias !1568
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.ao, align 8          ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load ptr, ptr %i.ap, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.aq = load ptr, ptr %.val26, align 8, !invariant.load !3 ; 2 uses
  %.not.i33 = icmp eq ptr %i.aq, null
  br i1 %.not.i33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.aq(ptr noundef nonnull %.val25)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #45
  br label %common.resume

bb.ab:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i37 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body38 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i37: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit40 unwind label %bb.ax

bb.ae:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i42 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body43 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i42: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit45 unwind label %bb.bd

bb.ah:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i47 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body48 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i47: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit50 unwind label %bb.bj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.by, %bb.bx, %bb.bs, %bb.br, %bb.bm, %bb.bl, %bb.bg, %bb.bf, %bb.ba, %bb.az, %bb.at, %bb.as, %bb.y, %bb.x, %bb.s, %bb.r, %bb.o, %bb.h, %bb.g, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.ak:                                            ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i52 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body53 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i52: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit55 unwind label %bb.bp

bb.an:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i57 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body58 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i57: ; preds = %bb.an
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit60 unwind label %bb.bv

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.aq ], [ %i.x, %bb.l ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.bt, align 8, !nonnull !3, !align !42, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val23, ptr nonnull %.val24) #50
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit32: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.bu, align 8          ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load ptr, ptr %i.bv, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.bw = load ptr, ptr %.val22, align 8, !invariant.load !3 ; 2 uses
  %.not.i61 = icmp eq ptr %i.bw, null
  br i1 %.not.i61, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.bw(ptr noundef nonnull %.val21)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit32
  %i.bx = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.au:                                            ; preds = %bb.ar
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cg = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #45
  br label %common.resume

bb.aw:                                            ; preds = %.body, %.body38, %.body43, %.body48, %.body53, %.body58
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i37
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %bb.ac, %bb.ax
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.cj, %bb.ax ], [ %i.bd, %bb.ac ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19 = load ptr, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.cl, align 8, !nonnull !3, !align !42, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val19, ptr nonnull %.val20) #50
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit40: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i37
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.cm, align 8          ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.cn, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.co = load ptr, ptr %.val18, align 8, !invariant.load !3 ; 2 uses
  %.not.i64 = icmp eq ptr %i.co, null
  br i1 %.not.i64, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.co(ptr noundef nonnull %.val17)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit40
  %i.cp = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bb:                                            ; preds = %bb.ay
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cy = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.cw, i64 noundef range(i64 1, 536870913) %i.cz) #45
  br label %common.resume

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i42
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %bb.af, %bb.bd
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.da, %bb.bd ], [ %i.bg, %bb.af ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.dc, align 8, !nonnull !3, !align !42, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val15, ptr nonnull %.val16) #50
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit45: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i42
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.dd, align 8          ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.de, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.df = load ptr, ptr %.val14, align 8, !invariant.load !3 ; 2 uses
  %.not.i67 = icmp eq ptr %i.df, null
  br i1 %.not.i67, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.df(ptr noundef nonnull %.val13)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit45
  %i.dg = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.dh, i64 noundef range(i64 1, 536870913) %i.dk) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bh:                                            ; preds = %bb.be
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dp = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #45
  br label %common.resume

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i47
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body48:                                          ; preds = %bb.ai, %bb.bj
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.dr, %bb.bj ], [ %i.bj, %bb.ai ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.dt, align 8, !nonnull !3, !align !42, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val11, ptr nonnull %.val12) #50
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit50: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i47
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.du, align 8           ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.dv, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.dw = load ptr, ptr %.val10, align 8, !invariant.load !3 ; 2 uses
  %.not.i70 = icmp eq ptr %i.dw, null
  br i1 %.not.i70, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  invoke void %i.dw(ptr noundef nonnull %.val9)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit50
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %bb.bk
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #45
  br label %common.resume

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i52
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %bb.al, %bb.bp
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.ei, %bb.bp ], [ %i.bm, %bb.al ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load ptr, ptr %i.ek, align 8, !nonnull !3, !align !42, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val7, ptr nonnull %.val8) #50
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit55: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i52
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.el, align 8           ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.em, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.en = load ptr, ptr %.val6, align 8, !invariant.load !3 ; 2 uses
  %.not.i73 = icmp eq ptr %i.en, null
  br i1 %.not.i73, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit55
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.en(ptr noundef nonnull %.val5)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit55
  %i.eo = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.er = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ep, i64 noundef range(i64 1, 536870913) %i.es) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bt:                                            ; preds = %bb.bq
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %common.resume, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ex = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ev, i64 noundef range(i64 1, 536870913) %i.ey) #45
  br label %common.resume

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i57
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body58

.body58:                                          ; preds = %bb.ao, %bb.bv
  %eh.lpad-body59 = phi { ptr, i32 } [ %i.ez, %bb.bv ], [ %i.bp, %bb.ao ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.fb, align 8, !nonnull !3, !align !42, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val3, ptr nonnull %.val4) #50
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit60: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i57
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.fc, align 8            ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.fd, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.fe = load ptr, ptr %.val2, align 8, !invariant.load !3 ; 2 uses
  %.not.i76 = icmp eq ptr %i.fe, null
  br i1 %.not.i76, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fe(ptr noundef nonnull %.val)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit60
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bz:                                            ; preds = %bb.bw
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #45
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !1571, !noundef !3
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 -9223372036854775744)
  switch i64 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.j
    i64 8, label %bb.o
    i64 9, label %bb.r
    i64 11, label %bb.u
    i64 12, label %bb.x
    i64 13, label %bb.aa
    i64 14, label %bb.ad
    i64 16, label %bb.ae
    i64 19, label %bb.af
    i64 20, label %bb.ai
    i64 21, label %bb.al
    i64 22, label %bb.aq
    i64 23, label %bb.at
    i64 24, label %bb.az
    i64 25, label %bb.df
    i64 27, label %bb.di
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit47.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit44.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit41.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit23.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit20.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit14.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i, %bb.bo, %bb.bn, %bb.bk, %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit8.i, %bb.bd, %bb.az, %bb.az, %bb.az, %bb.aw, %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit31, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit25, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit19, %bb.ae, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit9, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.f, align 16, !nonnull !3, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.g = load i64, ptr %.val5, align 8, !range !1578, !alias.scope !1579, !noundef !3
  switch i64 %i.g, label %bb.dl [
    i64 0, label %bb.g
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1579, !noundef !3 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.i, label %bb.dl, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1579, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #45, !noalias !1579
  br label %bb.dl

bb.i:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1579, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val.i.i.i.i)
          to label %bb.dl unwind label %.body

.body:                                            ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 40, i64 noundef 8) #45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #50
          to label %common.resume unwind label %bb.do

bb.j:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.o = load i64, ptr %.val4, align 8, !range !1578, !alias.scope !1586, !noundef !3
  switch i64 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit9 [
    i64 0, label %bb.k
    i64 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %.val2.i.i.i.i7 = load i64, ptr %i.p, align 8, !alias.scope !1586, !noundef !3 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i.i7, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit9, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val1.i.i.i.i8 = load ptr, ptr %i.r, align 8, !alias.scope !1586, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i8, i64 noundef range(i64 1, 0) %.val2.i.i.i.i7, i64 noundef 1) #45, !noalias !1586
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit9

bb.m:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val.i.i.i.i6 = load ptr, ptr %i.s, align 8, !alias.scope !1586, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val.i.i.i.i6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit9 unwind label %bb.n

common.resume:                                    ; preds = %.body, %bb.dm, %bb.dj, %bb.dg, %bb.bf, %bb.bl, %bb.bm, %bb.bq, %bb.bt, %bb.bw, %bb.bz, %bb.cc, %bb.cf, %bb.cl, %.body30.i, %.body36.i, %bb.cv, %bb.cy, %bb.dc, %.body.i, %bb.ax, %bb.ay, %bb.ar, %bb.aj, %bb.ag, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.ap, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.n ], [ %i.fa, %bb.dm ], [ %i.v, %bb.p ], [ %i.y, %bb.s ], [ %i.ab, %bb.v ], [ %i.ae, %bb.y ], [ %i.ah, %bb.ab ], [ %i.am, %bb.ag ], [ %i.ax, %bb.ap ], [ %i.ap, %bb.aj ], [ %i.az, %bb.ar ], [ %i.bj, %bb.ax ], [ %i.eo, %bb.dc ], [ %i.eu, %bb.dg ], [ %i.ex, %bb.dj ], [ %i.bj, %bb.ay ], [ %i.ee, %.body36.i ], [ %i.ca, %bb.bf ], [ %i.ck, %bb.bl ], [ %i.cs, %bb.bq ], [ %i.cv, %bb.bt ], [ %i.cy, %bb.bw ], [ %i.db, %bb.bz ], [ %i.de, %bb.cc ], [ %i.dp, %bb.cl ], [ %i.dh, %bb.cf ], [ %i.eh, %bb.cv ], [ %i.ek, %bb.cy ], [ %i.ck, %bb.bm ], [ %eh.lpad-body.i, %.body.i ], [ %i.dw, %.body30.i ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 40, i64 noundef 8) #45
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit9: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 40, i64 noundef 8) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15: ; preds = %bb.x
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.aa:                                            ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val2)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ae:                                            ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEBM_(ptr noalias noundef align 8 dereferenceable(72) %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.af:                                            ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit19 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit19: ; preds = %bb.af
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit21 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit21: ; preds = %bb.ai
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.al:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.ar, align 8, !nonnull !3, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.as = load i64, ptr %.val3, align 8, !range !1578, !alias.scope !1593, !noundef !3
  switch i64 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit25 [
    i64 0, label %bb.am
    i64 1, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.at = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %.val2.i.i.i.i23 = load i64, ptr %i.at, align 8, !alias.scope !1593, !noundef !3 ; 2 uses
  %i.au = icmp eq i64 %.val2.i.i.i.i23, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit25, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.av = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %.val1.i.i.i.i24 = load ptr, ptr %i.av, align 8, !alias.scope !1593, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i24, i64 noundef range(i64 1, 0) %.val2.i.i.i.i23, i64 noundef 1) #45, !noalias !1593
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit25

bb.ao:                                            ; preds = %bb.al
  %i.aw = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %.val.i.i.i.i22 = load ptr, ptr %i.aw, align 8, !alias.scope !1593, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val.i.i.i.i22)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit25 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 40, i64 noundef 8) #45
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit25: ; preds = %bb.al, %bb.am, %bb.an, %bb.ao
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 40, i64 noundef 8) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.aq:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27: ; preds = %bb.aq
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.at:                                            ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bb, align 8            ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.bc, align 16, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.bd = load ptr, ptr %.val1, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bd(ptr noundef nonnull %.val)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.be = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ax:                                            ; preds = %bb.au
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #45
  br label %common.resume

bb.az:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.bq = load i64, ptr %i.bp, align 8, !range !1597, !alias.scope !1594, !noundef !3 ; 3 uses
  %i.br = icmp ne i64 %i.bq, -9223372036854775786
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = add nsw i64 %i.bq, 9223372036854775790
  %i.bt = icmp ugt i64 %i.bq, -9223372036854775791
  %i.bu = select i1 %i.bt, i64 %i.bs, i64 4
  switch i64 %i.bu, label %bb.ba [
    i64 0, label %bb.bd
    i64 1, label %bb.be
    i64 2, label %bb.bh
    i64 3, label %bb.bn
    i64 4, label %bb.bo
    i64 5, label %bb.bp
    i64 6, label %bb.bs
    i64 7, label %bb.bv
    i64 8, label %bb.by
    i64 9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 10, label %bb.cb
    i64 11, label %bb.ce
    i64 12, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 13, label %bb.ch
    i64 14, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 15, label %bb.cm
    i64 16, label %bb.cq
    i64 17, label %bb.cu
  ]

bb.ba:                                            ; preds = %bb.az
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.body.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ba
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.de

bb.bd:                                            ; preds = %bb.az
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.be:                                            ; preds = %bb.az
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit8.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %common.resume unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit8.i: ; preds = %bb.be
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bh:                                            ; preds = %bb.az
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.cc, align 16, !alias.scope !1594 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.cd, align 8, !alias.scope !1594, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.ce = load ptr, ptr %.val2.i, align 8, !invariant.load !3, !noalias !1594 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ce(ptr noundef nonnull %.val.i)
          to label %bb.bj unwind label %bb.bl, !noalias !1594

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.cf = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !708, !invariant.load !3, !noalias !1594 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !349, !invariant.load !3, !noalias !1594
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.cg, i64 noundef range(i64 1, 536870913) %i.cj) #45, !noalias !1594
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bl:                                            ; preds = %bb.bi
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !708, !invariant.load !3, !noalias !1594 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %common.resume, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.co = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !349, !invariant.load !3, !noalias !1594
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.cm, i64 noundef range(i64 1, 536870913) %i.cp) #45, !noalias !1594
  br label %common.resume

bb.bn:                                            ; preds = %bb.az
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.cq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bo:                                            ; preds = %bb.az
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bp)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bp:                                            ; preds = %bb.az
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %common.resume unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11.i: ; preds = %bb.bp
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bs:                                            ; preds = %bb.az
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit14.i unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %common.resume unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit14.i: ; preds = %bb.bs
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cu)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bv:                                            ; preds = %bb.az
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %common.resume unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17.i: ; preds = %bb.bv
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.by:                                            ; preds = %bb.az
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit20.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %common.resume unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit20.i: ; preds = %bb.by
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.cb:                                            ; preds = %bb.az
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit23.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %common.resume unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit23.i: ; preds = %bb.cb
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ce:                                            ; preds = %bb.az
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26.i unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26.i: ; preds = %bb.ce
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ch:                                            ; preds = %bb.az
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load ptr, ptr %i.dj, align 16, !alias.scope !1594, !nonnull !3, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.dk = load i64, ptr %.val5.i, align 8, !range !1578, !alias.scope !1604, !noalias !1594, !noundef !3
  switch i64 %i.dk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.ci
    i64 1, label %bb.ck
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.dl = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !1604, !noalias !1594, !noundef !3 ; 2 uses
  %i.dm = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.dm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.dn = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !1604, !noalias !1594, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i.i, i64 noundef 1) #45, !noalias !1605
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ck:                                            ; preds = %bb.ch
  %i.do = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !1604, !noalias !1594, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val.i.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.cl, !noalias !1594

bb.cl:                                            ; preds = %bb.ck
  %i.dp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef 40, i64 noundef 8) #45, !noalias !1594
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef 40, i64 noundef 8) #45, !noalias !1594
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.cm:                                            ; preds = %bb.az
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4.i = load ptr, ptr %i.dq, align 8, !alias.scope !1594, !nonnull !3, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  %i.dr = load i64, ptr %.val4.i, align 8, !range !1578, !alias.scope !1612, !noalias !1594, !noundef !3
  switch i64 %i.dr, label %bb.cx [
    i64 0, label %bb.cn
    i64 1, label %bb.cp
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer14TokenizerErrorECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution6config13SessionConfigECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2204, !nonnull !3, !noundef !3
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2204
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1D_3AnyNtNtB4_6marker4SyncNtB2E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtNtCs4m0Tg8nAduX_20datafusion_execution6config8IdHasherEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1D_3AnyNtNtB4_6marker4SyncNtB2E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtNtCs4m0Tg8nAduX_20datafusion_execution6config8IdHasherEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2205, !noundef !3
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.k
    i64 5, label %bb.n
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.q, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.c, %bb.c ], [ %i.f, %bb.f ], [ %i.i, %bb.i ], [ %i.v, %bb.s ], [ %i.v, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit3: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit5 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.p = load ptr, ptr %.val1, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.p(ptr noundef nonnull %.val)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #45
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame11WindowFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %0, align 16, !range !1126, !alias.scope !2206, !noundef !3
  %cond.i = icmp eq i128 %i.a, 1
  br i1 %cond.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %.sink.split.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i128, ptr %i.d, align 16, !range !1126, !alias.scope !2209, !noundef !3
  %cond.i1 = icmp eq i128 %i.e, 1
  br i1 %cond.i1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit4, label %.sink.split.i2

.sink.split.i2:                                   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit4 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %.sink.split.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i128, ptr %i.g, align 16, !range !1126, !alias.scope !2212, !noundef !3
  %cond.i5 = icmp eq i128 %i.h, 1
  br i1 %cond.i5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit7, label %.sink.split.i6

.sink.split.i6:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit, %.sink.split.i6
  ret void

bb.c:                                             ; preds = %.sink.split.i2
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr12window_frame16WindowFrameBoundECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.b, %.sink.split.i2
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr15execution_props14ExecutionPropsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2221, !nonnull !3, !noundef !3
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2221
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2222, !noundef !3 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !2225
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2230, !noundef !3 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit4, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs14kWLkQVSKO_14deltalake_core.exit
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2233
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit4

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit4 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.c, %bb.e, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.d, %bb.e ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2238, !noundef !3
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1J_11VarProviderNtNtB4_6marker4SyncNtB3w_4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB32_4SendEL_EENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1J_11VarProviderNtNtB4_6marker4SyncNtB3w_4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5alias14AliasGeneratorEECs14kWLkQVSKO_14deltalake_core.exit, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2241, !noundef !3
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1J_11VarProviderNtNtB4_6marker4SyncNtB3w_4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit6, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB32_4SendEL_EENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 24, i64 noundef 16)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1J_11VarProviderNtNtB4_6marker4SyncNtB3w_4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1J_11VarProviderNtNtB4_6marker4SyncNtB3w_4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit6: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit4, %bb.j
  ret void

bb.k:                                             ; preds = %bb.h, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1J_11VarProviderNtNtB4_6marker4SyncNtB3w_4SendEL_EEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common6config13ConfigOptionsEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr3udf18ScalarFunctionArgsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e
end_hunk_7
begin_hunk_8_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.dc
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ge)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.df

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.df, %bb.dd
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gh, %bb.df ], [ %i.gf, %bb.dd ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  %i.gj = load ptr, ptr %i.gi, align 16, !alias.scope !2499, !noundef !3 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %common.resume, label %bb.dg

bb.dg:                                            ; preds = %.body.i
  %i.gl = atomicrmw sub ptr %i.gj, i64 1 release, align 8, !noalias !2502
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.dh, label %common.resume

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gi) #52
          to label %common.resume unwind label %bb.dk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %i.go = load ptr, ptr %i.gn, align 16, !alias.scope !2510, !noundef !3 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45, label %bb.di

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.gq = atomicrmw sub ptr %i.go, i64 1 release, align 8, !noalias !2511
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.dj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45

bb.dj:                                            ; preds = %bb.di
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gn) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45

bb.dk:                                            ; preds = %bb.dh
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.dl:                                            ; preds = %bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !2522, !nonnull !3, !noundef !3
  %i.gv = atomicrmw sub ptr %i.gu, i64 1 release, align 8, !noalias !2522
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.dm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit39

bb.dm:                                            ; preds = %bb.dl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gt) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit39 unwind label %bb.dz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45: ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dj, %bb.di, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4CaseECs14kWLkQVSKO_14deltalake_core.exit, %bb.p, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr5AliasECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit39, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, %bb.cp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr10InSubqueryECs14kWLkQVSKO_14deltalake_core.exit, %bb.cm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14WindowFunctionEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr17AggregateFunctionECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14ScalarFunctionECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr7TryCastECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4CastECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit84, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit24, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit76, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit68, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit60, %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit44
  ret void

bb.dn:                                            ; preds = %bb.s
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.gy) #50
          to label %common.resume unwind label %bb.dq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %bb.s
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.do

bb.do:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %common.resume unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45

bb.dq:                                            ; preds = %bb.dt, %bb.dx, %bb.dz, %bb.dn
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.dr:                                            ; preds = %bb.t
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %i.hf = load ptr, ptr %i.he, align 16, !alias.scope !2523, !noundef !3 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %common.resume, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.hh = atomicrmw sub ptr %i.hf, i64 1 release, align 8, !noalias !2526
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.dt, label %common.resume

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.he) #52
          to label %common.resume unwind label %bb.dq

bb.du:                                            ; preds = %bb.t
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  %i.hk = load ptr, ptr %i.hj, align 16, !alias.scope !2533, !noundef !3 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.hm = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !noalias !2536
  %i.hn = icmp eq i64 %i.hm, 1
  br i1 %i.hn, label %bb.dw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45

bb.dw:                                            ; preds = %bb.dv
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hj) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45

bb.dx:                                            ; preds = %bb.cr
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2 = load ptr, ptr %i.hp, align 16, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs14kWLkQVSKO_14deltalake_core(ptr %.val2) #50
          to label %common.resume unwind label %bb.dq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cq, %bb.cr
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.hq, align 16, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(352) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 352, i64 noundef 8) #45
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 352, i64 noundef 8) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45

bb.dz:                                            ; preds = %bb.dm
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) #50
          to label %common.resume unwind label %bb.dq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit39: ; preds = %bb.dl, %bb.dm
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit45
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data18FilteredEngineDataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #45
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0) #50
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.i:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !689, !noundef !3
  %switch1 = icmp slt i64 %i.a, -9223372036854775783
  br i1 %switch1, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !2543, !noundef !3 ; 6 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775745
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 42
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.j
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 5, label %bb.m
    i64 6, label %bb.p
    i64 7, label %bb.v
    i64 8, label %bb.w
    i64 9, label %bb.z
    i64 10, label %bb.aa
    i64 11, label %bb.ab
    i64 12, label %bb.ac
    i64 13, label %bb.as
    i64 14, label %bb.av
    i64 15, label %bb.ay
    i64 16, label %bb.bb
    i64 17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 18, label %bb.be
    i64 19, label %bb.bh
    i64 20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 21, label %bb.bk
    i64 22, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 23, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 24, label %bb.bp
    i64 25, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 26, label %bb.bs
    i64 27, label %bb.bv
    i64 28, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 30, label %bb.by
    i64 31, label %bb.cb
    i64 32, label %bb.ce
    i64 33, label %bb.ch
    i64 34, label %bb.ck
    i64 35, label %bb.cn
    i64 36, label %bb.cq
    i64 37, label %bb.ct
    i64 38, label %bb.cw
    i64 39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit
    i64 40, label %bb.dm
    i64 41, label %bb.dp
    i64 42, label %bb.ds
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.eg, %.body31, %.body63, %.body, %bb.du, %bb.dx, %bb.dq, %bb.cy, %bb.db, %bb.de, %bb.dh, %bb.dk, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.bw, %bb.bq, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.x, %bb.t, %bb.u, %bb.n, %bb.k, %bb.h, %bb.c, %bb.ec, %bb.bo, %bb.ar
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body64, %.body63 ], [ %i.g, %bb.c ], [ %i.o, %bb.h ], [ %i.r, %bb.k ], [ %i.u, %bb.n ], [ %i.ae, %bb.t ], [ %eh.lpad-body.i.i, %bb.ar ], [ %i.am, %bb.x ], [ %i.ce, %bb.at ], [ %i.ch, %bb.aw ], [ %i.ck, %bb.az ], [ %i.cn, %bb.bc ], [ %i.cq, %bb.bf ], [ %i.db, %bb.bo ], [ %i.ct, %bb.bi ], [ %i.dd, %bb.bq ], [ %i.dj, %bb.bw ], [ %i.dm, %bb.bz ], [ %i.dp, %bb.cc ], [ %i.ds, %bb.cf ], [ %i.dv, %bb.ci ], [ %i.dy, %bb.cl ], [ %i.eb, %bb.co ], [ %i.ee, %bb.cr ], [ %i.eh, %bb.cu ], [ %i.eu, %bb.dk ], [ %i.fa, %bb.dq ], [ %i.fp, %bb.ec ], [ %i.fk, %bb.dx ], [ %i.ae, %bb.u ], [ %i.es, %bb.dh ], [ %i.em, %bb.cy ], [ %i.eo, %bb.db ], [ %i.eq, %bb.de ], [ %i.fh, %bb.du ], [ %i.k, %.body ], [ %eh.lpad-body32, %.body31 ], [ %i.fx, %bb.eg ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2544)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2544, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.j)
          to label %bb.ea unwind label %.body, !noalias !2544, !inline_history !2547

.body:                                            ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 96, i64 noundef 16) #45, !noalias !2544
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load ptr, ptr %i.l, align 16, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val7) #50
          to label %common.resume unwind label %bb.ed

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit9 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit9: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ds, %bb.ds, %bb.s, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit73, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit68, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserialize18ParseIntervalErrorECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit57, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit54, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit51, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit48, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit45, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit42, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit39, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit36, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit25, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, %bb.ab, %bb.aa, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit9, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.m:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13: ; preds = %bb.m
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.w, align 8             ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.x, align 16, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.y = load ptr, ptr %.val2, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.y(ptr noundef nonnull %.val)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #45
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.ak, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val3)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.aa:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ab:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.ar, align 8, !nonnull !3, !noundef !3 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.as = getelementptr inbounds nuw i8, ptr %.val4, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  %i.at = load i16, ptr %i.as, align 8, !range !2554, !alias.scope !2555, !noundef !3
  %i.au = icmp eq i16 %i.at, 3
  br i1 %i.au, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.av = getelementptr inbounds nuw i8, ptr %.val4, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !2559, !noundef !3 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !2569, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.val4, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %.val4, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !2569, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !2569, !noundef !3
  invoke void %i.az(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bc, i64 noundef %i.be)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.af, !inline_history !2570

bb.af:                                            ; preds = %bb.ae
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4, i64 128
  %.val3.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2548, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %.val4, i64 136
  %.val4.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !2548
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val3.i.i.i, ptr %.val4.i.i.i) #50
          to label %.body.i.i.i unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bi = getelementptr inbounds nuw i8, ptr %.val4, i64 128
  %.val.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !2548, !noundef !3 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4, i64 136
  %.val2.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !2548 ; 6 uses
  %i.bk = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.bl = load ptr, ptr %.val2.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void %i.bl(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.body.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bt, i64 noundef range(i64 1, 536870913) %i.bw) #45
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.al, %bb.ak, %bb.af
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.br, %bb.ak ], [ %i.br, %bb.al ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val4) #50
          to label %bb.ar unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aj, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.bx = load i64, ptr %.val4, align 8, !range !140, !alias.scope !2571, !noundef !3
  %i.by = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val4)
          to label %bb.ar unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.aq

bb.ap:                                            ; preds = %.body.i.i.i, %bb.af
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cc, %bb.aq ], [ %i.bz, %bb.an ], [ %.pn.i.i.i, %.body.i.i.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 144, i64 noundef 8) #45
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 144, i64 noundef 8) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.as:                                            ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
end_hunk_8
begin_hunk_9_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer9OptimizerECs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtB4_6marker4SyncNtB2H_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtB4_6marker4SyncNtB2A_4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCscYNcALI69lp_20datafusion_optimizer9optimizer13OptimizerRuleNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB29_4SendEL_EENtNtNtB2b_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  %i.a = load i64, ptr %.0.val, align 8, !range !1578, !alias.scope !2647, !noundef !3
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val2.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2647, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2647, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i, i64 noundef 1) #45, !noalias !2647
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2647, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #45
  resume { ptr, i32 } %i.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #45
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !128, !noundef !3
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2648, !noundef !3 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.k
    i64 3, label %bb.n
    i64 4, label %bb.q
    i64 5, label %bb.t
    i64 6, label %bb.w
    i64 8, label %bb.z
    i64 9, label %bb.ac
    i64 10, label %bb.af
    i64 11, label %bb.ai
    i64 12, label %bb.al
    i64 13, label %bb.ao
    i64 14, label %bb.ar
    i64 15, label %bb.au
    i64 16, label %bb.ax
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit35, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit32, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.ay, %bb.av, %bb.as, %bb.ap, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.ay ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.x, %bb.l ], [ %i.aa, %bb.o ], [ %i.ad, %bb.r ], [ %i.ag, %bb.u ], [ %i.aj, %bb.x ], [ %i.am, %bb.aa ], [ %i.ap, %bb.ad ], [ %i.as, %bb.ag ], [ %i.av, %bb.aj ], [ %i.ba, %bb.ap ], [ %i.bd, %bb.as ], [ %i.bg, %bb.av ], [ %i.q, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.k = load ptr, ptr %.val1, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.k(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #45
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit5 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit7 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %bb.n
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit9 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit9: ; preds = %bb.q
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit11: ; preds = %bb.t
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit13: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit15: ; preds = %bb.z
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ac:                                            ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit17: ; preds = %bb.ac
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.af:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit19 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit19: ; preds = %bb.af
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit21 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
end_hunk_9
begin_hunk_10_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core:bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #50
          to label %.body23 unwind label %bb.ai

bb.ac:                                            ; preds = %bb.x
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit8.i.invoke.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body23 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.af:                                            ; preds = %bb.ab
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef 56, i64 noundef 8) #45, !noalias !2889
  %i.al = getelementptr inbounds nuw i8, ptr %.val8, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit8.i.invoke.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body23 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit8.i.invoke.i: ; preds = %bb.af, %bb.ac
  %i.ao = phi ptr [ %i.ad, %bb.ac ], [ %i.al, %bb.af ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.cn unwind label %bb.am

bb.ai:                                            ; preds = %.body5.i.i, %.body.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.aj:                                            ; preds = %bb.y
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef 104, i64 noundef 8) #45, !noalias !2889
  %i.aq = getelementptr inbounds nuw i8, ptr %.val8, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body23 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.cn unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit8.i.invoke.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.am, %bb.ak, %bb.ag, %bb.ad, %.body5.i.i, %bb.aa, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.am ], [ %i.ag, %bb.aa ], [ %i.ae, %.body.i.i ], [ %i.aj, %bb.ad ], [ %i.am, %bb.ag ], [ %i.ah, %.body5.i.i ], [ %i.ar, %bb.ak ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 40, i64 noundef 8) #45
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val12 = load ptr, ptr %i.au, align 8, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val12) #50
          to label %common.resume unwind label %bb.ci

bb.an:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit26: ; preds = %bb.an
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.aq:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.ay, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.az = getelementptr i8, ptr %.val9, i64 8
  %.val.i = load ptr, ptr %i.az, align 8, !noundef !3 ; 4 uses
  %i.ba = getelementptr i8, ptr %.val9, i64 16
  %.val1.i = load ptr, ptr %i.ba, align 8         ; 6 uses
  %i.bb = icmp eq ptr %.val.i, null
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.bc = load ptr, ptr %.val1.i, align 8, !invariant.load !3, !noalias !2892 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void %i.bc(ptr noundef nonnull %.val.i)
          to label %bb.at unwind label %bb.av, !noalias !2892

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !708, !invariant.load !3, !noalias !2892 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !349, !invariant.load !3, !noalias !2892
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #45, !noalias !2892
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit

bb.av:                                            ; preds = %bb.as
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !708, !invariant.load !3, !noalias !2892 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !349, !invariant.load !3, !noalias !2892
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #45, !noalias !2892
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef 24, i64 noundef 8) #45
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aq, %bb.at, %bb.au
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef 24, i64 noundef 8) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ay:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit28 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %bb.ay
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bb:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.br, align 8            ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.bs, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.bt = load ptr, ptr %.val2, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bt(ptr noundef nonnull %.val)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bf:                                            ; preds = %bb.bc
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %common.resume, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cd = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.cb, i64 noundef range(i64 1, 536870913) %i.ce) #45
  br label %common.resume

bb.bh:                                            ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %.body30 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit32 unwind label %bb.ct

bb.bk:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit35 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %common.resume unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %bb.bk
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.cl, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val10, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %.body.i.i36 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i36

.body.i.i36:                                      ; preds = %bb.bq, %bb.bo
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cp, %bb.bq ], [ %i.cn, %bb.bo ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.val10, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cq) #50
          to label %.body2.i.i unwind label %bb.bx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.val10, i64 64 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %.body2.i.i unwind label %bb.bt

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.body2.i.i:                                       ; preds = %bb.bu, %bb.br, %.body.i.i36
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i36 ], [ %i.cv, %bb.bu ], [ %i.cs, %bb.br ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.val10, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cu) #50
          to label %.body38 unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bs
  %i.cw = getelementptr inbounds nuw i8, ptr %.val10, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %.body38 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %bb.cv unwind label %bb.by

bb.bx:                                            ; preds = %.body2.i.i, %.body.i.i36
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %bb.by, %bb.bv, %.body2.i.i
  %eh.lpad-body.i37 = phi { ptr, i32 } [ %i.da, %bb.by ], [ %i.cx, %bb.bv ], [ %.pn.i.i, %.body2.i.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef 120, i64 noundef 8) #45
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.db) #50
          to label %common.resume unwind label %bb.ci

bb.bz:                                            ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %common.resume unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bz
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dc)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.cc:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !2901, !nonnull !3, !noundef !3
  %i.dh = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !noalias !2901
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.df) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ce:                                            ; preds = %bb.e
end_hunk_10
begin_hunk_11_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayEBM_:bb.a

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderEBM_(ptr noalias noundef nonnull align 8 dereferenceable(1704) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1680) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1680
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlannerEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3114, !noundef !3 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775788
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit
    i64 1, label %bb.e
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit
    i64 5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit
    i64 6, label %bb.aa
    i64 7, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit: ; preds = %bb.ak, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i5, %bb.ad, %bb.x, %bb.w, %bb.r, %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core.exit, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, %bb.a, %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  %i.j = load i64, ptr %.val4, align 8, !range !1578, !alias.scope !3121, !noundef !3
  switch i64 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.f
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !3121, !noundef !3 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !3121, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #45, !noalias !3121
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3121, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.i

common.resume:                                    ; preds = %.body, %bb.al, %bb.am, %bb.af, %bb.ab, %bb.m, %bb.s, %bb.t, %bb.y, %bb.z, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.br, %bb.al ], [ %i.at, %bb.y ], [ %i.ba, %bb.ab ], [ %i.be, %bb.af ], [ %i.af, %bb.s ], [ %i.v, %bb.m ], [ %i.af, %bb.t ], [ %i.at, %bb.z ], [ %i.br, %bb.am ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 40, i64 noundef 8) #45
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 40, i64 noundef 8) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit

bb.j:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit

bb.k:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.q = load i64, ptr %i.p, align 8, !range !3125, !alias.scope !3122, !noundef !3 ; 3 uses
  %i.r = icmp ne i64 %i.q, -9223372036854775803
  tail call void @llvm.assume(i1 %i.r)
  %i.s = xor i64 %i.q, -9223372036854775808
  %i.t = icmp slt i64 %i.q, 0
  %i.u = select i1 %i.t, i64 %i.s, i64 5
  switch i64 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit [
    i64 5, label %bb.l
    i64 8, label %bb.o
    i64 9, label %bb.u
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit

bb.o:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.x, align 8, !alias.scope !3122 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i = load ptr, ptr %i.y, align 8, !alias.scope !3122, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.z = load ptr, ptr %.val3.i, align 8, !invariant.load !3, !noalias !3122 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke void %i.z(ptr noundef nonnull %.val2.i)
          to label %bb.q unwind label %bb.s, !noalias !3122

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !708, !invariant.load !3, !noalias !3122 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !349, !invariant.load !3, !noalias !3122
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #45, !noalias !3122
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit

bb.s:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !708, !invariant.load !3, !noalias !3122 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !349, !invariant.load !3, !noalias !3122
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #45, !noalias !3122
  br label %common.resume

bb.u:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.al, align 8, !alias.scope !3122 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.am, align 8, !alias.scope !3122, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.an = load ptr, ptr %.val1.i, align 8, !invariant.load !3, !noalias !3122 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.an, null
  br i1 %.not.i4.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.an(ptr noundef nonnull %.val.i)
          to label %bb.w unwind label %bb.y, !noalias !3122

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !708, !invariant.load !3, !noalias !3122 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !349, !invariant.load !3, !noalias !3122
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #45, !noalias !3122
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit

bb.y:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !708, !invariant.load !3, !noalias !3122 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !349, !invariant.load !3, !noalias !3122
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #45, !noalias !3122
  br label %common.resume

bb.aa:                                            ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit

bb.ad:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !689, !alias.scope !3126, !noundef !3
  %switch1.i = icmp slt i64 %i.bd, -9223372036854775783
  br i1 %switch1.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i5 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i5: ; preds = %bb.ae
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.ah ], [ %i.g, %bb.c ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.bi, align 8, !nonnull !3, !align !42, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val2, ptr nonnull %.val3) #50
          to label %common.resume unwind label %bb.an

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.bk, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.bl = load ptr, ptr %.val1, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bl(ptr noundef nonnull %.val)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorEBO_.exit

bb.al:                                            ; preds = %bb.ai
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bt, i64 noundef range(i64 1, 536870913) %i.bw) #45
  br label %common.resume

bb.an:                                            ; preds = %.body
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEBM_(ptr noalias noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3129, !noundef !3 ; 3 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.i
    i64 1, label %bb.ah
    i64 2, label %bb.aq
    i64 3, label %bb.ar
    i64 4, label %bb.as
    i64 5, label %bb.at
    i64 6, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.f, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #50
          to label %common.resume unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14DomainMetadataEBO_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bs, %bb.au, %.body.i5, %bb.an, %.body29.i, %.body.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.br, %bb.au ], [ %eh.lpad-body.i, %.body.i ], [ %.pn8.i, %.body29.i ], [ %eh.lpad-body.i6, %.body.i5 ], [ %i.k, %bb.f ], [ %i.bl, %bb.an ], [ %i.di, %bb.bs ], [ %.pn8.i16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.body.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14DomainMetadataEBO_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i3 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i1 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i3: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i4 unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i3
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1

.body.i1:                                         ; preds = %bb.l, %bb.j
  %eh.lpad-body.i2 = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.o, %bb.j ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #50
          to label %.body10.i unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !range !140, !alias.scope !3130, !noundef !3
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i4
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body10.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.p

.body10.i:                                        ; preds = %bb.p, %bb.n, %.body.i1
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i2, %.body.i1 ], [ %i.y, %bb.p ], [ %i.v, %bb.n ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #50
          to label %.body14.i unwind label %bb.ag

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !140, !alias.scope !3135, !noundef !3
  %i.ab = icmp eq i64 %i.aa, -9223372036854775808
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i13.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body14.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i13.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit17.i unwind label %bb.t
end_hunk_11
begin_hunk_12_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEBM_:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit24.i: ; preds = %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit21.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.cw = load i64, ptr %i.cv, align 8, !range !140, !alias.scope !3163, !noundef !3
  %i.cx = icmp eq i64 %i.cw, -9223372036854775808
  br i1 %i.cx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit30.i, label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit24.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i26.i unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %.body27.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i26.i: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit30.i unwind label %bb.bp

.body27.i:                                        ; preds = %bb.bp, %bb.bn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.pn6.i15 = phi { ptr, i32 } [ %.pn4.i14, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.db, %bb.bp ], [ %i.cy, %bb.bn ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.da)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bu

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i26.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit30.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i26.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit24.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit33.i unwind label %bb.bq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bq, %.body27.i
  %.pn8.i16 = phi { ptr, i32 } [ %i.de, %bb.bq ], [ %.pn6.i15, %.body27.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd) #50
          to label %common.resume unwind label %bb.bu

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit30.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit33.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit30.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.dg = load i64, ptr %i.df, align 8, !range !140, !alias.scope !3166, !noundef !3
  %i.dh = icmp eq i64 %i.dg, -9223372036854775808
  br i1 %i.dh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit, label %bb.br

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit33.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i35.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i35.i: ; preds = %bb.br
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i, %.body27.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bi, %.body12.i, %.body.i10
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i35.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit33.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECs14kWLkQVSKO_14deltalake_core.exit.i2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEBO_.exit, %bb.as, %bb.ar, %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8MetadataECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions14DomainMetadataEBO_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3178)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3181, !nonnull !3, !noundef !3
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !3181
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3182)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3182, !noundef !3 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !3185
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3196, !noundef !3 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !3199
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit
    i64 1, label %bb.c
  ], !prof !3210

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !3, !align !42, !noundef !3 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !708, !invariant.load !3 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !349, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #45
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !140, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(328) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !709, !noundef !3
  %i.b = icmp samesign ugt i64 %i.a, 68
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(328) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl18AlterRoleOperationECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3211, !noundef !3 ; 3 uses
  %i.b = icmp ne i64 %i.a, 75
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -71
  %i.d = icmp samesign ugt i64 %i.a, 70
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
  %i.g = load i64, ptr %i.f, align 8, !range !140, !alias.scope !3212, !noundef !3
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ac

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs14kWLkQVSKO_14deltalake_core.exit, %.body, %bb.z, %bb.p, %bb.m, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.l, %bb.g ], [ %i.o, %bb.j ], [ %i.r, %bb.m ], [ %i.u, %bb.p ], [ %i.aj, %bb.z ], [ %eh.lpad-body, %.body ], [ %i.ar, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit5 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit5: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit7 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs14kWLkQVSKO_14deltalake_core.exit7: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_12
begin_hunk_13_@_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBW_6HasherEL_ECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.az, label %bb.o, label %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %_RINvXscZ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5FetchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBW_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8157)
  %i.bb = add nsw i64 %i.ay, -4
  %i.bc = icmp samesign ugt i64 %i.ay, 3
  %i.bd = select i1 %i.bc, i64 %i.bb, i64 2       ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bd), !noalias !8157
  switch i64 %i.bd, label %bb.p [
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 0, label %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load i8, ptr %i.be, align 8, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  %i.bg = zext nneg i8 %i.bf to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bg), !noalias !8157
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !140, !alias.scope !8157, !noalias !8160, !noundef !3
  %i.bj = icmp ne i64 %i.bi, -9223372036854775808 ; 2 uses
  %i.bk = zext i1 %i.bj to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bk), !noalias !8157
  br i1 %i.bj, label %bb.u, label %bb.v

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8162)
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ay), !noalias !8165
  switch i64 %i.ay, label %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.s
    i64 3, label %bb.t
  ]

.sink.split.i.i:                                  ; preds = %bb.t, %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !8165, !noalias !8166, !nonnull !3, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !8165, !noalias !8166, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo), !noalias !8165
  br label %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !140, !alias.scope !8165, !noalias !8166, !noundef !3
  %i.br = icmp ne i64 %i.bq, -9223372036854775808 ; 2 uses
  %i.bs = zext i1 %i.br to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bs), !noalias !8165
  br i1 %i.br, label %.sink.split.i.i, label %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !140, !alias.scope !8165, !noalias !8166, !noundef !3
  %i.bv = icmp ne i64 %i.bu, -9223372036854775808 ; 2 uses
  %i.bw = zext i1 %i.bv to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bw), !noalias !8165
  br i1 %i.bv, label %.sink.split.i.i, label %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t, %bb.s, %.sink.split.i.i, %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.by), !noalias !8157
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ca = load i8, ptr %i.bz, align 1, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.ca), !noalias !8157
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !range !140, !alias.scope !8157, !noalias !8160, !noundef !3
  %i.cd = icmp ne i64 %i.cc, -9223372036854775808 ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ce), !noalias !8157
  br i1 %i.cd, label %bb.w, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v, %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sink.i = phi i64 [ 34, %bb.v ], [ 58, %bb.w ], [ 58, %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.cg = load i8, ptr %i.cf, align 2, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.cg), !noalias !8157
  br label %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !8157, !noalias !8160, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef %i.ck), !noalias !8157
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.cm = load i8, ptr %i.cl, align 1, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.cm), !noalias !8157
  br label %.sink.split.i

bb.w:                                             ; preds = %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !8157, !noalias !8160, !nonnull !3, !noundef !3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cq), !noalias !8157
  br label %.sink.split.i

_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.sink.split.i, %bb.o, %_RINvXscZ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5FetchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBW_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.cs = load i64, ptr %i.cr, align 8, !range !140, !noundef !3
  %i.ct = icmp ne i64 %i.cs, -9223372036854775808 ; 2 uses
  %i.cu = zext i1 %i.ct to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.cu)
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !3, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.cy)
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBR_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cw, i64 noundef %i.cy, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !range !816, !noundef !3 ; 2 uses
  %i.db = icmp ne i64 %i.da, -9223372036854775807 ; 2 uses
  %i.dc = zext i1 %i.db to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.dc)
  br i1 %i.db, label %bb.z, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB14_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp eq i64 %i.da, -9223372036854775808 ; 2 uses
  %i.de = zext i1 %i.dd to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.de), !noalias !8168
  br i1 %i.dd, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB14_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBN_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cz, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB14_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB14_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aa, %bb.z, %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !3, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.di = load i64, ptr %i.dh, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.di)
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dg, i64 noundef %i.di, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs21_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_17GeometricTypeKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(i8 %.0.val, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8174)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !alias.scope !8177, !noundef !3 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %.0.val to i128
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw nsw i128 %i.d, %i.e
  %i.g = load i128, ptr %0, align 16, !alias.scope !8177, !noundef !3
  %i.h = or i128 %i.g, %i.f
  %i.i = add nuw i8 %i.b, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !alias.scope !8177, !noundef !3 ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8177, !noundef !3
  %i.o = xor i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !alias.scope !8177, !nonnull !3, !align !42, !noundef !3
  %i.r = load i64, ptr %i.q, align 8, !noalias !8177, !noundef !3
  %i.s = zext i64 %i.o to i128
  %i.t = zext i64 %i.r to i128
  %i.u = xor i128 %i.l, %i.t
  %i.v = mul nuw i128 %i.u, %i.s                  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  store i64 %i.y, ptr %i.m, align 8, !alias.scope !8177
  %i.z = zext i8 %.0.val to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.z, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ]
  store i128 %.sink, ptr %0, align 16, !alias.scope !8177
  store i8 %storemerge.i.i, ptr %i.a, align 16, !alias.scope !8177
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs29_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_19AlterIndexOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8190)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !alias.scope !8193, !noundef !3 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i64 %.16.val to i128
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw i128 %i.d, %i.e
  %i.g = load i128, ptr %0, align 16, !alias.scope !8193, !noundef !3
  %i.h = or i128 %i.g, %i.f
  %i.i = add nuw i8 %i.b, 64
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !alias.scope !8193, !noundef !3 ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8193, !noundef !3
  %i.o = xor i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !alias.scope !8193, !nonnull !3, !align !42, !noundef !3
  %i.r = load i64, ptr %i.q, align 8, !noalias !8193, !noundef !3
  %i.s = zext i64 %i.o to i128
  %i.t = zext i64 %i.r to i128
  %i.u = xor i128 %i.l, %i.t
  %i.v = mul nuw i128 %i.u, %i.s                  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  store i64 %i.y, ptr %i.m, align 8, !alias.scope !8193
  %i.z = zext i64 %.16.val to i128
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi i128 [ %i.z, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i.i.i.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ]
  store i128 %.sink.i.i.i, ptr %0, align 16, !alias.scope !8193
  store i8 %storemerge.i.i.i.i.i, ptr %i.a, align 16, !alias.scope !8193
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias noundef nonnull align 16 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs29_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_19AlterIndexOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8194
  store i64 %.16.val, ptr %i.a, align 8, !noalias !8194
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8194
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.b = load i64, ptr %i.a, align 8, !range !816, !noundef !3 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775807   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8206)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 55 uses
  %i.e = load i8, ptr %i.d, align 16, !alias.scope !8209, !noundef !3 ; 4 uses
  %i.f = icmp ugt i8 %i.e, 64
  br i1 %i.f, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18: ; preds = %bb.a
  %i.g = zext i1 %i.c to i128
  %i.h = zext nneg i8 %i.e to i128
  %i.i = shl nuw nsw i128 %i.g, %i.h
  %i.j = load i128, ptr %1, align 16, !alias.scope !8209, !noundef !3
  %i.k = or i128 %i.j, %i.i                       ; 6 uses
  store i128 %i.k, ptr %1, align 16, !alias.scope !8209
  %i.l = add nuw i8 %i.e, 64                      ; 2 uses
  store i8 %i.l, ptr %i.d, align 16, !alias.scope !8209
  br i1 %i.c, label %bb.b, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread: ; preds = %bb.a
  %i.m = load i128, ptr %1, align 16, !alias.scope !8209, !noundef !3 ; 2 uses
  %i.n = trunc i128 %i.m to i64
  %i.o = lshr i128 %i.m, 64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !8209, !noundef !3
  %i.r = xor i64 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 16, !alias.scope !8209, !nonnull !3, !align !42, !noundef !3
  %i.u = load i64, ptr %i.t, align 8, !noalias !8209, !noundef !3
  %i.v = zext i64 %i.r to i128
  %i.w = zext i64 %i.u to i128
  %i.x = xor i128 %i.o, %i.w
  %i.y = mul nuw i128 %i.x, %i.v                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64
  store i64 %i.ab, ptr %i.p, align 8, !alias.scope !8209
  br i1 %i.c, label %.thread, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread
  %.not156 = icmp eq i64 %i.b, -9223372036854775808 ; 2 uses
  %i.ac = select i1 %.not156, i128 1, i128 18446744073709551617 ; 3 uses
  store i128 %i.ac, ptr %1, align 16, !alias.scope !8210, !noalias !8217
  store i8 -128, ptr %i.d, align 16, !alias.scope !8210, !noalias !8217
  br i1 %.not156, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread66, label %bb.d

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8219)
  %.not155 = icmp eq i64 %i.b, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8221)
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %bb.b
  %i.ad = select i1 %.not155, i128 0, i128 18446744073709551616
  %i.ae = or i128 %i.k, %i.ad                     ; 3 uses
  store i128 %i.ae, ptr %1, align 16, !alias.scope !8210, !noalias !8217
  store i8 -128, ptr %i.d, align 16, !alias.scope !8210, !noalias !8217
  %extract.t = trunc i128 %i.k to i64
  br i1 %.not155, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread66, label %bb.d

_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread66: ; preds = %.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.af = phi i128 [ %i.ac, %.thread ], [ %i.ae, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !1677, !noundef !3 ; 2 uses
  %i.ai = icmp ne i64 %i.ah, 71                   ; 2 uses
  %i.aj = zext i1 %i.ai to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i: ; preds = %bb.b
  %i.ak = trunc i128 %i.k to i64
  %i.al = lshr i128 %i.k, 64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !8210, !noalias !8217, !noundef !3
  %i.ao = xor i64 %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 16, !alias.scope !8210, !noalias !8217, !nonnull !3, !align !42, !noundef !3
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !8222, !noundef !3
  %i.as = zext i64 %i.ao to i128
  %i.at = zext i64 %i.ar to i128
  %i.au = xor i128 %i.al, %i.at
  %i.av = mul nuw i128 %i.au, %i.as               ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = xor i128 %i.aw, %i.av
  %i.ay = trunc i128 %i.ax to i64
  store i64 %i.ay, ptr %i.am, align 8, !alias.scope !8210, !noalias !8217
  br i1 %.not155, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !8217, !noalias !8219, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !8217, !noalias !8219, !noundef !3 ; 2 uses
  %i.bd = zext i64 %i.bc to i128
  %i.be = shl nuw i128 %i.bd, 64
  %i.bf = or disjoint i128 %i.be, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.d:                                             ; preds = %.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.bg = phi i128 [ %i.ac, %.thread ], [ %i.ae, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %.off0 = phi i64 [ 1, %.thread ], [ %extract.t, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !8217, !noalias !8219, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !8217, !noalias !8219, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8229)
  %i.bl = lshr i128 %i.bg, 64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !8232, !noalias !8217, !noundef !3
  %i.bo = xor i64 %i.bn, %.off0
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 16, !alias.scope !8232, !noalias !8217, !nonnull !3, !align !42, !noundef !3
  %i.br = load i64, ptr %i.bq, align 8, !noalias !8233, !noundef !3
  %i.bs = zext i64 %i.bo to i128
  %i.bt = zext i64 %i.br to i128
  %i.bu = xor i128 %i.bl, %i.bt
  %i.bv = mul nuw i128 %i.bu, %i.bs               ; 2 uses
  %i.bw = lshr i128 %i.bv, 64
  %i.bx = xor i128 %i.bw, %i.bv
  %i.by = trunc i128 %i.bx to i64
  store i64 %i.by, ptr %i.bm, align 8, !alias.scope !8232, !noalias !8217
  %i.bz = zext i64 %i.bk to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d, %bb.c
  %i.ca = phi i64 [ %i.bk, %bb.d ], [ %i.bc, %bb.c ]
  %i.cb = phi ptr [ %i.bi, %bb.d ], [ %i.ba, %bb.c ]
  %.sink.i.i = phi i128 [ %i.bz, %bb.d ], [ %i.bf, %bb.c ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.d ], [ -128, %bb.c ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !8232, !noalias !8217
  store i8 %storemerge.i.i.i.i, ptr %i.d, align 16, !alias.scope !8232, !noalias !8217
end_hunk_13
begin_hunk_14_@_RINvXs3r_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_15TableConstraintNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB15_6HasherEL_ECs14kWLkQVSKO_14deltalake_core:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs3t_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_15TableConstraintNtNtB9_7visitor8VisitMut5visitINtB15_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1Y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB35_(ptr noalias noundef align 8 dereferenceable(248) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !128, !noundef !3
  switch i8 %i.a, label %default.unreachable119 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable119:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i64, ptr %i.b, align 8, !range !140, !alias.scope !9953, !noalias !9956, !noundef !3
  %.not.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit: ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.l = load i64, ptr %i.h, align 8, !range !140, !alias.scope !9958, !noalias !9961, !noundef !3
  %.not.i75 = icmp eq i64 %i.l, -9223372036854775808
  br i1 %.not.i75, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77: ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.m, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i64, ptr %i.n, align 8, !range !140, !alias.scope !9963, !noalias !9966, !noundef !3
  %.not.i78 = icmp eq i64 %i.r, -9223372036854775808
  br i1 %.not.i78, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80: ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.s, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !140, !alias.scope !9968, !noalias !9971, !noundef !3
  %.not.i81 = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not.i81, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83: ; preds = %bb.e
  %i.v = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.v, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !140, !alias.scope !9973, !noalias !9976, !noundef !3
  %.not.i84 = icmp eq i64 %i.aa, -9223372036854775808
  br i1 %.not.i84, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86: ; preds = %bb.f
  %i.ab = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ab, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ac, align 8, !range !140, !alias.scope !9978, !noalias !9981, !noundef !3
  %.not.i87 = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not.i87, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89: ; preds = %bb.g
  %i.af = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.af, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread: ; preds = %bb.b, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !140, !alias.scope !9983, !noalias !9986, !noundef !3
  %.not.i90 = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not.i90, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread
  %i.ai = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ai, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92
  %i.aj = load i64, ptr %i.c, align 8, !range !891, !alias.scope !9988, !noalias !9991, !noundef !3
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread
  %i.al = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.al, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit
  %i.am = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexColumnENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread
  %i.an = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexOptionENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread, %bb.l, %bb.j, %bb.h, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89, %bb.m, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83, %bb.k, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit
  %.sroa.0.0 = phi i1 [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit ], [ %i.bj, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83 ], [ %i.an, %bb.h ], [ %i.bb, %bb.l ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread ], [ %i.bd, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread ], [ %i.av, %bb.j ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread ], [ true, %bb.k ], [ %i.bi, %bb.m ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86 ]
  ret i1 %.sroa.0.0

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread: ; preds = %bb.c, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !140, !alias.scope !9993, !noalias !9996, !noundef !3
  %.not.i94 = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not.i94, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread
  %i.aq = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.aq, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96
  %i.ar = load i64, ptr %i.i, align 8, !range !891, !alias.scope !9998, !noalias !10001, !noundef !3
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread
  %i.at = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.at, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98
  %i.au = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexColumnENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.au, label %bb.i, label %bb.j

bb.j:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread
  %i.av = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexOptionENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread: ; preds = %bb.d, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !140, !alias.scope !10003, !noalias !10006, !noundef !3
  %.not.i99 = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %.not.i99, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread
  %i.ay = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ay, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101
  %i.az = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2d_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3k_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.az, label %bb.i, label %bb.k

bb.k:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread
  %i.ba = tail call noundef zeroext i1 @_RINvXs45_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtB7_7visitor8VisitMut5visitINtBU_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1M_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2T_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ba, label %bb.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2d_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3k_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread: ; preds = %bb.e, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = tail call noundef zeroext i1 @_RINvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread: ; preds = %bb.f, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86
  %i.be = load i64, ptr %i.w, align 8, !range !891, !alias.scope !10008, !noalias !10011, !noundef !3
  %i.bf = icmp sgt i64 %i.be, -1
  br i1 %i.bf, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread
  %i.bg = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.bg, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103
  %i.bh = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexColumnENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.bh, label %bb.i, label %bb.m

bb.m:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread
  %i.bi = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexOptionENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread: ; preds = %bb.g, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89
  %i.bj = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexColumnENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10022)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !alias.scope !10025, !noundef !3 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i64 %.16.val to i128
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw i128 %i.d, %i.e
  %i.g = load i128, ptr %0, align 16, !alias.scope !10025, !noundef !3
  %i.h = or i128 %i.g, %i.f
  %i.i = add nuw i8 %i.b, 64
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !alias.scope !10025, !noundef !3 ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !10025, !noundef !3
  %i.o = xor i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !alias.scope !10025, !nonnull !3, !align !42, !noundef !3
  %i.r = load i64, ptr %i.q, align 8, !noalias !10025, !noundef !3
  %i.s = zext i64 %i.o to i128
  %i.t = zext i64 %i.r to i128
  %i.u = xor i128 %i.l, %i.t
  %i.v = mul nuw i128 %i.u, %i.s                  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64
  store i64 %i.y, ptr %i.m, align 8, !alias.scope !10025
  %i.z = zext i64 %.16.val to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi i128 [ %i.z, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ]
  store i128 %.sink.i.i, ptr %0, align 16, !alias.scope !10025
  store i8 %storemerge.i.i.i.i, ptr %i.a, align 16, !alias.scope !10025
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias noundef nonnull align 16 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10026
  store i64 %.16.val, ptr %i.a, align 8, !noalias !10026
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10026
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs4B_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13ViewColumnDefNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !942, !noundef !3
  %i.d = icmp ne i8 %i.c, 116                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10036)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.f = load i8, ptr %i.e, align 16, !alias.scope !10039, !noundef !3 ; 3 uses
  %i.g = icmp ugt i8 %i.f, 64
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i1 %i.d to i128
  %i.i = zext nneg i8 %i.f to i128
  %i.j = shl nuw nsw i128 %i.h, %i.i
  %i.k = load i128, ptr %1, align 16, !alias.scope !10039, !noundef !3
  %i.l = or i128 %i.k, %i.j
  %i.m = add nuw i8 %i.f, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.c:                                             ; preds = %bb.a
  %i.n = load i128, ptr %1, align 16, !alias.scope !10039, !noundef !3 ; 2 uses
  %i.o = trunc i128 %i.n to i64
  %i.p = lshr i128 %i.n, 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10039, !noundef !3
  %i.s = xor i64 %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !alias.scope !10039, !nonnull !3, !align !42, !noundef !3
  %i.v = load i64, ptr %i.u, align 8, !noalias !10039, !noundef !3
  %i.w = zext i64 %i.s to i128
  %i.x = zext i64 %i.v to i128
  %i.y = xor i128 %i.p, %i.x
  %i.z = mul nuw i128 %i.y, %i.w                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %i.ac = trunc i128 %i.ab to i64
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !10039
  %i.ad = zext i1 %i.d to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.ad, %bb.c ], [ %i.l, %bb.b ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  store i128 %.sink, ptr %1, align 16, !alias.scope !10039
  store i8 %storemerge.i.i1, ptr %i.e, align 16, !alias.scope !10039
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, ptr noalias noundef align 16 dereferenceable(48) %1) #55
  %.pr = load i8, ptr %i.e, align 16, !alias.scope !10040
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.ae = phi i8 [ %.pr, %bb.d ], [ %storemerge.i.i1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ] ; 4 uses
  %i.af = load i64, ptr %0, align 8, !range !285, !noundef !3 ; 4 uses
  %i.ag = icmp ne i64 %i.af, 2                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10046)
  %i.ah = icmp ugt i8 %i.ae, 64
  br i1 %i.ah, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.e
  %i.ai = zext i1 %i.ag to i128
  %i.aj = zext nneg i8 %i.ae to i128
  %i.ak = shl nuw nsw i128 %i.ai, %i.aj
  %i.al = load i128, ptr %1, align 16, !alias.scope !10040, !noundef !3
  %i.am = or i128 %i.al, %i.ak                    ; 4 uses
  store i128 %i.am, ptr %1, align 16, !alias.scope !10040
  %i.an = add nuw i8 %i.ae, 64
  store i8 %i.an, ptr %i.e, align 16, !alias.scope !10040
  br i1 %i.ag, label %bb.f, label %_RINvXs4L_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13ColumnOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread: ; preds = %bb.e
  %i.ao = load i128, ptr %1, align 16, !alias.scope !10040, !noundef !3 ; 2 uses
  %i.ap = trunc i128 %i.ao to i64
  %i.aq = lshr i128 %i.ao, 64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !10040, !noundef !3
  %i.at = xor i64 %i.as, %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 16, !alias.scope !10040, !nonnull !3, !align !42, !noundef !3
  %i.aw = load i64, ptr %i.av, align 8, !noalias !10040, !noundef !3
  %i.ax = zext i64 %i.at to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = xor i128 %i.aq, %i.ay
  %i.ba = mul nuw i128 %i.az, %i.ax               ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = xor i128 %i.bb, %i.ba
  %i.bd = trunc i128 %i.bc to i64
  store i64 %i.bd, ptr %i.ar, align 8, !alias.scope !10040
  %i.be = zext i1 %i.ag to i128
  store i128 %i.be, ptr %1, align 16, !alias.scope !10040
  store i8 64, ptr %i.e, align 16, !alias.scope !10040
  br i1 %i.ag, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RINvXs4L_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13ColumnOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10055)
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, %bb.f
  %i.bf = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread ], [ %i.am, %bb.f ] ; 4 uses
  %i.bg = zext nneg i64 %i.af to i128
  %i.bh = shl nuw nsw i128 %i.bg, 64
  %i.bi = or i128 %i.bf, %i.bh                    ; 2 uses
  store i128 %i.bi, ptr %1, align 16, !alias.scope !10058, !noalias !10047
  store i8 -128, ptr %i.e, align 16, !alias.scope !10058, !noalias !10047
  %i.bj = trunc nuw i64 %i.af to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !10047, !noalias !10050, !nonnull !3, !noundef !3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !10047, !noalias !10050, !noundef !3 ; 4 uses
  br i1 %i.bj, label %bb.h, label %bb.j

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread: ; preds = %bb.f
  %i.bo = trunc i128 %i.am to i64
  %i.bp = lshr i128 %i.am, 64
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !10058, !noalias !10047, !noundef !3
  %i.bs = xor i64 %i.br, %i.bo
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 16, !alias.scope !10058, !noalias !10047, !nonnull !3, !align !42, !noundef !3
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !10059, !noundef !3
  %i.bw = zext i64 %i.bs to i128
  %i.bx = zext i64 %i.bv to i128
  %i.by = xor i128 %i.bp, %i.bx
  %i.bz = mul nuw i128 %i.by, %i.bw               ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = xor i128 %i.ca, %i.bz
  %i.cc = trunc i128 %i.cb to i64
  store i64 %i.cc, ptr %i.bq, align 8, !alias.scope !10058, !noalias !10047
  %i.cd = trunc nuw i64 %i.af to i1
end_hunk_14
begin_hunk_15_@_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtB9_7sources4once4OnceNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1A_NtB1A_4Path5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB4g_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EEB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB2O_12map_try_foldB1w_B1w_uINtNtNtBb_3ops12control_flow11ControlFlowB1w_ENCINvXs4_B1A_B3N_INtNtB6D_7collect12FromIteratorB1w_E9from_iterBO_E0NCINvNvB6z_4find5checkB1w_QNCB8z_s_0E0E0B7N_EB4k_:bb.a
  br i1 %i.z, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.aa, label %._crit_edge.split.us.i, label %bb.t

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21507
  store i64 %i.s, ptr %i.c, align 8, !noalias !21493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !21514)
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
end_hunk_15
begin_hunk_16_@_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4pushCs14kWLkQVSKO_14deltalake_core:bb.a
.noexc:                                           ; preds = %bb.c, %bb.b
  %.sroa.02.0.i = phi ptr [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 1296 ; 2 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 4294967295
  %i.u = and i1 %.sroa.0.012.i, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %.noexc
  %.sroa.0.1.i = phi i1 [ true, %bb.f ], [ false, %.noexc ], [ false, %bb.e ]
  tail call void @llvm.x86.sse2.pause()
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 1280
  %i.w = load i64, ptr %i.v, align 8, !noundef !3
  %i.x = icmp eq i64 %i.w, %i.d
  br i1 %i.x, label %.loopexit, label %bb.b

bb.e:                                             ; preds = %.noexc
  %i.y = cmpxchg ptr %0, ptr %.sroa.05.011.i, ptr %.sroa.02.0.i release monotonic, align 8
  %i.z = extractvalue { ptr, i1 } %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.aa = atomicrmw or ptr %i.b, i64 0 release, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 1304
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = atomicrmw or ptr %i.q, i64 4294967296 release, align 8 ; 0 uses
  br label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.a
  %.sroa.05.0.lcssa.i = phi ptr [ %i.e, %bb.a ], [ %.sroa.02.0.i, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.lcssa.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5writeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %.sroa.05.0.lcssa.i, i64 noundef %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ad

bb.h:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %1) #50
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5closeCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = atomicrmw add ptr %i.a, i64 1 acquire, align 8 ; 2 uses
  %i.c = and i64 %i.b, -32                        ; 3 uses
  %i.d = load atomic ptr, ptr %0 acquire, align 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1280
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.c
  br i1 %i.g, label %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE10find_blockCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = sub i64 %i.c, %i.f
  %i.i = lshr i64 %i.h, 5
  %i.j = and i64 %i.b, 31
  %i.k = icmp samesign ugt i64 %i.i, %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.0.012.i = phi i1 [ %i.k, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.e ]
  %.sroa.05.011.i = phi ptr [ %i.d, %.lr.ph.i ], [ %.sroa.02.0.i, %bb.e ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 1288
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4growCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %.sroa.05.011.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0.i = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 1296 ; 2 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp eq i64 %i.r, 4294967295
  %i.t = and i1 %.sroa.0.012.i, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.0.1.i = phi i1 [ true, %bb.g ], [ false, %bb.d ], [ false, %bb.f ]
  tail call void @llvm.x86.sse2.pause()
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 1280
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.v, %i.c
  br i1 %i.w, label %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE10find_blockCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.x = cmpxchg ptr %0, ptr %.sroa.05.011.i, ptr %.sroa.02.0.i release monotonic, align 8
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.z = atomicrmw or ptr %i.a, i64 0 release, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 1304
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = atomicrmw or ptr %i.p, i64 4294967296 release, align 8 ; 0 uses
  br label %bb.e

_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE10find_blockCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %.sroa.05.0.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %.sroa.02.0.i, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.lcssa.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 1296
  %i.ad = atomicrmw or ptr %i.ac, i64 8589934592 release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB2_17ZOrderExecContext3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1680) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [1680 x i8], align 8              ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  store ptr %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %4, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32464)
  %.sroa.02.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !32464
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload.i = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !32464, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !32464 ; 3 uses
  %i.n = icmp ult i64 %.sroa.54.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32464
  store i64 %.sroa.54.0.copyload.i, ptr %i.c, align 8, !noalias !32464
  %i.o = mul nuw nsw i64 %.sroa.54.0.copyload.i, 24 ; 2 uses
  %i.p = invoke { ptr, i64 } @_RINvMso_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSNtNtB8_6string6StringE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1r_s_0ECs14kWLkQVSKO_14deltalake_core(i64 noundef 8, i64 noundef %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc9 unwind label %bb.d    ; 2 uses

.noexc9:                                          ; preds = %bb.a
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32464
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %.sroa.43.0.copyload.i, i64 %i.o, i1 false), !noalias !32464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32464
  store i64 %.sroa.02.0.copyload.i, ptr %i.b, align 8, !noalias !32464
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.43.0.copyload.i, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !32464
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !32464
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.s, align 8, !noalias !32464
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringRNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringRNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b, !noalias !32464

bb.b:                                             ; preds = %.noexc9
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringRNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.thread unwind label %bb.c, !noalias !32464

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32464
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringRNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc9
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringRNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.d

.noexc11:                                         ; preds = %bb.g, %bb.f
  br i1 %.sroa.01.1, label %.noexc11..thread_crit_edge, label %.thread27

.noexc11..thread_crit_edge:                       ; preds = %.noexc11
  %.pre31 = load ptr, ptr %i.l, align 8, !alias.scope !32467
  br label %.thread

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringRNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringRNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32464
  %i.w = extractvalue { ptr, i64 } %i.p, 1
  store ptr %i.q, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 %i.w, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1680) %i.i, ptr noundef nonnull align 8 dereferenceable(1680) %2, i64 1680, i1 false)
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext14new_with_state(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1680) %i.i)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %.body14._crit_edge, %bb.h
  %i.y = phi ptr [ %.pre, %.body14._crit_edge ], [ %i.q, %bb.h ]
  %.sroa.01.1 = phi i1 [ %.sroa.01.2, %.body14._crit_edge ], [ true, %bb.h ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body14._crit_edge ], [ %i.ab, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32472)
  call void @llvm.experimental.noalias.scope.decl(metadata !32475)
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !32478
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.g, label %.noexc11

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtB7_6string6StringE9drop_slowCsonPGffhQyS_5regex(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #52
          to label %.noexc11 unwind label %bb.w

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.ac = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 16, i64 noundef range(i64 1, 17) 8) #45 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %bb.l, !prof !4

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #53
          to label %.noexc12 unwind label %bb.k

.noexc12:                                         ; preds = %bb.j
  unreachable

.body14:                                          ; preds = %bb.u, %bb.k, %bb.q
  %.sroa.01.2 = phi i1 [ false, %bb.q ], [ %.sroa.01.3, %bb.k ], [ false, %bb.u ]
  %.pn = phi { ptr, i32 } [ %i.am, %bb.q ], [ %i.ae, %bb.k ], [ %i.at, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.j) #50
          to label %.body14._crit_edge unwind label %bb.w

.body14._crit_edge:                               ; preds = %.body14
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !32478
  br label %bb.f

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.j, %bb.o, %bb.m, %bb.l
  %.sroa.01.3 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i ], [ true, %bb.o ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.j ]
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body14

bb.l:                                             ; preds = %bb.i
  store i64 1, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx19, align 8
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext12register_udf(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) @141)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.af, align 8
  store ptr null, ptr %i.e, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.ag, align 8
  invoke void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 11)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !32479)
  call void @llvm.experimental.noalias.scope.decl(metadata !32482)
  %i.ah = load i64, ptr %i.f, align 8, !range !140, !alias.scope !32482, !noalias !32479, !noundef !3
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %i.ai, label %bb.o, label %bb.p, !prof !4

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32484
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !22375, !alias.scope !32482, !noalias !32479, !noundef !3
  store i8 %i.ak, ptr %i.d, align 1, !noalias !32484
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #53
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.f, i64 88, i1 false), !alias.scope !32484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.al = invoke { ptr, ptr } @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext21register_object_store(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.g, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %4)
          to label %bb.r unwind label %bb.q       ; 2 uses

bb.q:                                             ; preds = %bb.t, %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.g) #50
          to label %.body14 unwind label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.an = extractvalue { ptr, ptr } %i.al, 0      ; 3 uses
  %i.ao = extractvalue { ptr, ptr } %i.al, 1
  store ptr %i.an, ptr %i.h, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = icmp eq ptr %i.an, null
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !32485
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.r, %bb.t
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %.body14 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.av = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.aw = load i64, ptr %i.x, align 8, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.w:                                             ; preds = %bb.x, %bb.g, %bb.y, %bb.q, %.body14
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.noexc17:                                         ; preds = %bb.x, %.thread
  br i1 %.sroa.02.024, label %bb.y, label %.thread27

.thread:                                          ; preds = %.noexc11..thread_crit_edge, %bb.b, %bb.d
  %i.ay = phi ptr [ %.pre31, %.noexc11..thread_crit_edge ], [ %3, %bb.d ], [ %3, %bb.b ]
  %.pn.pn.pn26 = phi { ptr, i32 } [ %.pn.pn, %.noexc11..thread_crit_edge ], [ %i.v, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.02.024 = phi i1 [ false, %.noexc11..thread_crit_edge ], [ true, %bb.d ], [ true, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !32492)
  call void @llvm.experimental.noalias.scope.decl(metadata !32493)
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !32467
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.x, label %.noexc17

bb.x:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #52
          to label %.noexc17 unwind label %bb.w

.thread27:                                        ; preds = %.noexc11, %bb.y, %.noexc17
  %.pn.pn.pn2530 = phi { ptr, i32 } [ %.pn.pn.pn26, %.noexc17 ], [ %.pn.pn.pn26, %bb.y ], [ %.pn.pn, %.noexc11 ]
  resume { ptr, i32 } %.pn.pn.pn2530

bb.y:                                             ; preds = %.noexc17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1680) %2) #50
          to label %.thread27 unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
end_hunk_16
begin_hunk_17_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schema:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.v = icmp ult i64 %i.u, 96076792050570582
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %bb.g, label %bb.h

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_16BinaryExprFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  %i.o = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noundef nonnull @0, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_16BinaryExprFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
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
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataNtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1199, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtB2_3Any7type_idBB_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1200, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json6ToJsonNtB2_3Any7type_idBB_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1201, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @27, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtBZ_3zip3ZipINtNtNtB13_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB2u_6string6StringNtNtB31_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0EINtNtB2u_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB11_6traits8iterator8Iterator4nextB5G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [112 x i8], align 16              ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.63.i.sroa.6.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.63.i.sroa.7.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.63.i.sroa.8.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.63.i.sroa.9.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.638.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.q = load ptr, ptr %i.e, align 8, !noundef !3
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !32861)
  %i.r = load ptr, ptr %i.f, align 8, !alias.scope !32861, !noalias !32864, !nonnull !3, !noundef !3
  %i.s = load ptr, ptr %i.g, align 8, !alias.scope !32861, !noalias !32864, !nonnull !3, !noundef !3 ; 4 uses
  %i.t = icmp eq ptr %i.s, %i.r
  br i1 %i.t, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store ptr %i.u, ptr %i.g, align 8, !alias.scope !32861, !noalias !32864
  %.sroa.0.0.copyload21 = load i64, ptr %i.s, align 16, !noalias !32861 ; 2 uses
  %.not10 = icmp eq i64 %.sroa.0.0.copyload21, 37
  br i1 %.not10, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.u

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !32866)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !32869, !noalias !32876, !nonnull !3, !noundef !3 ; 3 uses
  %i.w = load ptr, ptr %i.h, align 8, !alias.scope !32869, !noalias !32876, !nonnull !3, !noundef !3
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %1, align 8, !alias.scope !32869, !noalias !32876
  %i.z = load ptr, ptr %i.i, align 8, !alias.scope !32878, !noalias !32876, !nonnull !3, !noundef !3 ; 5 uses
  %i.aa = load ptr, ptr %i.j, align 8, !alias.scope !32878, !noalias !32876, !nonnull !3, !noundef !3
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  store ptr %i.ac, ptr %i.i, align 8, !alias.scope !32878, !noalias !32876
  %.val.i = load ptr, ptr %i.v, align 8, !noalias !32881 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32882)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32885
  %i.ad = call noundef align 16 dereferenceable_or_null(224) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 224, i64 noundef range(i64 1, 17) 16) #45, !noalias !32885 ; 12 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i, !prof !4

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 224) #53, !noalias !32885
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32885
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !32882, !noalias !32887, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !32882, !noalias !32887, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32885
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %.loopexit, !noalias !32885

.loopexit:                                        ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.h:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i
  %i.aj = load i64, ptr %i.a, align 8, !range !5, !noalias !32885, !noundef !3
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = load i64, ptr %i.k, align 8, !range !140, !noalias !32885, !noundef !3 ; 3 uses
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.l, align 8, !noalias !32885
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.am) #53
          to label %bb.t unwind label %.loopexit.split-lp, !noalias !32885

bb.j:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.l, align 8, !noalias !32885, !nonnull !3, !noundef !3 ; 2 uses
  %i.ao = icmp ule i64 %i.ai, %i.al
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32885
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  store i64 %i.al, ptr %i.c, align 8, !noalias !32885
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !32885
  store i64 %i.ai, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !noalias !32885
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.m unwind label %.loopexit, !noalias !32885

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ag, i64 %i.ai, i1 false), !noalias !32885
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32885
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  invoke void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion18to_datafusion_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq)
          to label %bb.o unwind label %bb.n, !noalias !32887

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d) #50
          to label %bb.s unwind label %bb.r, !noalias !32887

bb.o:                                             ; preds = %bb.m
  %i.as = load i64, ptr %i.b, align 16, !range !885, !noalias !32885, !noundef !3 ; 2 uses
  %i.at = icmp eq i64 %i.as, 37
  %.sroa.63.i.sroa.0.0.copyload9.i = load i64, ptr %i.m, align 8, !noalias !32885 ; 3 uses
  %.sroa.63.i.sroa.6.0.copyload12.i = load i64, ptr %.sroa.63.i.sroa.6.0..sroa_idx11.i, align 16, !noalias !32885 ; 3 uses
  %.sroa.63.i.sroa.7.0.copyload15.i = load ptr, ptr %.sroa.63.i.sroa.7.0..sroa_idx14.i, align 8, !noalias !32885 ; 3 uses
  %.sroa.63.i.sroa.8.0.copyload18.i = load i64, ptr %.sroa.63.i.sroa.8.0..sroa_idx17.i, align 16, !noalias !32885 ; 3 uses
  %.sroa.63.i.sroa.9.0.copyload21.i = load i64, ptr %.sroa.63.i.sroa.9.0..sroa_idx20.i, align 8, !noalias !32885 ; 2 uses
  br i1 %i.at, label %bb.p, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32885
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d)
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit unwind label %bb.q, !noalias !32887

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71: ; preds = %bb.o
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.611.0..sroa_idx.i.i, i64 64, i1 false), !noalias !32887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32885
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store i64 %.sroa.63.i.sroa.0.0.copyload9.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !32887
  %.sroa.63.i.sroa.6.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store i64 %.sroa.63.i.sroa.6.0.copyload12.i, ptr %.sroa.63.i.sroa.6.0..sroa.2.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !32887
  %.sroa.63.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store ptr %.sroa.63.i.sroa.7.0.copyload15.i, ptr %.sroa.63.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !32887
  %.sroa.63.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  store i64 %.sroa.63.i.sroa.8.0.copyload18.i, ptr %.sroa.63.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !32887
  %.sroa.63.i.sroa.9.0..sroa.2.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  store i64 %.sroa.63.i.sroa.9.0.copyload21.i, ptr %.sroa.63.i.sroa.9.0..sroa.2.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !32887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ad, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !32887
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store i64 %i.as, ptr %i.au, align 16, !noalias !32887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32885
  br label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32887
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.aa, %bb.ae, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.s ], [ %i.bi, %bb.ae ], [ %i.bd, %bb.aa ], [ %i.ax, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.n
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.ar, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 224, i64 noundef 16) #45, !noalias !32887
  br label %common.resume

bb.t:                                             ; preds = %bb.i
  unreachable

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32885
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 224, i64 noundef 16) #45, !noalias !32887
  switch i64 %.sroa.63.i.sroa.0.0.copyload9.i, label %bb.ab [
    i64 21, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread
    i64 20, label %bb.ac
  ]

bb.u:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.7.0..sroa_idx22.le = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx22.le, i64 104, i1 false)
  store i64 %.sroa.0.0.copyload21, ptr %0, align 16
  br label %bb.v

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.c, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.w

bb.v:                                             ; preds = %bb.y, %bb.z, %bb.ab, %bb.u
  ret void

bb.w:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  store ptr null, ptr %i.e, align 8
  br label %bb.d

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread: ; preds = %bb.d, %bb.e, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit
  %i.ay = load ptr, ptr %i.n, align 8, !noundef !3
  %.not12 = icmp eq ptr %i.ay, null
  br i1 %.not12, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !32888)
  %i.az = load ptr, ptr %i.o, align 8, !alias.scope !32888, !noalias !32891, !nonnull !3, !noundef !3
  %i.ba = load ptr, ptr %i.p, align 8, !alias.scope !32888, !noalias !32891, !nonnull !3, !noundef !3 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16: ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  store ptr %i.bc, ptr %i.p, align 8, !alias.scope !32888, !noalias !32891
  %.sroa.048.0.copyload49 = load i64, ptr %i.ba, align 16, !noalias !32888 ; 2 uses
  %.not13 = icmp eq i64 %.sroa.048.0.copyload49, 37
  br i1 %.not13, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread, label %bb.z

bb.y:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread
  store i64 38, ptr %0, align 16
  br label %bb.v

bb.z:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16
  %.sroa.750.0..sroa_idx51.le = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.750.0..sroa_idx51.le, i64 104, i1 false)
  store i64 %.sroa.048.0.copyload49, ptr %0, align 16
  br label %bb.v

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread: ; preds = %bb.x, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18 unwind label %bb.aa

bb.aa:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread
  store ptr null, ptr %i.n, align 8
  br label %.backedge

bb.ab:                                            ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit
  store i64 37, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.63.i.sroa.0.0.copyload9.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.63.i.sroa.6.0.copyload12.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.63.i.sroa.7.0.copyload15.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.63.i.sroa.8.0.copyload18.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.63.i.sroa.9.0.copyload21.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.v

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit
  %.sroa.727.179 = phi i64 [ 2, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.6.0.copyload12.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 2 uses
  %.sroa.9.178 = phi ptr [ %i.ad, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.7.0.copyload15.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 6 uses
  %.sroa.10.177 = phi i64 [ 2, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.8.0.copyload18.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.178) ]
  %i.be = icmp ult i64 %.sroa.10.177, 82351536043346213
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [112 x i8], ptr %.sroa.9.178, i64 %.sroa.10.177 ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8, !alias.scope !32893, !noundef !3
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.9.178, ptr %i.e, align 8
  store ptr %.sroa.9.178, ptr %i.g, align 8
  store i64 %.sroa.727.179, ptr %.sroa.638.0..sroa_idx39, align 8
  store ptr %i.bf, ptr %i.f, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ac, %bb.ad
  store ptr %.sroa.9.178, ptr %i.e, align 8
  store ptr %.sroa.9.178, ptr %i.g, align 8
  store i64 %.sroa.727.179, ptr %.sroa.638.0..sroa_idx39, align 8
  store ptr %i.bf, ptr %i.f, align 8
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtBZ_3zip3ZipINtNtNtB13_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB2u_6string6StringNtNtB31_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0EINtNtB2u_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB11_6traits8iterator8Iterator9size_hintB5G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_17
begin_hunk_18_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan8SubqueryNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXsD_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_8SubqueryNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan9AggregateNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34717
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %i.a, align 8, !noalias !34717
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1606, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1503, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1468, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1607, i64 noundef 10, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1500, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1608, i64 noundef 9, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1500, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1324, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1439)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34717
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan9ExtensionNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34721
  store ptr %i.b, ptr %i.a, align 8, !noalias !34721
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1541, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1542, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1540)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34721
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan9TableScanNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXsd_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB4_13AttachedTokenNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading18FileStagingCommandNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34725
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !34725
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2718, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2719, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1585, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1847, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2616)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34725
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading19StageLoadSelectItemNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34729
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.e, ptr %i.a, align 8, !noalias !34729
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2524, i64 noundef 19, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1506, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1207, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2681, i64 noundef 12, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2680, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2408, i64 noundef 7, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1207, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2682, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1353)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34729
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34733)
  %i.d = load i64, ptr %i.c, align 8, !range !1832, !alias.scope !34733, !noalias !34736, !noundef !3
  %i.e = icmp eq i64 %i.d, 74
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34738
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.a, align 8, !noalias !34738
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2524, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34738
  br label %_RNvXsc_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34738
  store ptr %i.c, ptr %i.b, align 8, !noalias !34738
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2522, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2521)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34738
  br label %_RNvXsc_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXsc_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_23StageLoadSelectItemKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRSNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !715, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34739
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !34743
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.d
  %i.f = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 16 %i.b, ptr noundef nonnull readonly %i.e)
  %i.g = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34739
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34744
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !34748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34744
  store ptr %i.d, ptr %i.b, align 8, !noalias !34744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34744
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.a, align 8, !noalias !34744
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1442) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1443) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs2_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34744
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1h_NtCs6Po7BT7Nknu_5alloc4syncINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBG_5slice4iter4IterINtNtBG_6option6OptionINtB6_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvMs_NtB2z_6fieldsNtB3o_6Fields17try_filter_leavesNCINvB3l_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB4F_12arrow_reader18ArrowReaderBuilderINtB4D_11AsyncReaderNtNtB4D_5store19ParquetObjectReaderEE5builds_0E0Es0_0EINtB6_10ToArcSliceB2l_E12to_arc_sliceCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2r_5slice4iter4IterINtNtB2r_6option6OptionBU_EENCINvMs_NtB1f_6fieldsNtB4l_6Fields17try_filter_leavesNCINvB4i_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5C_12arrow_reader18ArrowReaderBuilderINtB5A_11AsyncReaderNtNtB5A_5store19ParquetObjectReaderEE5builds_0E0Es0_0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %0, ptr noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !34749)
  %.sroa.02.0.copyload.i = load i64, ptr %i.d, align 8, !alias.scope !34749
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.43.0.copyload.i = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !34749, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !34749 ; 3 uses
  %i.e = icmp ult i64 %.sroa.54.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34749
  store i64 %.sroa.54.0.copyload.i, ptr %i.c, align 8, !noalias !34749
  %i.f = shl nuw nsw i64 %.sroa.54.0.copyload.i, 3 ; 2 uses
  %i.g = call { ptr, i64 } @_RINvMso_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1T_s_0ECs14kWLkQVSKO_14deltalake_core(i64 noundef 8, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !34749 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34749
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %.sroa.43.0.copyload.i, i64 %i.f, i1 false), !noalias !34749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34749
  store i64 %.sroa.02.0.copyload.i, ptr %i.b, align 8, !noalias !34749
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.43.0.copyload.i, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !34749
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !34749
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !34749
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RNvXs1c_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtB8_3vec3VecBI_EE4fromCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !noalias !34749

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c, !noalias !34749

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !34749
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.k

_RNvXs1c_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtB8_3vec3VecBI_EE4fromCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !34749
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1h_NtCs6Po7BT7Nknu_5alloc4syncINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBG_5slice4iter4IterINtNtBG_6option6OptionINtB6_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCINvNvMs_NtB2z_6fieldsNtB3q_6Fields17try_filter_leaves12filter_fieldNCIB3l_NCINvB3n_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB52_12arrow_reader18ArrowReaderBuilderINtB50_11AsyncReaderNtNtB50_5store19ParquetObjectReaderEE5builds_0E0E0Es_0EINtB6_10ToArcSliceB2l_E12to_arc_sliceCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2r_5slice4iter4IterINtNtB2r_6option6OptionBU_EENCINvNvMs_NtB1f_6fieldsNtB4n_6Fields17try_filter_leaves12filter_fieldNCIB4i_NCINvB4k_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5Z_12arrow_reader18ArrowReaderBuilderINtB5X_11AsyncReaderNtNtB5X_5store19ParquetObjectReaderEE5builds_0E0E0Es_0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %0, ptr noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !34752)
  %.sroa.02.0.copyload.i = load i64, ptr %i.d, align 8, !alias.scope !34752
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.43.0.copyload.i = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !34752, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !34752 ; 3 uses
  %i.e = icmp ult i64 %.sroa.54.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34752
  store i64 %.sroa.54.0.copyload.i, ptr %i.c, align 8, !noalias !34752
  %i.f = shl nuw nsw i64 %.sroa.54.0.copyload.i, 3 ; 2 uses
  %i.g = call { ptr, i64 } @_RINvMso_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1T_s_0ECs14kWLkQVSKO_14deltalake_core(i64 noundef 8, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !34752 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34752
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %.sroa.43.0.copyload.i, i64 %i.f, i1 false), !noalias !34752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34752
  store i64 %.sroa.02.0.copyload.i, ptr %i.b, align 8, !noalias !34752
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.43.0.copyload.i, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !34752
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !34752
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !34752
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RNvXs1c_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtB8_3vec3VecBI_EE4fromCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !noalias !34752

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c, !noalias !34752

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !34752
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.k

_RNvXs1c_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtB8_3vec3VecBI_EE4fromCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !34752
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1h_NtCs6Po7BT7Nknu_5alloc4syncINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBG_5slice4iter4IterINtNtBG_6option6OptionTaINtB6_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2B_6fieldsNtB3t_6Fields17try_filter_leaves12filter_fieldNCIB3o_NCINvB3q_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB55_12arrow_reader18ArrowReaderBuilderINtB53_11AsyncReaderNtNtB53_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EINtB6_10ToArcSliceB2l_E12to_arc_sliceCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2u_5slice4iter4IterINtNtB2u_6option6OptionBU_EENCINvNvMs_NtB1h_6fieldsNtB4q_6Fields17try_filter_leaves12filter_fieldNCIB4l_NCINvB4n_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB62_12arrow_reader18ArrowReaderBuilderINtB60_11AsyncReaderNtNtB60_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %0, ptr noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !34755)
  %.sroa.02.0.copyload.i = load i64, ptr %i.d, align 8, !alias.scope !34755
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.43.0.copyload.i = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !34755, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !34755 ; 3 uses
  %i.e = icmp ult i64 %.sroa.54.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34755
  store i64 %.sroa.54.0.copyload.i, ptr %i.c, align 8, !noalias !34755
  %i.f = shl nuw nsw i64 %.sroa.54.0.copyload.i, 4 ; 2 uses
  %i.g = call { ptr, i64 } @_RINvMso_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSTaIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE19allocate_for_layoutNCNvMsr_B6_Bx_21allocate_for_slice_in0NCB1W_s_0ECs14kWLkQVSKO_14deltalake_core(i64 noundef 8, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !34755 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34755
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %.sroa.43.0.copyload.i, i64 %i.f, i1 false), !noalias !34755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34755
  store i64 %.sroa.02.0.copyload.i, ptr %i.b, align 8, !noalias !34755
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.43.0.copyload.i, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !34755
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !34755
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !34755
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTaINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RNvXs1c_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSTaIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtB8_3vec3VecBI_EE4fromCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !noalias !34755

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTaINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTaINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEERNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c, !noalias !34755

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !34755
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTaINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEERNtNtBL_5alloc6GlobalEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.k

_RNvXs1c_NtCs6Po7BT7Nknu_5alloc4syncINtB6_3ArcSTaIBy_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtB8_3vec3VecBI_EE4fromCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTaINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEERNtNtB7_5alloc6GlobalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !34755
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1h_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterPolicyOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !709, !noundef !3 ; 2 uses
  %i.b = icmp ne i64 %i.a, 70                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !709, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 70                     ; 3 uses
  %not. = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.o, %.lr.ph.i, %bb.n, %bb.s, %bb.r, %bb.h, %bb.g, %bb.e, %bb.d, %bb.t, %bb.p, %bb.k, %bb.i, %bb.q, %bb.j, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %.mux, %bb.s ], [ %i.bs, %bb.t ], [ false, %bb.j ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.q ], [ %i.y, %bb.g ], [ false, %bb.e ], [ %i.z, %bb.h ], [ false, %bb.d ], [ false, %bb.n ], [ false, %.lr.ph.i ], [ false, %bb.o ], [ false, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not.)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.g = load i64, ptr %i.f, align 8, !range !140, !noundef !3
  %.not = icmp eq i64 %i.g, -9223372036854775808
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.i = load i64, ptr %i.h, align 8, !range !140, !noundef !3
  %i.j = icmp eq i64 %i.i, -9223372036854775808   ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34761)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !34758, !noalias !34761, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !34761, !noalias !34758, !noundef !3
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !34761, !noalias !34758, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !34758, !noalias !34761, !nonnull !3, !noundef !3
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.q, i64 %i.l), !noalias !34763
  %i.t = icmp eq i32 %bcmp.i, 0
  br i1 %i.t, label %bb.f, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8, !range !32417, !alias.scope !34758, !noalias !34761, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.v, 1114112
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !range !32417, !alias.scope !34761, !noalias !34758, !noundef !3 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %i.v, %i.x
  br label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq i32 %i.x, 1114112
  br label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.c
  br i1 %i.j, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.k

bb.j:                                             ; preds = %bb.c
  br i1 %i.j, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.l, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = icmp eq i64 %i.ab, 0
  br i1 %i.aj, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread6.i
  %.sroa.01.08.i = phi i64 [ %i.bk, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread6.i ], [ 0, %bb.l ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ai, i64 %.sroa.01.08.i ; 4 uses
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.sroa.01.08.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34772)
  %i.am = load i64, ptr %i.ak, align 8, !range !859, !alias.scope !34774, !noalias !34775, !noundef !3 ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = add i64 %i.am, -9223372036854775807
  %i.ap = select i1 %i.an, i64 %i.ao, i64 0       ; 2 uses
  %i.aq = load i64, ptr %i.al, align 8, !range !859, !alias.scope !34775, !noalias !34774, !noundef !3 ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 0
  %i.as = add i64 %i.aq, -9223372036854775807
  %i.at = select i1 %i.ar, i64 %i.as, i64 0
  %i.au = icmp eq i64 %i.ap, %i.at
  br i1 %i.au, label %bb.m, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.av = icmp eq i64 %i.ap, 0
  br i1 %i.av, label %bb.n, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread6.i

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !34774, !noalias !34775, !noundef !3 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !34775, !noalias !34774, !noundef !3
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !34775, !noalias !34774, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !34774, !noalias !34775, !nonnull !3, !noundef !3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.be, ptr nonnull %i.bc, i64 %i.ax), !noalias !34776
  %i.bf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bf, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !range !32417, !alias.scope !34774, !noalias !34775, !noundef !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !range !32417, !alias.scope !34775, !noalias !34774, !noundef !3
  %.sroa.0.0.shrunk.i.i.not.i = icmp eq i32 %i.bj, %i.bh
  br i1 %.sroa.0.0.shrunk.i.i.not.i, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread6.i, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread6.i: ; preds = %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.m
  %i.bk = add nuw i64 %.sroa.01.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.ab
  br i1 %exitcond.not.i, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread6.i, %bb.l, %bb.j
  %.not9 = icmp eq i64 %i.a, 69
  %i.bl = icmp eq i64 %i.c, 69                    ; 2 uses
  br i1 %.not9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit
  br i1 %i.bl, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.r

bb.q:                                             ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit
  br i1 %i.bl, label %bb.s, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.p
  %i.bm = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #55
  br i1 %i.bm, label %bb.s, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !range !877, !noundef !3
  %.not13 = icmp eq i64 %i.bo, 69                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !877, !noundef !3
  %i.br = icmp eq i64 %i.bq, 69                   ; 2 uses
  %brmerge = or i1 %.not13, %i.br
  %.mux = and i1 %.not13, %i.br
  br i1 %brmerge, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bp) #55
  br label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4lawaffTVVK_9sqlparser9tokenizerNtB6_14TokenizerErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1517, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1515, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1518, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1516)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB2_8DataTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
end_hunk_18
begin_hunk_19_@_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt:bb.a
  br label %bb.ah

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.du = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !3, !noundef !3
  store ptr %i.dv, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.bb, ptr %i.ba, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.dw = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !3, !align !42, !noundef !3
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val543) ]
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
end_hunk_19
begin_hunk_20_@_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !35795, !noundef !3 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !35795, !nonnull !3, !noundef !3
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !35795, !noundef !3 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !35795
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !35798
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !35801, !noalias !35798, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !35801, !noalias !35798, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !35801, !noalias !35798
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !35801, !noalias !35798
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterINtNtNtB6_5array16dictionary_array20TypedDictionaryArrayNtNtB6_5types10UInt16TypeINtNtB11_10byte_array16GenericByteArrayINtB1S_17GenericStringTypelEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3nthCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %i.b, %2                         ; 8 uses
  %i.d = icmp uge i64 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.c, %i.f
  %or.cond = select i1 %i.d, i1 %i.g, i1 false, !prof !35805
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !35805

bb.b:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35811)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !35814, !noalias !35806, !noundef !3
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !35814, !noalias !35806, !noundef !3
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #49, !noalias !35815
  unreachable

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !35814, !noalias !35806, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !35814, !noalias !35806, !noundef !3
  %i.q = add i64 %i.p, %i.c                       ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !35815, !noundef !3
  %i.u = trunc i64 %i.q to i8
  %i.v = and i8 %i.u, 7
  %i.w = xor i8 %i.t, -1
  %i.x = lshr i8 %i.w, %i.v
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  %i.z = add nuw i64 %i.c, 1
  store i64 %i.z, ptr %i.a, align 8, !alias.scope !35809, !noalias !35806
  %i.aa = tail call { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef %i.c), !noalias !35806 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %3 = extractvalue { ptr, i64 } %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !35806, !noalias !35809
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.ad, align 8, !alias.scope !35806, !noalias !35809
  br label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterINtNtNtB6_5array16dictionary_array20TypedDictionaryArrayNtNtB6_5types10UInt16TypeINtNtB11_10byte_array16GenericByteArrayINtB1S_17GenericStringTypelEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ae = add nuw i64 %i.c, 1
  store i64 %i.ae, ptr %i.a, align 8, !alias.scope !35809, !noalias !35806
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.af, align 8, !alias.scope !35806, !noalias !35809
  br label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterINtNtNtB6_5array16dictionary_array20TypedDictionaryArrayNtNtB6_5types10UInt16TypeINtNtB11_10byte_array16GenericByteArrayINtB1S_17GenericStringTypelEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.a, align 8
  br label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterINtNtNtB6_5array16dictionary_array20TypedDictionaryArrayNtNtB6_5types10UInt16TypeINtNtB11_10byte_array16GenericByteArrayINtB1S_17GenericStringTypelEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterINtNtNtB6_5array16dictionary_array20TypedDictionaryArrayNtNtB6_5types10UInt16TypeINtNtB11_10byte_array16GenericByteArrayINtB1S_17GenericStringTypelEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.f
  %storemerge = phi i64 [ 0, %bb.f ], [ 1, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ 1, %bb.e ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterINtNtNtB6_5array16dictionary_array20TypedDictionaryArrayNtNtB6_5types10UInt16TypeINtNtB11_10byte_array16GenericByteArrayINtB1S_17GenericStringTypelEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35816)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !35816, !noundef !3
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !35816, !noundef !3
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #49, !noalias !35816
  unreachable

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !35816, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !35816, !noundef !3
  %i.o = add i64 %i.n, %i.b                       ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !35816, !noundef !3
  %i.s = trunc i64 %i.o to i8
  %i.t = and i8 %i.s, 7
  %i.u = xor i8 %i.r, -1
  %i.v = lshr i8 %i.u, %i.t
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.b, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit
  %i.x = add i64 %i.b, 1
  store i64 %i.x, ptr %i.a, align 8
  %i.y = tail call { ptr, i64 } @_RNvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_20TypedDictionaryArrayNtNtB9_5types10UInt16TypeINtNtB7_10byte_array16GenericByteArrayINtB1s_17GenericStringTypelEEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef %i.b) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %2 = extractvalue { ptr, i64 } %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.ab, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit
  %i.ac = add nuw i64 %i.b, 1
  store i64 %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.e
  %.sink = phi i64 [ 1, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterINtNtNtB4_5array16dictionary_array20TypedDictionaryArrayNtNtB4_5types10UInt16TypeINtNtBZ_10byte_array16GenericByteArrayINtB1Q_17GenericStringTypelEEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 1, %bb.e ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterINtNtNtB6_5array16dictionary_array20TypedDictionaryArrayNtNtB6_5types10UInt16TypeINtNtB11_10byte_array16GenericByteArrayINtB1S_17GenericStringTypelEEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = sub i64 %i.b, %i.d                       ; 2 uses
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRINtNtNtB6_5array10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3nthCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %i.b, %2                         ; 8 uses
  %i.d = icmp uge i64 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.c, %i.f
  %or.cond = select i1 %i.d, i1 %i.g, i1 false, !prof !35805
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !35805

bb.b:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35824)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !35827, !noalias !35819, !noundef !3
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !35827, !noalias !35819, !noundef !3
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #49, !noalias !35828
  unreachable

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !35827, !noalias !35819, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !35827, !noalias !35819, !noundef !3
  %i.q = add i64 %i.p, %i.c                       ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !35828, !noundef !3
  %i.u = trunc i64 %i.q to i8
  %i.v = and i8 %i.u, 7
  %i.w = xor i8 %i.t, -1
  %i.x = lshr i8 %i.w, %i.v
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  %i.z = add nuw i64 %i.c, 1
  store i64 %i.z, ptr %i.a, align 8, !alias.scope !35822, !noalias !35819
  %i.aa = tail call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, i64 noundef %i.c), !noalias !35819 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %3 = extractvalue { ptr, i64 } %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !35819, !noalias !35822
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.ad, align 8, !alias.scope !35819, !noalias !35822
  br label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRINtNtNtB6_5array10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ae = add nuw i64 %i.c, 1
  store i64 %i.ae, ptr %i.a, align 8, !alias.scope !35822, !noalias !35819
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.af, align 8, !alias.scope !35819, !noalias !35822
  br label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRINtNtNtB6_5array10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.a, align 8
  br label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRINtNtNtB6_5array10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRINtNtNtB6_5array10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.f
  %storemerge = phi i64 [ 0, %bb.f ], [ 1, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ 1, %bb.e ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRINtNtNtB6_5array10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35829)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !35829, !noundef !3
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !35829, !noundef !3
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #49, !noalias !35829
  unreachable

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !35829, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !35829, !noundef !3
  %i.o = add i64 %i.n, %i.b                       ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !35829, !noundef !3
  %i.s = trunc i64 %i.o to i8
  %i.t = and i8 %i.s, 7
  %i.u = xor i8 %i.r, -1
  %i.v = lshr i8 %i.u, %i.t
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.b, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit
  %i.x = add i64 %i.b, 1
  store i64 %i.x, ptr %i.a, align 8
  %i.y = tail call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.b) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %2 = extractvalue { ptr, i64 } %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.ab, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit
  %i.ac = add nuw i64 %i.b, 1
  store i64 %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.e
  %.sink = phi i64 [ 1, %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 1, %bb.e ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRINtNtNtB6_5array10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = sub i64 %i.b, %i.d                       ; 2 uses
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBG_5StatsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state1__NtBa_5StatsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB17_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !42, !noundef !3
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %i.b)
  %i.j = icmp eq i32 %bcmp, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !range !32417, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.l, 1114112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !range !32417, !noundef !3 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.e ], [ false, %bb.b ], [ %i.p, %bb.f ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.shrunk

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.l, %i.n
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.n, 1114112
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files10find_files000INtB4_6FnMut1NtNtNtNtBO_6kernel8snapshot9iterators15LogicalFileViewE8call_mutBO_(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView10add_action(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files10find_files000Bb_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i unwind label %bb.c, !noalias !35832

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !35832
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files10find_files000Bb_.exit: ; preds = %bb.a
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !35832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan000INtB4_6FnMut1NtNtNtNtBO_6kernel8snapshot9iterators15LogicalFileViewE8call_mutBO_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [272 x i8], align 8               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35835
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView10add_action(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
          to label %bb.d unwind label %bb.c, !noalias !35839

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i unwind label %bb.f, !noalias !35839

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35835
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan000Bb_.exit unwind label %bb.e, !noalias !35839

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.b) #50
          to label %bb.b unwind label %bb.f, !noalias !35839

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !35839
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEBO_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %.pn.i

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan000Bb_.exit: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.h, ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 272, i1 false), !noalias !35840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !35840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35835
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c), !noalias !35839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs90oH6M0AZ2B_22datafusion_expr_common6dyn_eqNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayNtB4_5DynEq6dyn_eqBV_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  call void %i.c(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %1) #55
  %i.d = load i128, ptr %i.a, align 16, !noundef !3
  %i.e = icmp eq i128 %i.d, 84931992542113763169440207828807414057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.e, label %bb.b, label %_RNvXsa_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_16MakeParquetArrayNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !35841)
  call void @llvm.experimental.noalias.scope.decl(metadata !35844)
  call void @llvm.experimental.noalias.scope.decl(metadata !35846)
  call void @llvm.experimental.noalias.scope.decl(metadata !35849)
  call void @llvm.experimental.noalias.scope.decl(metadata !35851)
  call void @llvm.experimental.noalias.scope.decl(metadata !35854)
  %i.f = call fastcc noundef zeroext i1 @_RNvXsw_NtCs90oH6M0AZ2B_22datafusion_expr_common9signatureNtB5_13TypeSignatureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) #55
  br i1 %i.f, label %bb.c, label %_RNvXsa_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_16MakeParquetArrayNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i8, ptr %i.g, align 8, !range !158, !alias.scope !35856, !noalias !35857, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_20
