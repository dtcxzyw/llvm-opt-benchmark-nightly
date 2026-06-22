inline.NumInlined: 3868
inline.NumDeleted: 1539
begin_hunk_0_@_RINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScan7try_newReECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fl = load <2 x ptr>, ptr %i.aa, align 16
  store <2 x ptr> %i.fl, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.fh, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.fm = load ptr, ptr %i.u, align 8, !alias.scope !672, !nonnull !8, !noundef !8
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !672
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit95
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit91: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.p

bb.bq:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.cb unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bs
  %i.fs = load i64, ptr %5, align 8, !range !311, !alias.scope !673, !noundef !8
  %i.ft = icmp eq i64 %i.fs, -9223372036854775808
  br i1 %i.ft, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cc unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.fx = load ptr, ptr %i.aa, align 16, !alias.scope !682, !nonnull !8, !noundef !8
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !682
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

.body.thread133:                                  ; preds = %.thread.i, %bb.ad, %.body.thread140
  %eh.lpad-body136 = phi { ptr, i32 } [ %lpad.thr_comm138, %.body.thread140 ], [ %i.cz, %bb.ad ], [ %.pn4.i, %.thread.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.t) #34
          to label %.body.thread unwind label %bb.q

.thread122:                                       ; preds = %.body.thread, %bb.t, %.body59, %bb.n, %.thread126
  %.pn45.pn121 = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %lpad.thr_comm, %.thread126 ], [ %.pn45, %.body59 ], [ %.pn, %bb.t ], [ %.pn, %.body.thread ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z) #34
          to label %bb.ca unwind label %bb.q

bb.ca:                                            ; preds = %.thread122, %bb.b
  %.pn45.pn.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.b ], [ %.pn45.pn121, %.thread122 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %6) #34
          to label %bb.cb unwind label %bb.q

bb.cb:                                            ; preds = %bb.ca, %bb.br, %bb.bu
  %.pn45.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn45.pn.pn.ph, %bb.ca ], [ %i.fr, %bb.bu ], [ %i.fp, %bb.br ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %5) #34
          to label %bb.cc unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103: ; preds = %bb.cc, %bb.cd
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.ph

bb.cc:                                            ; preds = %bb.cb, %bb.bw, %bb.by
  %.pn45.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn45.pn.pn.pn.ph, %bb.cb ], [ %i.fw, %bb.by ], [ %i.fu, %bb.bw ]
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.ga = load ptr, ptr %i.aa, align 16, !alias.scope !689, !nonnull !8, !noundef !8
  %i.gb = atomicrmw sub ptr %i.ga, i64 1 release, align 8, !noalias !689
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit103 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCs2pqxYH9ZEk8_3std2rt10lang_startINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsb2ODgYNwnRL_6anyhow5ErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCs2pqxYH9ZEk8_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @13, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [152 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !690
  %i.d = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !690 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !229

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #34
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, i64 56) acquire, align 8
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  %i.j = load ptr, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, align 8, !nonnull !8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, i64 8), align 8, !nonnull !8, !align !469
  %.sroa.3.0 = select i1 %i.i, ptr @15, ptr %i.k
  %.sroa.01.0 = select i1 %i.i, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils11NOOP_TRACER, ptr %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !8, !nonnull !8
  %i.n = tail call { ptr, ptr } %i.m(ptr noundef nonnull %.sroa.01.0, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.p, ptr %i.q, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #37 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.i, !prof !229

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #36
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6future3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIB1O_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB3k_EL_EENCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = insertvalue { ptr, ptr } poison, ptr %i.r, 0
  %i.x = insertvalue { ptr, ptr } %i.w, ptr @16, 1
  ret { ptr, ptr } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1z_5slice4iter4IterNtNtB4_4expr4ExprEINtNtB1z_6option4IterB2J_EEE0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5applyNCINvNtB7_5utils18find_exprs_in_exprNCINvB1R_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB2X_5slice4iter4IterB3_EINtNtB2X_6option4IterB3_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.e ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.g = load i64, ptr %i.b, align 8, !range !696, !alias.scope !693, !noundef !8
  %.not.i = icmp eq i64 %i.g, 20
  br i1 %.not.i, label %bb.h, label %bb.d, !prof !228

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 39, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #36
          to label %bb.f unwind label %bb.e, !noalias !693

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #34
          to label %.body unwind label %bb.g, !noalias !693

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !693
  unreachable

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1C_5slice4iter4IterNtNtB4_4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5applyNCINvNtB7_5utils18find_exprs_in_exprNCINvB1R_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB30_5slice4iter4IterNtB5_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.e ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.g = load i64, ptr %i.b, align 8, !range !696, !alias.scope !697, !noundef !8
  %.not.i = icmp eq i64 %i.g, 20
  br i1 %.not.i, label %bb.h, label %bb.d, !prof !228

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 39, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #36
          to label %bb.f unwind label %bb.e, !noalias !697

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #34
          to label %.body unwind label %bb.g, !noalias !697

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !697
  unreachable

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1u_INtNtNtB1C_5slice4iter4IterNtNtB4_4expr4ExprEINtNtB1C_6option4IterB2R_EEB39_EE0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5applyNCINvNtB7_5utils18find_exprs_in_exprNCINvB1R_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB2S_INtNtNtB30_5slice4iter4IterB3_EINtNtB30_6option4IterB3_EEB4j_EE0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.e ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #34
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecjEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecjEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1283, !nonnull !8, !noundef !8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1283
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #35
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1286, !nonnull !8, !noundef !8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1286
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #35
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1289, !nonnull !8, !noundef !8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1289
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #35
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1292, !nonnull !8, !noundef !8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1292
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #35
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1295, !nonnull !8, !noundef !8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1295
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #35
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  invoke void %i.c(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %.val2 = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.i) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !311, !alias.scope !1298, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #37
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 328, i64 noundef 8) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(2688) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2688, i64 noundef 8) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !range !186, !alias.scope !1301, !noundef !8
  switch i64 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs2VbMhdeEr66_16delta_benchmarks.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

.sink.split.i:                                    ; preds = %bb.e, %bb.b
  %.sink.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.e ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.sink.split.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.sink.split.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %.sink.split.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.sink.split.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #37
  ret void

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.d, %bb.c ], [ %i.g, %bb.f ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !311, !alias.scope !1304, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(352) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(352) %.0.val)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(352) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query17ExcludeSelectItemEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(64) %i.f) #34
          to label %bb.f unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query17ExcludeSelectItemEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(64) %i.g)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16ExceptSelectItemEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.h) #34
          to label %bb.i unwind label %bb.o

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15IlikeSelectItemEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16ExceptSelectItemEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.j)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.f
  %.pn2.i = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn.i, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr24PlannedReplaceSelectItemEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.k) #34
          to label %bb.l unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr24PlannedReplaceSelectItemEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.m)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.i
  %.pn4.i = phi { ptr, i32 } [ %i.o, %bb.m ], [ %.pn2.i, %bb.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 224
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16RenameSelectItemEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(128) %i.n) #34
          to label %bb.q unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 224
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16RenameSelectItemEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(128) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.i, %bb.f, %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #37
  ret void

bb.q:                                             ; preds = %bb.p, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.p ], [ %.pn4.i, %bb.l ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 112, i64 noundef 16) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 24 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.b = load i64, ptr %i.a, align 8, !range !1312, !alias.scope !1309, !noundef !8 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775796
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 12
  switch i64 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs2VbMhdeEr66_16delta_benchmarks.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.i
    i64 3, label %bb.l
    i64 4, label %bb.o
    i64 5, label %bb.r
    i64 6, label %bb.u
    i64 8, label %bb.x
    i64 9, label %bb.aa
    i64 10, label %bb.ad
    i64 11, label %bb.ag
    i64 12, label %bb.aj
    i64 13, label %bb.am
    i64 14, label %bb.ap
    i64 15, label %bb.as
    i64 16, label %bb.av
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bb unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !1309 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !1309, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.l = load ptr, ptr %.val1.i, align 8, !invariant.load !8, !noalias !1309 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.l(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.h, !noalias !1309

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !989, !invariant.load !8, !noalias !1309 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !470, !invariant.load !8, !noalias !1309
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #37, !noalias !1309
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !989, !invariant.load !8, !noalias !1309 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.bb, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !470, !invariant.load !8, !noalias !1309
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) %i.w) #37, !noalias !1309
  br label %bb.bb

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.bb unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.bb unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.bb unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.r:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.bb unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.u:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.bb unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.x:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.bb unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.aa:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.bb unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ad:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.bb unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ag:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.bb unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.aj:                                            ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23.i unwind label %bb.ay

bb.am:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit35.i.invoke unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.bb unwind label %bb.ao
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEECs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1e_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBZ_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1e_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1578, !nonnull !8, !noundef !8
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !1578
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1e_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1605, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1l_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1609, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB1a_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1609, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1610
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ]
  %.sroa.86.013.i.i.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1615
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.o to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i.i.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i.i.i.i, -1     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionBH_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.y), !noalias !1609
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB1a_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB1a_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 48                        ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1l_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB1a_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1605, !nonnull !8, !noundef !8
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !1605
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1l_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1l_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB1a_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1632, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1636, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1636, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !1637
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ]
  %.sroa.86.013.i.i.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !1642
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.o to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i.i.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i.i.i.i, -1     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.y), !noalias !1636
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 48                        ; 2 uses
  %i.ab = add i64 %i.aa, 48                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1632, !nonnull !8, !noundef !8
  %i.ai = sub i64 -48, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !1632
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs2VbMhdeEr66_16delta_benchmarks(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = shl i64 %.8.val, 4                       ; 2 uses
  %i.c = add i64 %i.b, 16                         ; 2 uses
  %i.d = add i64 %.8.val, 17
  %i.e = add i64 %i.d, %i.c                       ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %i.i = sub nuw nsw i64 -16, %i.b
  %i.j = getelementptr inbounds i8, ptr %.0.val, i64 %i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !1647
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #37
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0) #34
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load i8, ptr %i.a, align 8, !range !1650, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %common.ret.sink.split
    i8 3, label %bb.b
  ]

common.ret.sink.split:                            ; preds = %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sink.i.sink = phi ptr [ %i.c, %bb.b ], [ %i.ap, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %0, %bb.a ]
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs8Hz2sPNgbCO_10datafusion10datasource11file_format7options18ParquetReadOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %.sink.i.sink)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.e = load i8, ptr %i.d, align 8, !range !1650, !noundef !8
  switch i8 %i.e, label %common.ret [
    i8 0, label %common.ret.sink.split
    i8 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 832
  %.val.i = load ptr, ptr %i.f, align 8           ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 840
  %.val11.i = load ptr, ptr %i.g, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.h = load ptr, ptr %.val11.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #37
  br label %.body.i

bb.g:                                             ; preds = %.body14.i
  resume { ptr, i32 } %.pn7.i

bb.h:                                             ; preds = %.body14.i, %bb.o, %bb.l, %.body12.i, %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body.i:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 808
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #34
          to label %.body12.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body12.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.k

.body12.i:                                        ; preds = %bb.k, %bb.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.n, %.body.i ], [ %i.z, %bb.k ], [ %i.w, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 704
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscEIReFzlGbb_26datafusion_catalog_listing7options14ListingOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %i.y) #34
          to label %bb.l unwind label %bb.h

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 704
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscEIReFzlGbb_26datafusion_catalog_listing7options14ListingOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %i.aa)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.m, %.body12.i
  %.pn3.i = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %.pn.i, %.body12.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 849
  store i8 0, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution6config13SessionConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ac) #34
          to label %bb.o unwind label %bb.h

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 849
  store i8 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution6config13SessionConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.af)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.l
  %.pn5.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %.pn3.i, %bb.l ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #34
          to label %.body14.i unwind label %bb.h

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body14.i unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body14.i:                                        ; preds = %bb.u, %bb.r, %bb.o
  %.pn7.i = phi { ptr, i32 } [ %.pn5.i, %bb.o ], [ %i.an, %bb.u ], [ %i.aj, %bb.r ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 850
  store i8 0, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 440
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs8Hz2sPNgbCO_10datafusion10datasource11file_format7options18ParquetReadOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.am) #34
          to label %bb.g unwind label %bb.h

bb.u:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 850
  store i8 0, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %common.ret.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.b = load i8, ptr %i.a, align 1, !range !1650, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %bb.o
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 192
  %.val10 = load ptr, ptr %i.d, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.e = load ptr, ptr %.val10, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #37
  br label %.body

.body:                                            ; preds = %bb.f, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1654)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1657, !nonnull !8, !noundef !8
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1657
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1664, !nonnull !8, !noundef !8
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !1664
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit12

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit12 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.body, %bb.g, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.k, %bb.g ], [ %i.k, %.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #34
          to label %.body13 unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit12: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit12
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body13 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit12
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.l

.body13:                                          ; preds = %bb.l, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit
  %.pn4 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.ae, %bb.l ], [ %i.ab, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad) #34
          to label %bb.m unwind label %bb.p

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.n, %.body13
  %.pn6 = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %.pn4, %.body13 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 203
  store i8 0, ptr %i.ag, align 1
  resume { ptr, i32 } %.pn6

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 203
  store i8 0, ptr %i.ai, align 1
  br label %common.ret

bb.p:                                             ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, %.body13
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext5tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i8, ptr %i.a, align 8, !range !1650, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %bb.s
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load i8, ptr %i.c, align 8, !range !1650, !noundef !8
  switch i8 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks.exit [
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.f, align 8           ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 296
  %.val8.i = load ptr, ptr %i.g, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.h = load ptr, ptr %.val8.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #37
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1671, !nonnull !8, !noundef !8
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !1671
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.i:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1678, !nonnull !8, !noundef !8
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !1678
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit10.i

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit10.i unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.k, %bb.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.n, %bb.i ], [ %i.n, %.body.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #34
          to label %.body11.i unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit10.i: ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit10.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body11.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit10.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.n

.body11.i:                                        ; preds = %bb.n, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.pn4.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.ah, %bb.n ], [ %i.ae, %bb.l ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 0, ptr %i.ag, align 1
  br label %.body

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 0, ptr %i.ai, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.p:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body11.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %.pn4.i, %.body11.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.al) #34
          to label %bb.q unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %.body
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %eh.lpad-body, %.body ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.an, align 1
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext14table_providerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.ap, align 1
  br label %common.ret

bb.t:                                             ; preds = %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i8, ptr %i.a, align 8, !range !1650, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.h
  ]

common.ret:                                       ; preds = %bb.m, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i7, %bb.k, %bb.h, %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !range !1650, !noundef !8
  switch i8 %i.d, label %common.ret [
    i8 0, label %bb.c
    i8 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8             ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.f = load ptr, ptr %.val2.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %common.ret, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #37
  br label %common.ret

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i5, %bb.f, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ac, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i5 ], [ %i.ac, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.r)
  br label %common.ret

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i8, ptr %i.s, align 8, !range !1650, !noundef !8
  switch i8 %i.t, label %common.ret [
    i8 0, label %bb.i
    i8 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i2 = load ptr, ptr %i.u, align 8          ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 80
  %.val2.i3 = load ptr, ptr %i.v, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.w = load ptr, ptr %.val2.i3, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2) ]
  invoke void %i.w(ptr noundef nonnull %.val.i2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i3, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.ret, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i7

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i7: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #37
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i5

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i5: ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2.i3, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #37
  br label %common.resume

bb.m:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ai)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !1650, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.f
  ]

common.ret:                                       ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.d = load ptr, ptr %.val2, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %common.ret, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.i) #37
  br label %common.ret

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.p)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks4main0EBK_(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.b = load i8, ptr %i.a, align 1, !range !1679, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 6, label %bb.bg
    i8 3, label %bb.b
    i8 4, label %bb.u
    i8 5, label %bb.ag
  ]

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.d = load i8, ptr %i.c, align 2, !range !1680, !noundef !8
  switch i8 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks14run_merge_case0EBK_.exit [
    i8 4, label %bb.d
    i8 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge24prepare_source_and_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.e)
          to label %bb.o unwind label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.g = load i8, ptr %i.f, align 16, !range !1650, !noundef !8
  switch i8 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsdJxlLsGgtXr_16delta_benchmarks5mergeNtBN_13MergeTestCase7execute0ECs2VbMhdeEr66_16delta_benchmarks.exit.i [
    i8 0, label %bb.e
    i8 3, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %.val.i.i.i = load ptr, ptr %i.i, align 16, !alias.scope !1681, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i.i.i)
          to label %bb.f unwind label %.body.i.i.i, !noalias !1681

.body.i.i.i:                                      ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 1680, i64 noundef 8) #37, !noalias !1681
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.h) #34
          to label %.body.i.i unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 1680, i64 noundef 8) #37, !noalias !1681
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.l

bb.g:                                             ; preds = %.body.i.i.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.val.i.i = load ptr, ptr %i.l, align 16        ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 1224
  %.val4.i.i = load ptr, ptr %i.m, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.n = load ptr, ptr %.val4.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.n(ptr noundef nonnull %.val.i.i)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsdJxlLsGgtXr_16delta_benchmarks5mergeNtBN_13MergeTestCase7execute0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsdJxlLsGgtXr_16delta_benchmarks5mergeNtBN_13MergeTestCase7execute0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #37
  br label %.body.i

bb.l:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.j, %.body.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1576
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.aa) #34
          to label %.body.i unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1576
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsdJxlLsGgtXr_16delta_benchmarks5mergeNtBN_13MergeTestCase7execute0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.s

bb.m:                                             ; preds = %.body.i.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.n:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsdJxlLsGgtXr_16delta_benchmarks5mergeNtBN_13MergeTestCase7execute0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  invoke void @_RNvXs1_NtCs3Tb271uPz9Q_8tempfile3dirNtB5_7TempDirNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val3.i.i = load i64, ptr %i.ag, align 16, !alias.scope !1684, !noundef !8 ; 2 uses
  %i.ah = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ah, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.p
  %.val2.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !1684, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val3.i.i, i64 noundef 1) #37
  br label %.body

bb.q:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val1.i.i = load i64, ptr %i.ai, align 16, !alias.scope !1684, !noundef !8 ; 2 uses
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks14run_merge_case0EBK_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i: ; preds = %bb.q
  %.val.i4.i = load ptr, ptr %i.ae, align 8, !alias.scope !1684, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4.i, i64 noundef %.val1.i.i, i64 noundef 1) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks14run_merge_case0EBK_.exit

bb.r:                                             ; preds = %.body.i, %bb.n
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ad, %bb.n ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #34
          to label %.body unwind label %bb.t

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %.body.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.al, %bb.s ], [ %i.t, %bb.k ], [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 0, ptr %i.an, align 1
  br label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsdJxlLsGgtXr_16delta_benchmarks5mergeNtBN_13MergeTestCase7execute0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.j, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 0, ptr %i.ap, align 1
  br label %bb.o

bb.t:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.u:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.as = load i8, ptr %i.ar, align 2, !range !1680, !noundef !8
  switch i8 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks14run_merge_case0EBK_.exit [
    i8 4, label %bb.w
    i8 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge24prepare_source_and_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.at)
          to label %bb.ab unwind label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val.i = load ptr, ptr %i.au, align 8          ; 5 uses
  %i.av = getelementptr i8, ptr %0, i64 224
  %.val6.i = load ptr, ptr %i.av, align 16, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.aw = load ptr, ptr %.val6.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.aw(ptr noundef nonnull %.val.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB2z_10operations5merge12MergeMetricsENtNtB2z_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i25

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i25: ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB2z_10operations5merge12MergeMetricsENtNtB2z_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.body.i24, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) %i.bh) #37
  br label %.body.i24

bb.aa:                                            ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB2z_10operations5merge12MergeMetricsENtNtB2z_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_RNvXs1_NtCs3Tb271uPz9Q_8tempfile3dirNtB5_7TempDirNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3.i.i19 = load i64, ptr %i.bl, align 16, !alias.scope !1687, !noundef !8 ; 2 uses
  %i.bm = icmp eq i64 %.val3.i.i19, 0
  br i1 %i.bm, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i7.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i7.i: ; preds = %bb.ac
  %.val2.i.i20 = load ptr, ptr %i.bj, align 8, !alias.scope !1687, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i20, i64 noundef %.val3.i.i19, i64 noundef 1) #37
  br label %.body

bb.ad:                                            ; preds = %bb.ab
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1.i.i21 = load i64, ptr %i.bn, align 16, !alias.scope !1687, !noundef !8 ; 2 uses
  %i.bo = icmp eq i64 %.val1.i.i21, 0
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks14run_merge_case0EBK_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i22

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i22: ; preds = %bb.ad
  %.val.i.i23 = load ptr, ptr %i.bj, align 8, !alias.scope !1687, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i23, i64 noundef %.val1.i.i21, i64 noundef 1) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks14run_merge_case0EBK_.exit

bb.ae:                                            ; preds = %.body.i24, %bb.aa
  %.pn.i16 = phi { ptr, i32 } [ %i.bc, %.body.i24 ], [ %i.bi, %bb.aa ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.bp) #34
          to label %.body unwind label %bb.af

.body.i24:                                        ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.bq, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 0, ptr %i.br, align 1
  br label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB2z_10operations5merge12MergeMetricsENtNtB2z_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i25, %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.bs, align 16
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 0, ptr %i.bt, align 1
  br label %bb.ab

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ag:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 637
  %i.bw = load i8, ptr %i.bv, align 1, !range !1690, !noundef !8
  switch i8 %i.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once0ECs2VbMhdeEr66_16delta_benchmarks.exit [
    i8 7, label %bb.ar
    i8 3, label %bb.ah
    i8 4, label %bb.ai
    i8 5, label %bb.am
    i8 6, label %bb.aq
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 680
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtBN_5table10DeltaTable12try_from_url0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.bx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.as

bb.ai:                                            ; preds = %bb.ag
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.val.i29 = load ptr, ptr %i.by, align 16       ; 5 uses
  %i.bz = getelementptr i8, ptr %0, i64 648
  %.val18.i = load ptr, ptr %i.bz, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.ca = load ptr, ptr %.val18.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i30, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i29) ]
  invoke void %i.ca(ptr noundef nonnull %.val.i29)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i32

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i32: ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i29) ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i29, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.body.i28, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i31

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i31: ; preds = %bb.al
  %i.ck = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i29, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #37
  br label %.body.i28

bb.am:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.val19.i = load ptr, ptr %i.cm, align 8        ; 5 uses
  %i.cn = getelementptr i8, ptr %0, i64 656
  %.val20.i = load ptr, ptr %i.cn, align 16, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.co = load ptr, ptr %.val20.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i21.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i) ]
  invoke void %i.co(ptr noundef nonnull %.val19.i)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cp = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i23.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i23.i: ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) %i.ct) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.body24.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i22.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i22.i: ; preds = %bb.ap
  %i.cy = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) %i.cz) #37
  br label %.body24.i

bb.aq:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.da)
          to label %bb.au unwind label %bb.at

bb.ar:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.db)
          to label %bb.au unwind label %bb.aw

bb.as:                                            ; preds = %bb.ah
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i28

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.az, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i32, %bb.ak, %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !range !1691, !noundef !8
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.bc, label %bb.bb

.body.i28:                                        ; preds = %bb.ba, %bb.ax, %bb.as, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i31, %bb.al
  %.pn14.i = phi { ptr, i32 } [ %i.ds, %bb.ba ], [ %.pn12.i, %bb.ax ], [ %i.dc, %bb.as ], [ %i.cg, %bb.al ], [ %i.cg, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i31 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.dh = load i8, ptr %i.dg, align 8, !range !1691, !noundef !8
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.bf, label %.body33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.au, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i23.i, %bb.ao
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.dj)
          to label %bb.az unwind label %bb.ay

.body24.i:                                        ; preds = %bb.av, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i22.i, %bb.ap
  %.pn9.pn.i = phi { ptr, i32 } [ %.pn9.i, %bb.av ], [ %i.cu, %bb.ap ], [ %i.cu, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i22.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.dk) #34
          to label %bb.ax unwind label %bb.be

bb.at:                                            ; preds = %bb.aq
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ar, %bb.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 633
  store i8 0, ptr %i.dm, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.av:                                            ; preds = %bb.aw, %bb.at
  %.pn9.i = phi { ptr, i32 } [ %i.do, %bb.aw ], [ %i.dl, %bb.at ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 633
  store i8 0, ptr %i.dn, align 1
  br label %.body24.i

bb.aw:                                            ; preds = %bb.ar
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %bb.ay, %.body24.i
  %.pn12.i = phi { ptr, i32 } [ %i.dq, %bb.ay ], [ %.pn9.pn.i, %.body24.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 496
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.dp) #34
          to label %.body.i28 unwind label %bb.be

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 496
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.dr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body.i28

bb.bb:                                            ; preds = %bb.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i8 0, ptr %i.dd, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 634
  store i8 0, ptr %i.dt, align 2
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 635
  store i8 0, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i8 0, ptr %i.dv, align 4
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.dw)
          to label %bb.bb unwind label %bb.bd

.body33:                                          ; preds = %bb.bf, %bb.bd, %.body.i28
  %.pn16.i = phi { ptr, i32 } [ %i.ec, %bb.bd ], [ %.pn14.i, %bb.bf ], [ %.pn14.i, %.body.i28 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i8 0, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 634
  store i8 0, ptr %i.dy, align 2
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 635
  store i8 0, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i8 0, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.eb) #34
          to label %.body61 unwind label %bb.ff

bb.bd:                                            ; preds = %bb.bc
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.be:                                            ; preds = %bb.bf, %bb.ax, %.body24.i
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bf:                                            ; preds = %.body.i28
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ee) #34
          to label %.body33 unwind label %bb.be

bb.bg:                                            ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 345
  %i.eg = load i8, ptr %i.ef, align 1, !range !1692, !noundef !8
  switch i8 %i.eg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks15run_tpcds_query0EBK_.exit [
    i8 5, label %bb.ep
    i8 3, label %bb.bh
    i8 4, label %bb.eo
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1030
  %i.ei = load i8, ptr %i.eh, align 2, !range !1693, !noundef !8
  switch i8 %i.ei, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks13tpcds_queries21register_tpcds_tables0ECs2VbMhdeEr66_16delta_benchmarks.exit.i [
    i8 9, label %bb.db
    i8 3, label %bb.bi
    i8 4, label %bb.cl
    i8 5, label %bb.cr
    i8 6, label %bb.cs
    i8 7, label %bb.ct
    i8 8, label %bb.cx
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.el = load i8, ptr %i.ek, align 8, !range !1650, !noundef !8
  switch i8 %i.el, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i [
    i8 0, label %bb.bj
    i8 3, label %bb.bm
  ]

common.ret.sink.split.i.i.i:                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %.sink.i.sink.i.i.i = phi ptr [ %i.ep, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ], [ %i.gg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i ], [ %i.ej, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs8Hz2sPNgbCO_10datafusion10datasource11file_format7options18ParquetReadOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %.sink.i.sink.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.df

bb.bj:                                            ; preds = %bb.bi
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %.body.i.i.i50 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.bj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %common.ret.sink.split.i.i.i unwind label %bb.cj

bb.bm:                                            ; preds = %bb.bi
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.er = load i8, ptr %i.eq, align 16, !range !1650, !noundef !8
  switch i8 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i [
    i8 0, label %bb.bn
    i8 3, label %bb.bq
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %.body.i.i.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %common.ret.sink.split.i.i.i unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bm
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %.val.i.i.i.i = load ptr, ptr %i.ev, align 16   ; 5 uses
  %i.ew = getelementptr i8, ptr %0, i64 1912
  %.val11.i.i.i.i = load ptr, ptr %i.ew, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.ex = load ptr, ptr %.val11.i.i.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.ex(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ey = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) %i.fc) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.body12.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.bt
  %i.fh = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) %i.fi) #37
  br label %.body12.i.i.i.i

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.bu, %bb.bo
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.bu ], [ %i.et, %bb.bo ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs8Hz2sPNgbCO_10datafusion10datasource11file_format7options18ParquetReadOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ep) #34
          to label %.body.i.i45 unwind label %bb.bv

bb.bv:                                            ; preds = %.body19.i.i.i.i, %bb.cc, %bb.bz, %.body16.i.i.i.i, %.body12.i.i.i.i, %.body.i.i.i.i
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body12.i.i.i.i:                                  ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.bt
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1880
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fl) #34
          to label %.body16.i.i.i.i unwind label %bb.bv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.bs
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i15.i.i.i.i unwind label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %.body16.i.i.i.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i15.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit18.i.i.i.i unwind label %bb.by

.body16.i.i.i.i:                                  ; preds = %bb.by, %bb.bw, %.body12.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fd, %.body12.i.i.i.i ], [ %i.fq, %bb.by ], [ %i.fn, %bb.bw ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1776
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscEIReFzlGbb_26datafusion_catalog_listing7options14ListingOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %i.fp) #34
          to label %bb.bz unwind label %bb.bv

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i15.i.i.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body16.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit18.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i15.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1776
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscEIReFzlGbb_26datafusion_catalog_listing7options14ListingOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %i.fr)
          to label %bb.cb unwind label %bb.ca

bb.bz:                                            ; preds = %bb.ca, %.body16.i.i.i.i
  %.pn3.i.i.i.i = phi { ptr, i32 } [ %i.fu, %bb.ca ], [ %.pn.i.i.i.i, %.body16.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1921
  store i8 0, ptr %i.fs, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1736
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution6config13SessionConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ft) #34
          to label %bb.cc unwind label %bb.bv

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit18.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit18.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1921
  store i8 0, ptr %i.fv, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1736
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution6config13SessionConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.fw)
          to label %bb.ce unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cd, %bb.bz
  %.pn5.i.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %.pn3.i.i.i.i, %bb.bz ]
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1712
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.fx) #34
          to label %.body19.i.i.i.i unwind label %bb.bv

bb.cd:                                            ; preds = %bb.cb
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ce:                                            ; preds = %bb.cb
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %.body19.i.i.i.i unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body19.i.i.i.i:                                  ; preds = %bb.ci, %bb.cf, %bb.cc
  %.pn7.i.i.i.i = phi { ptr, i32 } [ %.pn5.i.i.i.i, %bb.cc ], [ %i.ge, %bb.ci ], [ %i.ga, %bb.cf ]
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1922
  store i8 0, ptr %i.gc, align 2
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs8Hz2sPNgbCO_10datafusion10datasource11file_format7options18ParquetReadOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.gd) #34
          to label %.body.i.i45 unwind label %bb.bv

bb.ci:                                            ; preds = %bb.cg
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.cg
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1922
  store i8 0, ptr %i.gf, align 2
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1512
  br label %common.ret.sink.split.i.i.i

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i50

.body.i.i.i50:                                    ; preds = %bb.cj, %bb.bk
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.gh, %bb.cj ], [ %i.en, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs8Hz2sPNgbCO_10datafusion10datasource11file_format7options18ParquetReadOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ej) #34
          to label %.body.i.i45 unwind label %bb.ck

bb.ck:                                            ; preds = %.body.i.i.i50
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.cl:                                            ; preds = %bb.bh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.gk = load i8, ptr %i.gj, align 8, !range !1650, !noundef !8
  %cond.i.i.i = icmp eq i8 %i.gk, 3
  br i1 %cond.i.i.i, label %bb.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.gn = load i8, ptr %i.gm, align 16, !range !1650, !noundef !8
  switch i8 %i.gn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i [
    i8 0, label %bb.cn
    i8 3, label %bb.cq
  ]

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %.body30.i.i unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.cn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.dg

bb.cq:                                            ; preds = %bb.cm
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.dg

bb.cr:                                            ; preds = %bb.bh
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1136
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.gr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.dj

bb.cs:                                            ; preds = %bb.bh
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtBN_5table10DeltaTable12try_from_url0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.gs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i unwind label %bb.dk

bb.ct:                                            ; preds = %bb.bh
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.val26.i.i = load ptr, ptr %i.gt, align 8      ; 5 uses
  %i.gu = getelementptr i8, ptr %0, i64 1168
  %.val27.i.i = load ptr, ptr %i.gu, align 16, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.gv = load ptr, ptr %.val27.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i47, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i.i) ]
  invoke void %i.gv(ptr noundef nonnull %.val26.i.i)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.gw = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i49

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i49: ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i.i) ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26.i.i, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) %i.ha) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %.body34.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i48

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i48: ; preds = %bb.cw
  %i.hf = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26.i.i, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) %i.hg) #37
  br label %.body34.i.i

bb.cx:                                            ; preds = %bb.bh
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %.val.i.i44 = load ptr, ptr %i.hh, align 16     ; 5 uses
  %i.hi = getelementptr i8, ptr %0, i64 1048
  %.val25.i.i = load ptr, ptr %i.hi, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.hj = load ptr, ptr %.val25.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i36.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i36.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i44) ]
  invoke void %i.hj(ptr noundef nonnull %.val.i.i44)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.hk = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i39.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i39.i.i: ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i44) ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i44, i64 noundef %i.hl, i64 noundef range(i64 1, -9223372036854775807) %i.ho) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i

bb.da:                                            ; preds = %bb.cy
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %.body40.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i37.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i37.i.i: ; preds = %bb.da
  %i.ht = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i44, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) %i.hu) #37
  br label %.body40.i.i

bb.db:                                            ; preds = %bb.bh
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %.val28.i.i = load ptr, ptr %i.hv, align 16     ; 5 uses
  %i.hw = getelementptr i8, ptr %0, i64 1192
  %.val29.i.i = load ptr, ptr %i.hw, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.hx = load ptr, ptr %.val29.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i43.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i43.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val28.i.i) ]
  invoke void %i.hx(ptr noundef nonnull %.val28.i.i)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.hy = getelementptr inbounds nuw i8, ptr %.val29.i.i, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i45.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i45.i.i: ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val28.i.i) ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.val29.i.i, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i, i64 noundef %i.hz, i64 noundef range(i64 1, -9223372036854775807) %i.ic) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.de:                                            ; preds = %bb.dc
  %i.id = landingpad { ptr, i32 }
          cleanup
  %i.ie = getelementptr inbounds nuw i8, ptr %.val29.i.i, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 0
  br i1 %i.ig, label %.body46.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i44.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i44.i.i: ; preds = %bb.de
  %i.ih = getelementptr inbounds nuw i8, ptr %.val29.i.i, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) %i.ii) #37
  br label %.body46.i.i

bb.df:                                            ; preds = %common.ret.sink.split.i.i.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i45

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.eh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.bm, %common.ret.sink.split.i.i.i, %bb.bi
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 1027
  store i8 0, ptr %i.ik, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1029
  store i8 0, ptr %i.il, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 368
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.im)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks13tpcds_queries21register_tpcds_tables0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.eq

.body.i.i45:                                      ; preds = %bb.en, %bb.ej, %.body.i60.i.i, %.body48.i.i, %bb.df, %.body.i.i.i50, %.body19.i.i.i.i, %.body.i.i.i.i
  %.pn21.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i50 ], [ %.pn19.i.i, %bb.en ], [ %.pn19.i.i, %.body48.i.i ], [ %i.ij, %bb.df ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %.pn7.i.i.i.i, %.body19.i.i.i.i ], [ %i.lc, %bb.ej ], [ %i.la, %.body.i60.i.i ]
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1027
  store i8 0, ptr %i.in, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1029
  store i8 0, ptr %i.io, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 368
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.ip) #34
          to label %.body.i36 unwind label %bb.dm

bb.dg:                                            ; preds = %bb.cq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.cq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %bb.cm, %bb.cl
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ir)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ir)
          to label %.body48.i.i unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtNtCskQDtHcQtBkN_5tokio2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ir)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ef

.body30.i.i:                                      ; preds = %.body57.i.i, %bb.dg, %bb.co
  %.pn16.pn.i.i = phi { ptr, i32 } [ %.pn16.i.i, %.body57.i.i ], [ %i.iq, %bb.dg ], [ %i.go, %bb.co ]
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 944
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.iu) #34
          to label %.body48.i.i unwind label %bb.dm

bb.dj:                                            ; preds = %bb.cr
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.dv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.cr
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1025
  store i8 0, ptr %i.iw, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 768
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(144) %i.ix)
          to label %bb.ea unwind label %bb.dz

.body55.i.i:                                      ; preds = %bb.el, %bb.dx, %bb.du, %.body52.i.i, %bb.dj
  %.pn12.i.i = phi { ptr, i32 } [ %i.iv, %bb.dj ], [ %.pn10.i.i, %bb.el ], [ %.pn10.i.i, %.body52.i.i ], [ %i.ke, %bb.dx ], [ %i.kc, %bb.du ]
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 1025
  store i8 0, ptr %i.iy, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 768
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(144) %i.iz) #34
          to label %bb.dy unwind label %bb.dm

bb.dk:                                            ; preds = %bb.cs
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i.i

.body34.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i48, %bb.cw
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.jb) #34
          to label %.body40.i.i unwind label %bb.dm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i49, %bb.cv
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.jc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i unwind label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i39.i.i, %bb.cz, %bb.cs
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i8 0, ptr %i.je, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 16, !range !1691, !noundef !8
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.dm:                                            ; preds = %bb.en, %bb.em, %bb.el, %bb.ek, %.body46.i.i, %.body34.i.i, %.body55.i.i, %.body30.i.i, %.body.i.i45
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body40.i.i:                                      ; preds = %bb.dn, %.body46.i.i, %bb.dl, %.body34.i.i, %bb.dk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i37.i.i, %bb.da
  %.pn8.i.i = phi { ptr, i32 } [ %i.jp, %bb.dn ], [ %i.id, %.body46.i.i ], [ %i.hb, %.body34.i.i ], [ %i.ja, %bb.dk ], [ %i.jd, %bb.dl ], [ %i.hp, %bb.da ], [ %i.hp, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i37.i.i ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i8 0, ptr %i.jj, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.jl = load i8, ptr %i.jk, align 16, !range !1691, !noundef !8
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.ek, label %.body52.i.i

.body46.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i44.i.i, %bb.de
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.jn) #34
          to label %.body40.i.i unwind label %bb.dm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i45.i.i, %bb.dd
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.jo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i unwind label %bb.dn

bb.dn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.dq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i
  store i8 0, ptr %i.jf, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 1025
  %i.jr = load i8, ptr %i.jq, align 1, !range !1691, !noundef !8
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.dt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.do:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %bb.dq unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %.body52.i.i unwind label %bb.dr

bb.dq:                                            ; preds = %bb.do
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body52.i.i:                                      ; preds = %bb.ek, %bb.ds, %bb.dp, %.body40.i.i
  %.pn10.i.i = phi { ptr, i32 } [ %.pn8.i.i, %.body40.i.i ], [ %.pn8.i.i, %bb.ek ], [ %i.ka, %bb.ds ], [ %i.ju, %bb.dp ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i8 0, ptr %i.jw, align 16
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1025
  %i.jy = load i8, ptr %i.jx, align 1, !range !1691, !noundef !8
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.el, label %.body55.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i.i

bb.dt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kc = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks4main0EBK_:bb.a
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %.body68 ], [ %.pn, %.body61 ], [ %.pn9, %.body ], [ %i.mc, %bb.fa ], [ %i.mf, %bb.fc ], [ %i.my, %bb.fl ], [ %i.mw, %bb.fj ]
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.mk) #34
          to label %common.resume unwind label %bb.ff

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.bb, %bb.ag
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.mn = load i8, ptr %i.mm, align 16, !range !822, !alias.scope !1703, !noundef !8
  %i.mo = icmp eq i8 %i.mn, 2
  br i1 %i.mo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fg

bb.fg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once0ECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXs1_NtCs3Tb271uPz9Q_8tempfile3dirNtB5_7TempDirNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ml)
          to label %bb.fi unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.mp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val3.i.i55 = load i64, ptr %i.mq, align 8, !alias.scope !1706, !noundef !8 ; 2 uses
  %i.mr = icmp eq i64 %.val3.i.i55, 0
  br i1 %i.mr, label %.body61, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i56

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i56: ; preds = %bb.fh
  %.val2.i.i57 = load ptr, ptr %i.ml, align 16, !alias.scope !1706, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i57, i64 noundef %.val3.i.i55, i64 noundef 1) #37
  br label %.body61

bb.fi:                                            ; preds = %bb.fg
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val1.i.i58 = load i64, ptr %i.ms, align 8, !alias.scope !1706, !noundef !8 ; 2 uses
  %i.mt = icmp eq i64 %.val1.i.i58, 0
  br i1 %i.mt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i59

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i59: ; preds = %bb.fi
  %.val.i.i60 = load ptr, ptr %i.ml, align 16, !alias.scope !1706, !nonnull !8, !noundef !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i60, i64 noundef %.val1.i.i58, i64 noundef 1) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirEECs2VbMhdeEr66_16delta_benchmarks.exit

.body61:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i56, %bb.fh, %.body33
  %.pn = phi { ptr, i32 } [ %.pn16.i, %.body33 ], [ %i.mp, %bb.fh ], [ %i.mp, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i56 ]
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.mu) #34
          to label %.body53 unwind label %bb.ff

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i59, %bb.fi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.mv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i64 unwind label %bb.fj

bb.fj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.mw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.mv)
          to label %.body53 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.mx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i64: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirEECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.mv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.fl

bb.fl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i64
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body51:                                          ; preds = %bb.er, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i40, %.body.i36
  %eh.lpad-body52 = phi { ptr, i32 } [ %.pn2.i, %.body.i36 ], [ %i.ll, %bb.er ], [ %i.ll, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i40 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mz) #34
          to label %.body68 unwind label %bb.ff

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks15run_tpcds_query0EBK_.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i43, %bb.es, %bb.bg
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.na)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.fm

bb.fm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks15run_tpcds_query0EBK_.exit
  %i.nb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.na)
          to label %.body68 unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvCs2VbMhdeEr66_16delta_benchmarks15run_tpcds_query0EBK_.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.na)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.fo

bb.fo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body68

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.ne, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit

.body68:                                          ; preds = %bb.fo, %bb.fm, %.body51
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body52, %.body51 ], [ %i.nd, %bb.fo ], [ %i.nb, %bb.fm ]
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.nf, align 16
  br label %.body53
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtBN_5table10DeltaTable12try_from_url0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load i8, ptr %i.a, align 8, !range !1650, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.e
  ]

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a, %bb.az
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.ax
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  br label %common.ret

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.f = load i8, ptr %i.e, align 8, !range !1650, !noundef !8
  %cond.i = icmp eq i8 %i.f, 3
  br i1 %cond.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.h = load i8, ptr %i.g, align 8, !range !1650, !noundef !8
  %cond.i.i = icmp eq i8 %i.h, 3
  br i1 %cond.i.i, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.j = load i8, ptr %i.i, align 8, !range !1680, !noundef !8
  switch i8 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit [
    i8 0, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.aw

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.val.i.i.i = load ptr, ptr %i.l, align 8       ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 472
  %.val6.i.i.i = load ptr, ptr %i.m, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.n = load ptr, ptr %.val6.i.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.n(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #37
  br label %.body.i.i.i

bb.m:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ab = load i8, ptr %i.aa, align 8, !range !1680, !noundef !8
  switch i8 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i [
    i8 0, label %common.ret.sink.split.i.i.i.i
    i8 3, label %bb.n
    i8 4, label %bb.aa
  ]

common.ret.sink.split.i.i.i.i:                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %bb.m
  %.sink12.i.i.i.i = phi i64 [ 120, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i ], [ 16, %bb.m ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink12.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ap

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ae = load i8, ptr %i.ad, align 8, !range !1650, !noundef !8
  switch i8 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i [
    i8 0, label %bb.o
    i8 3, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 608
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.am

bb.p:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.ai = load i8, ptr %i.ah, align 8, !range !1650, !noundef !8
  switch i8 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot19try_new_with_engine0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i [
    i8 0, label %bb.q
    i8 3, label %bb.s
  ]

common.ret.sink.split.i.i.i.i.i.i:                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i.i, %bb.s
  %.sink8.i.i.i.i.i.i = phi i64 [ 16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i.i ], [ 192, %bb.s ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink8.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot19try_new_with_engine0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1715, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1715
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i unwind label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1048
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2j_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %common.ret.sink.split.i.i.i.i.i.i unwind label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 872
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.aq) #34
          to label %.body.i.i.i.i.i.i unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ar)
          to label %.body.i.i.i.i.i.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ar)
          to label %common.ret.sink.split.i.i.i.i.i.i unwind label %bb.w

.body.i.i.i.i.i.i:                                ; preds = %bb.w, %bb.u, %bb.t
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %i.av, %bb.w ], [ %i.as, %bb.u ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 800
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.au) #34
          to label %.body.i.i.i.i.i unwind label %bb.x

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.y, %.body.i.i.i.i.i.i, %bb.t
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.y:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 976
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.ay) #34
          to label %.body.i.i.i.i.i unwind label %bb.x

bb.z:                                             ; preds = %common.ret.sink.split.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.z, %bb.y, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.az, %bb.z ], [ %i.ax, %bb.y ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1065
  store i8 0, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1066
  store i8 0, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1067
  store i8 0, ptr %i.bc, align 1
  br label %.body.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot19try_new_with_engine0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %common.ret.sink.split.i.i.i.i.i.i, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1065
  store i8 0, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1066
  store i8 0, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1067
  store i8 0, ptr %i.bf, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bh = load i8, ptr %i.bg, align 8, !range !1650, !noundef !8
  switch i8 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i [
    i8 0, label %bb.ab
    i8 3, label %bb.ac
  ]

common.ret.sink.split.i.i.i.i.i:                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.ab
  %.sink.i.i.i.i.i = phi ptr [ %i.bi, %bb.ab ], [ %i.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink.i.i.i.i.i) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.an

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !1722, !nonnull !8, !noundef !8
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !1722
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %common.ret.sink.split.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !1723 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !1723, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.bp = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !8, !noalias !1723 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.bp(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.ae unwind label %bb.af, !noalias !1723

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !989, !invariant.load !8, !noalias !1723 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !470, !invariant.load !8, !noalias !1723
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bu) #37, !noalias !1723
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !989, !invariant.load !8, !noalias !1723 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.body.i.i4.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !470, !invariant.load !8, !noalias !1723
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #37, !noalias !1723
  br label %.body.i.i4.i.i.i.i

.body.i.i4.i.i.i.i:                               ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i, %bb.af
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm) #34
          to label %.body.i5.i.i.i.i unwind label %bb.ai

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.ae
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm)
          to label %.body.i5.i.i.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.aj

bb.ai:                                            ; preds = %.body.i.i4.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.i5.i.i.i.i

.body.i5.i.i.i.i:                                 ; preds = %bb.aj, %bb.ag, %.body.i.i4.i.i.i.i
  %eh.lpad-body.i6.i.i.i.i = phi { ptr, i32 } [ %i.ce, %bb.aj ], [ %i.cb, %bb.ag ], [ %i.bv, %.body.i.i4.i.i.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !1732, !nonnull !8, !noundef !8
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !1732
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.ak, label %.body.i.i.i.i

bb.ak:                                            ; preds = %.body.i5.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cf) #35
          to label %.body.i.i.i.i unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !1739, !nonnull !8, !noundef !8
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !1739
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %common.ret.sink.split.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.am:                                            ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot7try_new0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.ab, %common.ret.sink.split.i.i.i.i.i, %bb.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot19try_new_with_engine0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, %bb.o, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 585
  store i8 0, ptr %i.cp, align 1
  br label %common.ret.sink.split.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.an, %bb.am, %bb.ak, %.body.i5.i.i.i.i, %.body.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.co, %bb.am ], [ %i.cs, %bb.an ], [ %eh.lpad-body.i6.i.i.i.i, %bb.ak ], [ %eh.lpad-body.i6.i.i.i.i, %.body.i5.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 585
  store i8 0, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.cr) #34
          to label %.body.i.i.i unwind label %bb.ao

bb.an:                                            ; preds = %common.ret.sink.split.i.i.i.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ao:                                            ; preds = %.body.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %common.ret.sink.split.i.i.i.i, %bb.m, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 385 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !range !1691, !noundef !8
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.ar, label %bb.aq

.body.i.i.i:                                      ; preds = %bb.ap, %.body.i.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.t, %bb.l ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.da, %bb.ap ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 385
  %i.cy = load i8, ptr %i.cx, align 1, !range !1691, !noundef !8
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.au, label %bb.as

bb.ap:                                            ; preds = %common.ret.sink.split.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aq:                                            ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  store i8 0, ptr %i.cu, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.db)
          to label %bb.aq unwind label %bb.at

bb.as:                                            ; preds = %bb.au, %bb.at, %.body.i.i.i
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.dd, %bb.at ], [ %.pn.i.i.i, %bb.au ], [ %.pn.i.i.i, %.body.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 385
  store i8 0, ptr %i.dc, align 1
  br label %.body

bb.at:                                            ; preds = %bb.ar
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.au:                                            ; preds = %.body.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.de) #34
          to label %bb.as unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.aw:                                            ; preds = %bb.h
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.as, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.dg, %bb.aw ], [ %.pn2.i.i.i, %bb.as ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.dh) #34
          to label %bb.ax unwind label %bb.ba

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.aq, %bb.g, %bb.f, %bb.e, %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.di)
          to label %bb.az unwind label %bb.ay

bb.ax:                                            ; preds = %bb.ay, %.body
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.ay ], [ %eh.lpad-body, %.body ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1089
  store i8 0, ptr %i.dj, align 1
  br label %common.resume

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable4load0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1089
  store i8 0, ptr %i.dl, align 1
  br label %common.ret

bb.ba:                                            ; preds = %.body
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTjINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i6 unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTjINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body.i6:                                         ; preds = %bb.p, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.ab, %bb.p ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 0, ptr %i.aa, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_set7JoinSetTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #34
          to label %bb.q unwind label %bb.k

bb.p:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 0, ptr %i.ac, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_set7JoinSetTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %.body.i6
  %.pn2.i = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %.pn.i, %.body.i6 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 793
  store i8 0, ptr %i.ad, align 1
  br label %.body

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 793
  store i8 0, ptr %i.af, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.t:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e, %bb.j, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 674
  store i8 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 673 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !1691, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit

.body:                                            ; preds = %bb.u, %bb.q, %bb.i, %bb.h, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.t ], [ %i.ap, %bb.u ], [ %.pn2.i, %bb.q ], [ %i.n, %bb.i ], [ %i.n, %bb.h ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 674
  store i8 0, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 673
  %i.an = load i8, ptr %i.am, align 1, !range !1691, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9

bb.u:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.v, %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks.exit
  store i8 0, ptr %i.ai, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 675
  store i8 0, ptr %i.aq, align 1
  br label %common.ret

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.as = load ptr, ptr %i.ar, align 16, !alias.scope !1770, !nonnull !8, !noundef !8
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !1770
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9: ; preds = %bb.y, %bb.z, %bb.x, %.body
  %.pn2 = phi { ptr, i32 } [ %i.ax, %bb.x ], [ %.pn, %.body ], [ %.pn, %bb.z ], [ %.pn, %bb.y ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 673
  store i8 0, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 675
  store i8 0, ptr %i.aw, align 1
  br label %common.resume

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9

bb.y:                                             ; preds = %.body
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %i.az = load ptr, ptr %i.ay, align 16, !alias.scope !1777, !nonnull !8, !noundef !8
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !1777
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i8, ptr %i.a, align 16, !range !1650, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.d
  ]

common.ret.sink.split:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.b
  %.val.i4.sink = phi ptr [ %.val.i, %bb.b ], [ %.val.i4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit ]
  %.sink = phi ptr [ %0, %bb.b ], [ %i.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4.sink, i64 noundef 1680, i64 noundef 8) #37, !noalias !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %.sink)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val.i = load ptr, ptr %i.c, align 16, !alias.scope !1778, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i)
          to label %common.ret.sink.split unwind label %.body.i, !noalias !1778

.body.i:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 1680, i64 noundef 8) #37, !noalias !1778
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %0) #34
          to label %common.resume unwind label %bb.c

bb.c:                                             ; preds = %.body.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body.i5, %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.d, %.body.i ], [ %i.ab, %.body.i5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.h = load i8, ptr %i.g, align 16, !range !1650, !noundef !8
  %cond.i = icmp eq i8 %i.h, 3
  br i1 %cond.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 992
  %.val.i2 = load ptr, ptr %i.i, align 16         ; 5 uses
  %i.j = getelementptr i8, ptr %0, i64 1000
  %.val2.i = load ptr, ptr %i.j, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.k = load ptr, ptr %.val2.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2) ]
  invoke void %i.k(ptr noundef nonnull %.val.i2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body.i3, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #37
  br label %.body.i3

.body.i3:                                         ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.f) #34
          to label %.body unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j

bb.i:                                             ; preds = %.body.i3
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i3, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.q, %.body.i3 ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(336) %i.y) #34
          to label %common.resume unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.val.i4 = load ptr, ptr %i.aa, align 16, !alias.scope !1781, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i4)
          to label %common.ret.sink.split unwind label %.body.i5, !noalias !1781

.body.i5:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4, i64 noundef 1680, i64 noundef 8) #37, !noalias !1781
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.z) #34
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %.body.i5
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.l:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load i8, ptr %i.a, align 16, !range !1680, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.d
    i8 4, label %bb.e
  ]

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val.i = load ptr, ptr %i.c, align 16, !alias.scope !1784, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %.body.i, !noalias !1784

.body.i:                                          ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 1680, i64 noundef 8) #37, !noalias !1784
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %0) #34
          to label %common.resume unwind label %bb.c

bb.c:                                             ; preds = %.body.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9
  %common.resume.op = phi { ptr, i32 } [ %.pn2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9 ], [ %i.d, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 1680, i64 noundef 8) #37, !noalias !1784
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(336) %0)
  br label %common.ret

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.i = load i8, ptr %i.h, align 1, !range !1650, !noundef !8
  switch i8 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit [
    i8 0, label %bb.f
    i8 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %i.k = load ptr, ptr %i.j, align 16, !alias.scope !1793, !nonnull !8, !noundef !8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !1793
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.o = load i8, ptr %i.n, align 8, !range !1650, !noundef !8
  switch i8 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit.i [
    i8 0, label %bb.i
    i8 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %.val.i.i = load ptr, ptr %i.g, align 16        ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 696
  %.val2.i.i = load ptr, ptr %i.p, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.q = load ptr, ptr %.val2.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body.i6, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #37
  br label %.body.i6

bb.m:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 704
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.r

bb.n:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.af = load ptr, ptr %i.ae, align 16, !alias.scope !1800, !nonnull !8, !noundef !8
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !1800
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %.body

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae) #35
          to label %.body unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %i.aj = load ptr, ptr %i.ai, align 16, !alias.scope !1807, !nonnull !8, !noundef !8
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !1807
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6

.body.i6:                                         ; preds = %bb.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.r ], [ %i.w, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.w, %bb.l ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i8 0, ptr %i.ao, align 8
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.m, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.k, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i8 0, ptr %i.ap, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan6common7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e, %bb.p, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 674
  store i8 0, ptr %i.ar, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 673 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !range !1691, !noundef !8
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit

.body:                                            ; preds = %bb.t, %.body.i6, %bb.o, %bb.n, %bb.s
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.az, %bb.t ], [ %eh.lpad-body.i, %.body.i6 ], [ %i.ad, %bb.o ], [ %i.ad, %bb.n ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 674
  store i8 0, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 673
  %i.ax = load i8, ptr %i.aw, align 1, !range !1691, !noundef !8
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9

bb.t:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.u, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit
  store i8 0, ptr %i.as, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 675
  store i8 0, ptr %i.ba, align 1
  br label %common.ret

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  %i.bc = load ptr, ptr %i.bb, align 16, !alias.scope !1814, !nonnull !8, !noundef !8
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !1814
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bb) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9: ; preds = %bb.x, %bb.y, %bb.w, %.body
  %.pn2 = phi { ptr, i32 } [ %i.bh, %bb.w ], [ %.pn, %.body ], [ %.pn, %bb.y ], [ %.pn, %bb.x ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 673
  store i8 0, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 675
  store i8 0, ptr %i.bg, align 1
  br label %common.resume

bb.w:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9

bb.x:                                             ; preds = %.body
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  %i.bj = load ptr, ptr %i.bi, align 16, !alias.scope !1821, !nonnull !8, !noundef !8
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !1821
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs2VbMhdeEr66_16delta_benchmarks.exit9 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.b = load i8, ptr %i.a, align 8, !range !1650, !noundef !8
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1732
  %i.e = load i8, ptr %i.d, align 4, !range !1680, !noundef !8
  switch i8 %i.e, label %common.ret [
    i8 4, label %bb.y
    i8 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2554
  %i.g = load i8, ptr %i.f, align 2, !range !1650, !noundef !8
  %cond.i.i = icmp eq i8 %i.g, 3
  br i1 %cond.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.i = load i8, ptr %i.h, align 8, !range !1650, !noundef !8
  switch i8 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i [
    i8 0, label %bb.e
    i8 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1752
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %.val.i.i.i = load ptr, ptr %i.k, align 8       ; 5 uses
  %i.l = getelementptr i8, ptr %0, i64 2528
  %.val17.i.i.i = load ptr, ptr %i.l, align 16, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.m = load ptr, ptr %.val17.i.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i.i.i)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #37
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1828, !nonnull !8, !noundef !8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !1828
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.j:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1835, !nonnull !8, !noundef !8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !1835
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit19.i.i.i

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit19.i.i.i unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.l, %bb.j, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.s, %bb.j ], [ %i.s, %.body.i.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2464 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 16, !range !696, !noundef !8
  %i.ai = icmp eq i64 %i.ah, 20
  br i1 %i.ai, label %bb.n, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit19.i.i.i: ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2464 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 16, !range !696, !noundef !8
  %i.am = icmp eq i64 %i.al, 20
  br i1 %i.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit19.i.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit19.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.p

bb.n:                                             ; preds = %bb.w, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.pn5.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.o ], [ %.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %.pn.i.i.i, %bb.w ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2400
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i unwind label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i: ; preds = %bb.p, %bb.n
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.as, %bb.p ], [ %.pn5.i.i.i, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2537
  store i8 0, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.v

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2537
  store i8 0, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2248
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit27.i.i.i unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.q ], [ %.pn7.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.v

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit27.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.ax)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit30.i.i.i unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.r ], [ %.pn9.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2538
  store i8 0, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.az) #34
          to label %bb.s unwind label %bb.v

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit27.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit30.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit27.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2538
  store i8 0, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1968
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.bc)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %.pn13.i.i.i = phi { ptr, i32 } [ %i.be, %bb.t ], [ %.pn11.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2539
  store i8 0, ptr %i.bd, align 1
  br label %.body.i.i

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit30.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit30.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2539
  store i8 0, ptr %i.bf, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.v:                                             ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i, %bb.n, %bb.j
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ag) #34
          to label %bb.n unwind label %bb.v

bb.x:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.x, %bb.s
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bh, %bb.x ], [ %.pn13.i.i.i, %bb.s ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2553
  store i8 0, ptr %i.bi, align 1
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.c) #34
          to label %.body3.i unwind label %bb.fl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.u, %bb.e, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2553
  store i8 0, ptr %i.bj, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.y:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.bl = load i8, ptr %i.bk, align 16, !range !1836, !noundef !8
  switch i8 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i [
    i8 0, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ae
    i8 5, label %bb.bu
    i8 6, label %bb.cm
    i8 7, label %bb.cp
    i8 8, label %bb.cs
    i8 9, label %bb.di
    i8 10, label %bb.dy
    i8 11, label %bb.eb
    i8 12, label %bb.en
    i8 13, label %bb.eq
    i8 14, label %bb.es
  ]

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1744
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.fm

bb.aa:                                            ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %.val.i.i = load ptr, ptr %i.bn, align 16       ; 5 uses
  %i.bo = getelementptr i8, ptr %0, i64 2744
  %.val27.i.i = load ptr, ptr %i.bo, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.bp = load ptr, ptr %.val27.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bp(ptr noundef nonnull %.val.i.i)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %i.bu) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.body.i2.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.ad
  %i.bz = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #37
  br label %.body.i2.i

bb.ae:                                            ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %.val28.i.i = load ptr, ptr %i.cb, align 16, !nonnull !8, !noundef !8 ; 36 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1240
  %i.cd = load i8, ptr %i.cc, align 8, !range !1692, !noundef !8
  switch i8 %i.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext19create_memory_table0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i [
    i8 0, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.ah
    i8 5, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl17CreateMemoryTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.ce)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext19create_memory_table0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.bs

bb.ag:                                            ; preds = %bb.ae
  %i.cf = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext5tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.cf)
          to label %bb.ak unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.cg)
          to label %bb.ao unwind label %bb.am

bb.ai:                                            ; preds = %bb.ae
  %i.ch = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.ch)
          to label %bb.aw unwind label %bb.au

bb.aj:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ar, %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1234 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 2, !range !1691, !noundef !8
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.bb, label %bb.ba

bb.al:                                            ; preds = %bb.az, %bb.at, %bb.aj
  %.pn7.i.i.i.i.i = phi { ptr, i32 } [ %i.ci, %bb.aj ], [ %i.dq, %bb.az ], [ %.pn4.pn.i.i.i.i.i, %bb.at ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1234
  %i.cn = load i8, ptr %i.cm, align 2, !range !1691, !noundef !8
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.br, label %bb.bc

bb.am:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1843, !nonnull !8, !noundef !8
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !1843
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cq) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.as

bb.ao:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !1850, !nonnull !8, !noundef !8
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !1850
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit22.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cu) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit22.i.i.i.i.i unwind label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.aq, %bb.an, %bb.am
  %.pn4.i.i.i.i.i = phi { ptr, i32 } [ %i.cz, %bb.aq ], [ %i.cp, %bb.an ], [ %i.cp, %bb.am ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1239
  store i8 0, ptr %i.cy, align 1
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit22.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1239
  store i8 0, ptr %i.da, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit26.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit22.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(352) %i.db)
          to label %bb.ak unwind label %bb.az

bb.as:                                            ; preds = %bb.br, %.body28.i.i.i.i.i, %.body.i.i.i.i.i, %bb.be, %bb.bc, %bb.av, %bb.at, %bb.an
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i
  %.pn4.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(352) %i.dd) #34
          to label %bb.al unwind label %bb.as

bb.au:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !1857, !nonnull !8, !noundef !8
  %i.dh = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !noalias !1857
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.df) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i.i.i unwind label %bb.as

bb.aw:                                            ; preds = %bb.ai
  %i.dj = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !1864, !nonnull !8, !noundef !8
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !1864
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit26.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dj) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit26.i.i.i.i.i unwind label %bb.ay

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i.i.i: ; preds = %bb.ay, %bb.av, %bb.au
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ay ], [ %i.de, %bb.av ], [ %i.de, %bb.au ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1238
  store i8 0, ptr %i.dn, align 2
  br label %bb.at

bb.ay:                                            ; preds = %bb.ax
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit24.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit26.i.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.dp = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1238
  store i8 0, ptr %i.dp, align 2
  br label %bb.ar

bb.az:                                            ; preds = %bb.ar
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ba:                                            ; preds = %bb.bb, %bb.ak
  store i8 0, ptr %i.cj, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %.val28.i.i)
          to label %bb.bg unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ak
  %i.dr = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 320
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(320) %i.dr)
          to label %bb.ba unwind label %bb.bd

bb.bc:                                            ; preds = %bb.br, %bb.bd, %bb.al
  %.pn9.i.i.i.i.i = phi { ptr, i32 } [ %i.dt, %bb.bd ], [ %.pn7.i.i.i.i.i, %bb.br ], [ %.pn7.i.i.i.i.i, %bb.al ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 1234
  store i8 0, ptr %i.ds, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %.val28.i.i) #34
          to label %bb.be unwind label %bb.as

bb.bd:                                            ; preds = %bb.bb
  %i.dt = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext3sql0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !1913, !nonnull !8, !noundef !8
  %i.hc = atomicrmw sub ptr %i.hb, i64 1 release, align 8, !noalias !1913
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %common.ret.sink.split.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext10drop_table0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.df:                                            ; preds = %bb.dc, %bb.cz
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.dg:                                            ; preds = %common.ret.sink.split.i.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.dc, %bb.db, %bb.cv, %bb.cu
  %eh.lpad-body.i.i49.i.i = phi { ptr, i32 } [ %i.hf, %bb.dg ], [ %i.gh, %bb.cu ], [ %i.gh, %bb.cv ], [ %.pn.i.i.i48.i.i, %bb.dc ], [ %.pn.i.i.i48.i.i, %bb.db ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i.i, i64 noundef 432, i64 noundef 8) #37
  br label %.body.i2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext10drop_table0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.de, %bb.cw, %common.ret.sink.split.i.i.i.i.i, %bb.cs
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i.i, i64 noundef 432, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.di:                                            ; preds = %bb.y
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %.val33.i.i = load ptr, ptr %i.hg, align 16, !nonnull !8, !noundef !8 ; 11 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 424
  %i.hi = load i8, ptr %i.hh, align 8, !range !1650, !noundef !8
  switch i8 %i.hi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext9drop_view0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i [
    i8 0, label %bb.dj
    i8 3, label %bb.do
  ]

common.ret.sink.split.i.i.i54.i.i:                ; preds = %bb.du, %bb.dm
  %.sink.i.i.i55.i.i = phi ptr [ %i.ho, %bb.dm ], [ %i.ic, %bb.du ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink.i.i.i55.i.i) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext9drop_view0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.dw

bb.dj:                                            ; preds = %bb.di
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val33.i.i)
          to label %bb.dm unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !1920, !nonnull !8, !noundef !8
  %i.hm = atomicrmw sub ptr %i.hl, i64 1 release, align 8, !noalias !1923
  %i.hn = icmp eq i64 %i.hm, 1
  br i1 %i.hn, label %bb.dl, label %bb.dx

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hk) #35
          to label %bb.dx unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dj
  %i.ho = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !1930, !nonnull !8, !noundef !8
  %i.hq = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !noalias !1931
  %i.hr = icmp eq i64 %i.hq, 1
  br i1 %i.hr, label %common.ret.sink.split.i.i.i54.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext9drop_view0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.do:                                            ; preds = %bb.di
  %i.ht = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 216
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBP_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ht)
          to label %bb.dq unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 160
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hv) #34
          to label %bb.dr unwind label %bb.dv

bb.dq:                                            ; preds = %bb.do
  %i.hw = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 160
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hw)
          to label %bb.du unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dt, %bb.dp
  %.pn.i.i.i52.i.i = phi { ptr, i32 } [ %i.ib, %bb.dt ], [ %i.hu, %bb.dp ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !1938, !nonnull !8, !noundef !8
  %i.hz = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !1938
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.ds, label %bb.dx

bb.ds:                                            ; preds = %bb.dr
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx) #35
          to label %bb.dx unwind label %bb.dv

bb.dt:                                            ; preds = %bb.dq
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.du:                                            ; preds = %bb.dq
  %i.ic = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1942)
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !1945, !nonnull !8, !noundef !8
  %i.ie = atomicrmw sub ptr %i.id, i64 1 release, align 8, !noalias !1945
  %i.if = icmp eq i64 %i.ie, 1
  br i1 %i.if, label %common.ret.sink.split.i.i.i54.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext9drop_view0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.dv:                                            ; preds = %bb.ds, %bb.dp
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.dw:                                            ; preds = %common.ret.sink.split.i.i.i54.i.i
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.ds, %bb.dr, %bb.dl, %bb.dk
  %eh.lpad-body.i.i53.i.i = phi { ptr, i32 } [ %i.ih, %bb.dw ], [ %i.hj, %bb.dk ], [ %i.hj, %bb.dl ], [ %.pn.i.i.i52.i.i, %bb.ds ], [ %.pn.i.i.i52.i.i, %bb.dr ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val33.i.i, i64 noundef 432, i64 noundef 8) #37
  br label %.body.i2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext9drop_view0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.du, %bb.dm, %common.ret.sink.split.i.i.i54.i.i, %bb.di
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val33.i.i, i64 noundef 432, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.dy:                                            ; preds = %bb.y
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %.val34.i.i = load ptr, ptr %i.ii, align 16, !nonnull !8, !noundef !8 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 56
  %i.ik = load i8, ptr %i.ij, align 8, !range !822, !noundef !8
  %i.il = icmp eq i8 %i.ik, 0
  br i1 %i.il, label %bb.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext11drop_schema0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.im = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl17DropCatalogSchemaECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.im)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext11drop_schema0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.in = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i.i, i64 noundef 64, i64 noundef 8) #37
  br label %.body.i2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext11drop_schema0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.dz, %bb.dy
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i.i, i64 noundef 64, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.eb:                                            ; preds = %bb.y
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %.val35.i.i = load ptr, ptr %i.io, align 16, !nonnull !8, !noundef !8 ; 10 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val35.i.i, i64 2000
  %i.iq = load i8, ptr %i.ip, align 16, !range !1650, !noundef !8
  switch i8 %i.iq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext15create_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i [
    i8 0, label %bb.ec
    i8 3, label %bb.ed
  ]

bb.ec:                                            ; preds = %bb.eb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl14CreateFunctionECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(288) %.val35.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext15create_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.el

bb.ed:                                            ; preds = %bb.eb
  %i.ir = getelementptr inbounds nuw i8, ptr %.val35.i.i, i64 1968
  %.val.i.i.i.i.i = load ptr, ptr %i.ir, align 16 ; 5 uses
  %i.is = getelementptr i8, ptr %.val35.i.i, i64 1976
  %.val8.i.i.i.i.i = load ptr, ptr %i.is, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.it = load ptr, ptr %.val8.i.i.i.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.it(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.ef unwind label %bb.eg

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.iu = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ef
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i, i64 16
  %i.iy = load i64, ptr %i.ix, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) %i.iy) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %i.ja = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %.body.i.i.i60.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.eg
  %i.jd = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.jb, i64 noundef range(i64 1, -9223372036854775807) %i.je) #37
  br label %.body.i.i.i60.i.i

.body.i.i.i60.i.i:                                ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.eg
  %i.jf = getelementptr inbounds nuw i8, ptr %.val35.i.i, i64 288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(1680) %i.jf) #34
          to label %bb.eh unwind label %bb.ek

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.ef
  %i.jg = getelementptr inbounds nuw i8, ptr %.val35.i.i, i64 288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(1680) %i.jg)
          to label %bb.ej unwind label %bb.ei

bb.eh:                                            ; preds = %bb.ei, %.body.i.i.i60.i.i
  %.pn.i.i.i61.i.i = phi { ptr, i32 } [ %i.ji, %bb.ei ], [ %i.iz, %.body.i.i.i60.i.i ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.val35.i.i, i64 2001
  store i8 0, ptr %i.jh, align 1
  br label %bb.em

bb.ei:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ej:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.val35.i.i, i64 2001
  store i8 0, ptr %i.jj, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext15create_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.ek:                                            ; preds = %.body.i.i.i60.i.i
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.el:                                            ; preds = %bb.ec
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.eh
  %eh.lpad-body.i.i62.i.i = phi { ptr, i32 } [ %i.jl, %bb.el ], [ %.pn.i.i.i61.i.i, %bb.eh ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35.i.i, i64 noundef 2016, i64 noundef 16) #37
  br label %.body.i2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext15create_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.ej, %bb.ec, %bb.eb
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35.i.i, i64 noundef 2016, i64 noundef 16) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.en:                                            ; preds = %bb.y
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %.val36.i.i = load ptr, ptr %i.jm, align 16, !nonnull !8, !noundef !8 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.val36.i.i, i64 48
  %i.jo = load i8, ptr %i.jn, align 8, !range !822, !noundef !8
  %i.jp = icmp eq i8 %i.jo, 0
  br i1 %i.jp, label %bb.eo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext13drop_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.eo:                                            ; preds = %bb.en
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl12DropFunctionECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val36.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext13drop_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.jq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36.i.i, i64 noundef 56, i64 noundef 8) #37
  br label %.body.i2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext13drop_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.eo, %bb.en
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36.i.i, i64 noundef 56, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.eq:                                            ; preds = %bb.y
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.js = load i8, ptr %i.jr, align 8, !range !822, !noundef !8
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %bb.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.er:                                            ; preds = %bb.eq
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 2736
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement11SetVariableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ju)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.fc

bb.es:                                            ; preds = %bb.y
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.jx = load i8, ptr %i.jw, align 16, !range !822, !noundef !8
  %i.jy = icmp eq i8 %i.jx, 0
  br i1 %i.jy, label %bb.et, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement13ResetVariableECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %.body67.i.i unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement13ResetVariableECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.et
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.fd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext13drop_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext15create_function0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext11drop_schema0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext9drop_view0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext10drop_table0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext14create_catalog0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext21create_catalog_schema0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext11create_view0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1D_14SessionContext19create_memory_table0EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.ac
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 16, !range !1946, !noundef !8
  %i.kd = icmp eq i64 %i.kc, 5
  br i1 %i.kd, label %bb.ew, label %bb.ex

.body.i2.i:                                       ; preds = %bb.ep, %bb.em, %bb.ea, %bb.dx, %bb.dh, %bb.cr, %bb.co, %bb.cl, %bb.bt, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.ad
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i62.i.i, %bb.em ], [ %i.bv, %bb.ad ], [ %eh.lpad-body.i.i.i.i, %bb.bt ], [ %eh.lpad-body.i.i41.i.i, %bb.cl ], [ %i.fy, %bb.co ], [ %i.gd, %bb.cr ], [ %eh.lpad-body.i.i49.i.i, %bb.dh ], [ %eh.lpad-body.i.i53.i.i, %bb.dx ], [ %i.in, %bb.ea ], [ %i.jq, %bb.ep ], [ %i.bv, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 16, !range !1946, !noundef !8
  %i.kg = icmp eq i64 %i.kf, 5
  br i1 %i.kg, label %bb.fa, label %bb.ey

bb.ew:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl12DdlStatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(320) %i.kb)
          to label %bb.ex unwind label %bb.ez

bb.ex:                                            ; preds = %bb.ew, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 2721
  store i8 0, ptr %i.kh, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.ey:                                            ; preds = %bb.fa, %bb.ez, %.body.i2.i
  %.pn20.i.i = phi { ptr, i32 } [ %i.kj, %bb.ez ], [ %.pn.i.i, %bb.fa ], [ %.pn.i.i, %.body.i2.i ]
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 2721
  store i8 0, ptr %i.ki, align 1
  br label %.body67.i.i

bb.ez:                                            ; preds = %bb.ew
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.ex, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement13ResetVariableECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.es, %bb.er, %bb.eq
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 16, !range !1947, !noundef !8 ; 3 uses
  %i.km = icmp ne i64 %i.kl, 31
  tail call void @llvm.assume(i1 %i.km)
  %i.kn = add nsw i64 %i.kl, -11
  %i.ko = icmp samesign ugt i64 %i.kl, 10
  %i.kp = select i1 %i.ko, i64 %i.kn, i64 20
  switch i64 %i.kp, label %bb.fe [
    i64 13, label %bb.ff
    i64 20, label %bb.fg
  ]

bb.fa:                                            ; preds = %.body.i2.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl12DdlStatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(320) %i.ke) #34
          to label %bb.ey unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fj, %bb.fa
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body67.i.i:                                      ; preds = %bb.fd, %bb.fc, %bb.ey, %bb.eu
  %.pn20.pn.i.i = phi { ptr, i32 } [ %.pn20.i.i, %bb.ey ], [ %i.kx, %bb.fc ], [ %i.ky, %bb.fd ], [ %i.jz, %bb.eu ] ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 16, !range !1947, !noundef !8 ; 3 uses
  %i.kt = icmp ne i64 %i.ks, 31
  tail call void @llvm.assume(i1 %i.kt)
  %i.ku = add nsw i64 %i.ks, -11
  %i.kv = icmp samesign ugt i64 %i.ks, 10
  %i.kw = select i1 %i.kv, i64 %i.ku, i64 20
  switch i64 %i.kw, label %bb.fj [
    i64 13, label %bb.fh
    i64 20, label %bb.fh
  ]

bb.fc:                                            ; preds = %bb.er
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i.i

bb.fd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement13ResetVariableECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i.i

bb.fe:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(320) %i.kk)
          to label %bb.fg unwind label %bb.fi

bb.ff:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 2723
  store i8 0, ptr %i.kz, align 1
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 2722
  store i8 0, ptr %i.la, align 2
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 2723
  store i8 0, ptr %i.lb, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.fh:                                            ; preds = %.body67.i.i, %bb.fj, %bb.fi, %.body67.i.i
  %.pn23.i.i = phi { ptr, i32 } [ %i.le, %bb.fi ], [ %.pn20.pn.i.i, %bb.fj ], [ %.pn20.pn.i.i, %.body67.i.i ], [ %.pn20.pn.i.i, %.body67.i.i ]
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 2722
  store i8 0, ptr %i.lc, align 2
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 2723
  store i8 0, ptr %i.ld, align 1
  br label %.body3.i

bb.fi:                                            ; preds = %bb.fe
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fj:                                            ; preds = %.body67.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(320) %i.kr) #34
          to label %bb.fh unwind label %bb.fb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(1680) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.fk

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState19create_logical_plan0ECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.fg, %bb.z, %bb.y
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1731
  store i8 0, ptr %i.lg, align 1
  br label %common.ret

bb.fl:                                            ; preds = %.body.i.i
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body3.i:                                         ; preds = %bb.fm, %bb.fk, %bb.fh, %.body.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.lf, %bb.fk ], [ %i.lj, %bb.fm ], [ %.pn23.i.i, %bb.fh ]
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 1731
  store i8 0, ptr %i.li, align 1
  resume { ptr, i32 } %.pn.i

bb.fm:                                            ; preds = %bb.z
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5merge24prepare_source_and_table0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 653
  %i.b = load i8, ptr %i.a, align 1, !range !1948, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 8, label %bb.m
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.i
  ]

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.c)
          to label %bb.o unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 752
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame7collect0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCs14kWLkQVSKO_14deltalake_core10operationsNtNtBN_5table10DeltaTable12try_from_url0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit29 unwind label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776
  %.val21 = load ptr, ptr %i.f, align 8           ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 784
  %.val22 = load ptr, ptr %i.g, align 16, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.h = load ptr, ptr %.val22, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.h(ptr noundef nonnull %.val21)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #37
  br label %.body

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.val = load ptr, ptr %i.t, align 16            ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 664
  %.val20 = load ptr, ptr %i.u, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.v = load ptr, ptr %.val20, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.v, null
  br i1 %.not.i.i23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.v(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit29, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i26

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i26: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit29

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body27, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i24

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i24: ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #37
  br label %.body27

bb.m:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 776
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.ah)
          to label %bb.x unwind label %bb.w

bb.n:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i8 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body30 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.aq

bb.r:                                             ; preds = %.body36, %bb.n
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %.body36 ], [ %i.ai, %bb.n ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i8 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 560
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao) #34
          to label %.body30 unwind label %bb.v

bb.s:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ag, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 0, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(144) %i.ar)
          to label %bb.al unwind label %bb.ak

.body34:                                          ; preds = %bb.ai, %bb.af, %bb.at, %.body32, %bb.s
  %.pn9 = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %.pn7, %bb.at ], [ %.pn7, %.body32 ], [ %i.bz, %bb.ai ], [ %i.bx, %bb.af ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 0, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(144) %i.at) #34
          to label %bb.aj unwind label %bb.v

bb.t:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body:                                            ; preds = %bb.h, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.av) #34
          to label %.body27 unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit29 unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit29: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i26, %bb.k, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.x
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 651
  store i8 0, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !1691, !noundef !8
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.v:                                             ; preds = %bb.au, %bb.at, %bb.as, %.body30, %bb.w, %.body, %.body34, %bb.r
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body27:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i24, %bb.l, %bb.t, %bb.u, %.body, %bb.w, %bb.y
  %.pn5 = phi { ptr, i32 } [ %i.bk, %bb.y ], [ %i.bh, %bb.w ], [ %i.n, %.body ], [ %i.au, %bb.t ], [ %i.ax, %bb.u ], [ %i.ab, %bb.l ], [ %i.ab, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i24 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 651
  store i8 0, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bf = load i8, ptr %i.be, align 8, !range !1691, !noundef !8
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.as, label %.body32

bb.w:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.bi) #34
          to label %.body27 unwind label %bb.v

bb.x:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %i.bj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit29 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit29
  store i8 0, ptr %i.az, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 649
  %i.bm = load i8, ptr %i.bl, align 1, !range !1691, !noundef !8
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit29
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body32 unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body32:                                          ; preds = %bb.ad, %bb.aa, %bb.as, %.body27
  %.pn7 = phi { ptr, i32 } [ %.pn5, %.body27 ], [ %.pn5, %bb.as ], [ %i.bv, %bb.ad ], [ %i.bp, %bb.aa ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i8 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 649
  %i.bt = load i8, ptr %i.bs, align 1, !range !1691, !noundef !8
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.at, label %.body34

bb.ad:                                            ; preds = %bb.ab
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body32

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.body34 unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %common.resume unwind label %bb.dq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.r, %bb.s
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.do

bb.do:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %common.resume unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs2VbMhdeEr66_16delta_benchmarks.exit45

bb.dq:                                            ; preds = %bb.dt, %bb.dx, %bb.dy, %bb.dn
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.dr:                                            ; preds = %bb.t
  %i.hd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  %i.hf = load ptr, ptr %i.he, align 16, !alias.scope !2863, !noundef !8 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %common.resume, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.hh = atomicrmw sub ptr %i.hf, i64 1 release, align 8, !noalias !2866
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.dt, label %common.resume

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.he) #35
          to label %common.resume unwind label %bb.dq

bb.du:                                            ; preds = %bb.t
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2873)
  %i.hk = load ptr, ptr %i.hj, align 16, !alias.scope !2873, !noundef !8 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs2VbMhdeEr66_16delta_benchmarks.exit45, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.hm = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !noalias !2876
  %i.hn = icmp eq i64 %i.hm, 1
  br i1 %i.hn, label %bb.dw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs2VbMhdeEr66_16delta_benchmarks.exit45

bb.dw:                                            ; preds = %bb.dv
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hj) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs2VbMhdeEr66_16delta_benchmarks.exit45

bb.dx:                                            ; preds = %bb.cr
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2 = load ptr, ptr %i.hp, align 16, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val2) #34
          to label %common.resume unwind label %bb.dq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.cq, %bb.cr
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.hq, align 16, !nonnull !8, !noundef !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs2VbMhdeEr66_16delta_benchmarks.exit45

bb.dy:                                            ; preds = %bb.dm
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) #34
          to label %common.resume unwind label %bb.dq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit39: ; preds = %bb.dl, %bb.dm
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs2VbMhdeEr66_16delta_benchmarks.exit45
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.d) #34
          to label %.body5 unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2889 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !2890, !noundef !8 ; 3 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.i = shl i64 %.val1.i.i, 3                    ; 2 uses
  %i.j = add i64 %i.i, 8
  %i.k = add i64 %i.i, 23                         ; 2 uses
  %i.l = icmp uge i64 %i.k, %i.j
  tail call void @llvm.assume(i1 %i.l)
  %i.m = and i64 %i.k, -16                        ; 3 uses
  %i.n = add i64 %.val1.i.i, 17
  %i.o = add i64 %i.n, %i.m                       ; 4 uses
  %i.p = icmp uge i64 %i.o, %i.m
  %i.q = icmp ult i64 %i.o, 9223372036854775793
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.s = sub nsw i64 0, %i.m
  %i.t = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !2893
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.e, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.body5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

.body5:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.h ], [ %i.u, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val3 = load ptr, ptr %i.w, align 8, !alias.scope !2896
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val4 = load i64, ptr %i.x, align 8, !alias.scope !2896, !noundef !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val3, i64 %.val4) #34
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.z, align 8, !alias.scope !2896 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2 = load i64, ptr %i.aa, align 8, !alias.scope !2896, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %.val2, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ac = shl i64 %.val2, 4                       ; 2 uses
  %i.ad = add i64 %i.ac, 16                       ; 2 uses
  %i.ae = add i64 %.val2, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.aj = sub nuw nsw i64 -16, %i.ac
  %i.ak = getelementptr inbounds i8, ptr %.val, i64 %i.aj
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !2899
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1948, !noundef !8 ; 2 uses
  %i.b = add nsw i8 %i.a, -6
  %i.c = icmp samesign ugt i8 %i.a, 5
  %narrow = select i1 %i.c, i8 %i.b, i8 3
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.b, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscEIReFzlGbb_26datafusion_catalog_listing7options14ListingOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2908, !nonnull !8, !noundef !8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !2908
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_E9drop_slowCscEIReFzlGbb_26datafusion_catalog_listing(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2915, !nonnull !8, !noundef !8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !2915
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit5

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_E9drop_slowCscEIReFzlGbb_26datafusion_catalog_listing(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit5 unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.body, %bb.e, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %eh.lpad-body, %bb.e ], [ %eh.lpad-body, %.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.l) #34
          to label %.body7 unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit5: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit5
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body7 unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit5
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body7:                                           ; preds = %bb.k, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.r, %bb.k ], [ %i.o, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.q) #34
          to label %common.resume unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body7, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.l ], [ %.pn2, %.body7 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEEECs2VbMhdeEr66_16delta_benchmarks.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  ret void

bb.n:                                             ; preds = %bb.e, %.body7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format10FileFormatEL_EECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscYNcALI69lp_20datafusion_optimizer8analyzer8AnalyzerECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter15FunctionRewriteNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB24_4SendEL_EENtNtNtB26_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs2VbMhdeEr66_16delta_benchmarks:bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3169, !noundef !8
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.y
    i64 3, label %bb.dh
    i64 4, label %bb.di
    i64 5, label %bb.dj
    i64 6, label %bb.dm
    i64 7, label %bb.dp
    i64 8, label %bb.ds
    i64 9, label %bb.dv
    i64 10, label %bb.dw
    i64 11, label %bb.dz
    i64 12, label %bb.ef
    i64 13, label %bb.ei
    i64 14, label %bb.em
    i64 15, label %bb.ep
    i64 16, label %bb.es
    i64 17, label %bb.et
    i64 18, label %bb.ew
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.fh, %bb.ey, %bb.fe, %.body, %bb.fs, %bb.fj, %bb.fb, %bb.eu, %bb.eq, %bb.el, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.eg, %bb.dx, %bb.dt, %bb.dq, %bb.dn, %bb.dk, %bb.c, %bb.fu, %bb.fr, %bb.fp, %bb.ee, %bb.dg, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.mc, %bb.fu ], [ %eh.lpad-body.i, %bb.x ], [ %eh.lpad-body.i9, %bb.dg ], [ %i.c, %bb.c ], [ %i.im, %bb.dk ], [ %i.ip, %bb.dn ], [ %i.is, %bb.dq ], [ %i.iv, %bb.dt ], [ %i.jl, %bb.ee ], [ %i.iz, %bb.dx ], [ %i.js, %bb.eg ], [ %i.kc, %bb.el ], [ %i.km, %bb.eq ], [ %i.kq, %bb.eu ], [ %i.lb, %bb.fb ], [ %i.ly, %bb.fs ], [ %eh.lpad-body.i34, %bb.fp ], [ %i.lx, %bb.fr ], [ %i.kc, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.kw, %bb.ey ], [ %i.le, %bb.fe ], [ %i.ll, %bb.fj ], [ %eh.lpad-body, %.body ], [ %i.lj, %bb.fh ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ez unwind label %bb.ey

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  %i.g = load i64, ptr %.val4, align 8, !range !3173, !alias.scope !3170, !noundef !8
  switch i64 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit [
    i64 0, label %bb.g
    i64 1, label %bb.j
    i64 2, label %bb.m
    i64 3, label %bb.p
    i64 5, label %bb.s
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.x unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.x unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.x unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.x unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i: ; preds = %bb.p, %bb.m, %bb.j, %bb.g
  %i.t = phi ptr [ %i.n, %bb.m ], [ %i.k, %bb.j ], [ %i.h, %bb.g ], [ %i.q, %bb.p ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.w

bb.s:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !3170 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %.val1.i.i = load ptr, ptr %i.v, align 8, !alias.scope !3170, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.w = load ptr, ptr %.val1.i.i, align 8, !invariant.load !8, !noalias !3170 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i.i)
          to label %bb.u unwind label %bb.v, !noalias !3170

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !989, !invariant.load !8, !noalias !3170 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !470, !invariant.load !8, !noalias !3170
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #37, !noalias !3170
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.v:                                             ; preds = %bb.t
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !989, !invariant.load !8, !noalias !3170 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.x, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !470, !invariant.load !8, !noalias !3170
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #37, !noalias !3170
  br label %bb.x

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.v, %bb.q, %bb.n, %bb.k, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ai, %bb.w ], [ %i.r, %bb.q ], [ %i.i, %bb.h ], [ %i.l, %bb.k ], [ %i.o, %bb.n ], [ %i.ac, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ac, %bb.v ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #37
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit7.i.invoke.i, %bb.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.y:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.aj, align 8, !nonnull !8, !noundef !8 ; 54 uses
  %i.ak = load i64, ptr %.val5, align 8, !range !3174, !alias.scope !3175, !noundef !8 ; 6 uses
  %i.al = icmp ne i64 %i.ak, -9223372036854775800
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nsw i64 %i.ak, 9223372036854775802
  %i.an = icmp ugt i64 %i.ak, -9223372036854775803
  %i.ao = select i1 %i.an, i64 %i.am, i64 2
  switch i64 %i.ao, label %bb.z [
    i64 0, label %bb.ac
    i64 1, label %bb.ag
    i64 2, label %bb.aj
    i64 3, label %bb.bi
    i64 4, label %bb.bn
    i64 5, label %bb.br
    i64 6, label %bb.bu
    i64 7, label %bb.bx
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 9, label %bb.ca
    i64 10, label %bb.cd
  ]

bb.z:                                             ; preds = %bb.y
  %i.ap = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.dg unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ac:                                            ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %.val27.i.i = load ptr, ptr %i.as, align 8, !alias.scope !3175 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val28.i.i = load ptr, ptr %i.at, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.au = load ptr, ptr %.val28.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i11, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i) ]
  invoke void %i.au(ptr noundef nonnull %.val27.i.i)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.av = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i13

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i13: ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i.i) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %i.az) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.af:                                            ; preds = %bb.ad
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i12

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i12: ; preds = %bb.af
  %i.be = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) %i.bf) #37
  br label %bb.dg

bb.ag:                                            ; preds = %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit32.i.i unwind label %bb.cg

bb.aj:                                            ; preds = %bb.y
  %i.bj = icmp ne i64 %i.ak, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = xor i64 %i.ak, -9223372036854775808
  %i.bl = icmp slt i64 %i.ak, 0
  %i.bm = select i1 %i.bl, i64 %i.bk, i64 1
  switch i64 %i.bm, label %bb.ak [
    i64 0, label %bb.an
    i64 1, label %bb.aq
    i64 2, label %bb.at
    i64 3, label %bb.aw
    i64 4, label %bb.az
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.bn = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.bf

bb.an:                                            ; preds = %bb.aj
  %i.bq = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.dg unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.aq:                                            ; preds = %bb.aj
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i7.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val5)
          to label %.body8.i.i.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i7.i.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit10.i.i.i unwind label %bb.bc

bb.at:                                            ; preds = %bb.aj
  %i.bv = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.body11.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.be

bb.aw:                                            ; preds = %bb.aj
  %i.by = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.dg unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.az:                                            ; preds = %bb.aj
  %i.cb = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %bb.dg unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i7.i.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i.i

.body8.i.i.i:                                     ; preds = %bb.bc, %bb.ar
  %eh.lpad-body9.i.i.i = phi { ptr, i32 } [ %i.ce, %bb.bc ], [ %i.bt, %bb.ar ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.cf) #34
          to label %bb.dg unwind label %bb.bd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit10.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i7.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.cg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.df

bb.bd:                                            ; preds = %.body.i.i.i, %.body11.i.i.i, %.body8.i.i.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i

.body11.i.i.i:                                    ; preds = %bb.be, %bb.au
  %eh.lpad-body12.i.i.i = phi { ptr, i32 } [ %i.ci, %bb.be ], [ %i.bw, %bb.au ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val2.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !3178, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val2.i.i.i) #34
          to label %bb.dg unwind label %bb.bd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !3178, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.df

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bf, %bb.al
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cl, %bb.bf ], [ %i.bo, %bb.al ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm) #34
          to label %bb.dg unwind label %bb.bd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %bb.dg unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.az, %bb.aw, %bb.an, %bb.z
  %i.cq = phi ptr [ %i.cb, %bb.az ], [ %i.by, %bb.aw ], [ %i.bq, %bb.an ], [ %i.ap, %bb.z ], [ %i.cn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.df

bb.bi:                                            ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %.val29.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !3175, !noundef !8 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %.val30.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !3175 ; 6 uses
  %i.ct = icmp eq ptr %.val29.i.i, null
  br i1 %i.ct, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i.i) ]
  %i.cu = load ptr, ptr %.val30.i.i, align 8, !invariant.load !8, !noalias !3181 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void %i.cu(ptr noundef nonnull %.val29.i.i)
          to label %bb.bl unwind label %bb.bm, !noalias !3181

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.cv = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !989, !invariant.load !8, !noalias !3181 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.bl
  %i.cy = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !470, !invariant.load !8, !noalias !3181
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) %i.cz) #37, !noalias !3181
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.bm:                                            ; preds = %bb.bk
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !range !989, !invariant.load !8, !noalias !3181 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.bm
  %i.de = getelementptr inbounds nuw i8, ptr %.val30.i.i, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !470, !invariant.load !8, !noalias !3181
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i.i, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) %i.df) #37, !noalias !3181
  br label %bb.dg

bb.bn:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %.val25.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !3175 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %.val26.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.di = load ptr, ptr %.val26.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i33.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i) ]
  invoke void %i.di(ptr noundef nonnull %.val25.i.i)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.dj = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i36.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i36.i.i: ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) %i.dn) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.bq:                                            ; preds = %bb.bo
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i34.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i34.i.i: ; preds = %bb.bq
  %i.ds = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) %i.dt) #37
  br label %bb.dg

bb.br:                                            ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i39.i.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %.body40.i.i unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i39.i.i: ; preds = %bb.br
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i unwind label %bb.cl

bb.bu:                                            ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i44.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %.body45.i.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i44.i.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit47.i.i unwind label %bb.cp

bb.bx:                                            ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i49.i.i unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %.body50.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i49.i.i: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i unwind label %bb.ct

bb.ca:                                            ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i54.i.i unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %.body55.i.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i54.i.i: ; preds = %bb.ca
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit57.i.i unwind label %bb.cx

bb.cd:                                            ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %.val5, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i59.i.i unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %.body60.i.i unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i59.i.i: ; preds = %bb.cd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit62.i.i unwind label %bb.db

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cg, %bb.ah
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ej, %bb.cg ], [ %i.bh, %bb.ah ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val23.i.i = load ptr, ptr %i.ek, align 8, !alias.scope !3175
  %i.el = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val24.i.i = load ptr, ptr %i.el, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val23.i.i, ptr nonnull %.val24.i.i) #34
          to label %bb.dg unwind label %bb.ck

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit32.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val21.i.i = load ptr, ptr %i.em, align 8, !alias.scope !3175 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val22.i.i = load ptr, ptr %i.en, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.eo = load ptr, ptr %.val22.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i63.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i63.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit32.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  invoke void %i.eo(ptr noundef nonnull %.val21.i.i)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit32.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i66.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i66.i.i: ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i.i) ]
  %i.es = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.et = load i64, ptr %i.es, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) %i.et) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.cj:                                            ; preds = %bb.ch
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i64.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i64.i.i: ; preds = %bb.cj
  %i.ey = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef %i.ew, i64 noundef range(i64 1, -9223372036854775807) %i.ez) #37
  br label %bb.dg

bb.ck:                                            ; preds = %.body60.i.i, %.body55.i.i, %.body50.i.i, %.body45.i.i, %.body40.i.i, %.body.i.i
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i39.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i.i

.body40.i.i:                                      ; preds = %bb.cl, %bb.bs
  %eh.lpad-body41.i.i = phi { ptr, i32 } [ %i.fb, %bb.cl ], [ %i.dv, %bb.bs ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val19.i.i = load ptr, ptr %i.fc, align 8, !alias.scope !3175
  %i.fd = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val20.i.i = load ptr, ptr %i.fd, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val19.i.i, ptr nonnull %.val20.i.i) #34
          to label %bb.dg unwind label %bb.ck

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i39.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val17.i.i = load ptr, ptr %i.fe, align 8, !alias.scope !3175 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val18.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.fg = load ptr, ptr %.val18.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i68.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i68.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i) ]
  invoke void %i.fg(ptr noundef nonnull %.val17.i.i)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit42.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i71.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i71.i.i: ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i) ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) %i.fl) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.co:                                            ; preds = %bb.cm
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i69.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i69.i.i: ; preds = %bb.co
  %i.fq = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) %i.fr) #37
  br label %bb.dg

bb.cp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i44.i.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i.i

.body45.i.i:                                      ; preds = %bb.cp, %bb.bv
  %eh.lpad-body46.i.i = phi { ptr, i32 } [ %i.fs, %bb.cp ], [ %i.dy, %bb.bv ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val15.i.i = load ptr, ptr %i.ft, align 8, !alias.scope !3175
  %i.fu = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val16.i.i = load ptr, ptr %i.fu, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val15.i.i, ptr nonnull %.val16.i.i) #34
          to label %bb.dg unwind label %bb.ck

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit47.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i44.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val13.i.i = load ptr, ptr %i.fv, align 8, !alias.scope !3175 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val14.i.i = load ptr, ptr %i.fw, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.fx = load ptr, ptr %.val14.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i73.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i73.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit47.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  invoke void %i.fx(ptr noundef nonnull %.val13.i.i)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit47.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i76.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i76.i.i: ; preds = %bb.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) %i.gc) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.cs:                                            ; preds = %bb.cq
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i74.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i74.i.i: ; preds = %bb.cs
  %i.gh = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) %i.gi) #37
  br label %bb.dg

bb.ct:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i49.i.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body50.i.i

.body50.i.i:                                      ; preds = %bb.ct, %bb.by
  %eh.lpad-body51.i.i = phi { ptr, i32 } [ %i.gj, %bb.ct ], [ %i.eb, %bb.by ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val11.i.i = load ptr, ptr %i.gk, align 8, !alias.scope !3175
  %i.gl = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val12.i.i = load ptr, ptr %i.gl, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val11.i.i, ptr nonnull %.val12.i.i) #34
          to label %bb.dg unwind label %bb.ck

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i49.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val9.i.i = load ptr, ptr %i.gm, align 8, !alias.scope !3175 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val10.i.i = load ptr, ptr %i.gn, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.go = load ptr, ptr %.val10.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i78.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i78.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  invoke void %i.go(ptr noundef nonnull %.val9.i.i)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit52.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i81.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i81.i.i: ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) %i.gt) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.cw:                                            ; preds = %bb.cu
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i79.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i79.i.i: ; preds = %bb.cw
  %i.gy = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) %i.gz) #37
  br label %bb.dg

bb.cx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i54.i.i
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i

.body55.i.i:                                      ; preds = %bb.cx, %bb.cb
  %eh.lpad-body56.i.i = phi { ptr, i32 } [ %i.ha, %bb.cx ], [ %i.ee, %bb.cb ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val7.i.i = load ptr, ptr %i.hb, align 8, !alias.scope !3175
  %i.hc = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val8.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val7.i.i, ptr nonnull %.val8.i.i) #34
          to label %bb.dg unwind label %bb.ck

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit57.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i54.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val5.i.i = load ptr, ptr %i.hd, align 8, !alias.scope !3175 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val6.i.i = load ptr, ptr %i.he, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.hf = load ptr, ptr %.val6.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i83.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i83.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit57.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  invoke void %i.hf(ptr noundef nonnull %.val5.i.i)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit57.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i86.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i86.i.i: ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.hh, i64 noundef range(i64 1, -9223372036854775807) %i.hk) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.da:                                            ; preds = %bb.cy
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i84.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i84.i.i: ; preds = %bb.da
  %i.hp = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) %i.hq) #37
  br label %bb.dg

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i59.i.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i.i

.body60.i.i:                                      ; preds = %bb.db, %bb.ce
  %eh.lpad-body61.i.i = phi { ptr, i32 } [ %i.hr, %bb.db ], [ %i.eh, %bb.ce ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val3.i.i = load ptr, ptr %i.hs, align 8, !alias.scope !3175
  %i.ht = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val4.i.i = load ptr, ptr %i.ht, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr %.val3.i.i, ptr nonnull %.val4.i.i) #34
          to label %bb.dg unwind label %bb.ck

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit62.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i59.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %.val.i.i10 = load ptr, ptr %i.hu, align 8, !alias.scope !3175 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %.val2.i.i = load ptr, ptr %i.hv, align 8, !alias.scope !3175, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.hw = load ptr, ptr %.val2.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i88.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i88.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit62.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i10) ]
  invoke void %i.hw(ptr noundef nonnull %.val.i.i10)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %bb.dc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit62.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i91.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i91.i.i: ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i10) ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i10, i64 noundef %i.hy, i64 noundef range(i64 1, -9223372036854775807) %i.ib) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.de:                                            ; preds = %bb.dc
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.dg, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i89.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i89.i.i: ; preds = %bb.de
  %i.ig = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i10, i64 noundef %i.ie, i64 noundef range(i64 1, -9223372036854775807) %i.ih) #37
  br label %bb.dg

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit10.i.i.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i89.i.i, %bb.de, %.body60.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i84.i.i, %bb.da, %.body55.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i79.i.i, %bb.cw, %.body50.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i74.i.i, %bb.cs, %.body45.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i69.i.i, %bb.co, %.body40.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i64.i.i, %bb.cj, %.body.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i34.i.i, %bb.bq, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.bm, %bb.bg, %.body.i.i.i, %.body11.i.i.i, %.body8.i.i.i, %bb.ba, %bb.ax, %bb.ao, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i12, %bb.af, %bb.aa
  %eh.lpad-body.i9 = phi { ptr, i32 } [ %i.ii, %bb.df ], [ %i.hl, %bb.da ], [ %i.aq, %bb.aa ], [ %i.ba, %bb.af ], [ %i.co, %bb.bg ], [ %i.da, %bb.bm ], [ %i.do, %bb.bq ], [ %i.eu, %bb.cj ], [ %eh.lpad-body61.i.i, %.body60.i.i ], [ %i.fm, %bb.co ], [ %i.gd, %bb.cs ], [ %i.gu, %bb.cw ], [ %i.ba, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i12 ], [ %eh.lpad-body12.i.i.i, %.body11.i.i.i ], [ %i.br, %bb.ao ], [ %i.bz, %bb.ax ], [ %i.cc, %bb.ba ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body9.i.i.i, %.body8.i.i.i ], [ %i.da, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ], [ %i.do, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i34.i.i ], [ %i.eu, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i64.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body41.i.i, %.body40.i.i ], [ %eh.lpad-body46.i.i, %.body45.i.i ], [ %eh.lpad-body51.i.i, %.body50.i.i ], [ %eh.lpad-body56.i.i, %.body55.i.i ], [ %i.fm, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i69.i.i ], [ %i.gd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i74.i.i ], [ %i.gu, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i79.i.i ], [ %i.hl, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i84.i.i ], [ %i.ic, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i89.i.i ], [ %i.ic, %bb.de ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 72, i64 noundef 8) #37
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.y, %bb.ae, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit10.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21.i.i.invoke.i, %bb.bi, %bb.bl, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.bp, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i36.i.i, %bb.ci, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i66.i.i, %bb.cn, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i71.i.i, %bb.cr, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i76.i.i, %bb.cv, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i81.i.i, %bb.cz, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i86.i.i, %bb.dd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i91.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 72, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.dh:                                            ; preds = %bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.ij, align 8, !nonnull !8, !noundef !8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val3)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.di:                                            ; preds = %bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ik)
          to label %bb.ff unwind label %bb.fe

bb.dj:                                            ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit15 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %common.resume unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit15: ; preds = %bb.dj
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.il)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.dm:                                            ; preds = %bb.a
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit17 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %common.resume unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit17: ; preds = %bb.dm
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.io)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.dp:                                            ; preds = %bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ir)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit19 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ir)
          to label %common.resume unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit19: ; preds = %bb.dp
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ir)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ds:                                            ; preds = %bb.a
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iu)
          to label %common.resume unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21: ; preds = %bb.ds
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iu)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.dv:                                            ; preds = %bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %bb.fk unwind label %bb.fj

bb.dw:                                            ; preds = %bb.a
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23 unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %common.resume unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23: ; preds = %bb.dw
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iy)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.dz:                                            ; preds = %bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.jb, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.jc = getelementptr i8, ptr %.val6, i64 8
  %.val.i = load ptr, ptr %i.jc, align 8, !noundef !8 ; 4 uses
  %i.jd = getelementptr i8, ptr %.val6, i64 16
  %.val1.i = load ptr, ptr %i.jd, align 8         ; 6 uses
  %i.je = icmp eq ptr %.val.i, null
  br i1 %i.je, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.jf = load ptr, ptr %.val1.i, align 8, !invariant.load !8, !noalias !3184 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke void %i.jf(ptr noundef nonnull %.val.i)
          to label %bb.ec unwind label %bb.ed, !noalias !3184

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !range !989, !invariant.load !8, !noalias !3184 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ec
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !range !470, !invariant.load !8, !noalias !3184
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) %i.jk) #37, !noalias !3184
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ed:                                            ; preds = %bb.eb
  %i.jl = landingpad { ptr, i32 }
          cleanup
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !range !989, !invariant.load !8, !noalias !3184 ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.ee, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ed
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !range !470, !invariant.load !8, !noalias !3184
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.jn, i64 noundef range(i64 1, -9223372036854775807) %i.jq) #37, !noalias !3184
  br label %bb.ee

bb.ee:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ed
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 24, i64 noundef 8) #37
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.dz, %bb.ec, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 24, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ef:                                            ; preds = %bb.a
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit25 unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jr)
          to label %common.resume unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit25: ; preds = %bb.ef
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jr)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ei:                                            ; preds = %bb.a
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ju, align 8            ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.jv, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.jw = load ptr, ptr %.val2, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.jw, null
  br i1 %.not.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.jw(ptr noundef nonnull %.val)
          to label %bb.ek unwind label %bb.el

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.jx = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.ek
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.kb = load i64, ptr %i.ka, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) %i.kb) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.el:                                            ; preds = %bb.ej
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.el
  %i.kg = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ke, i64 noundef range(i64 1, -9223372036854775807) %i.kh) #37
  br label %common.resume

bb.em:                                            ; preds = %bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %.body unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.em
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit27 unwind label %bb.fq

bb.ep:                                            ; preds = %bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit30 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kl)
          to label %common.resume unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit30: ; preds = %bb.ep
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kl)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.es:                                            ; preds = %bb.a
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic10DiagnosticEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ko)
          to label %bb.ft unwind label %bb.fs

bb.et:                                            ; preds = %bb.a
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.kq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kp)
          to label %common.resume unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.et
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kp)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ew:                                            ; preds = %bb.a
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3190)
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !3193, !nonnull !8, !noundef !8
  %i.ku = atomicrmw sub ptr %i.kt, i64 1 release, align 8, !noalias !3193
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.ex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ks) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ey:                                            ; preds = %bb.e
  %i.kw = landingpad { ptr, i32 }
          cleanup
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.kx) #34
          to label %common.resume unwind label %bb.fd

bb.ez:                                            ; preds = %bb.e
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.kz = load i64, ptr %i.ky, align 8, !range !311, !alias.scope !3194, !noundef !8
  %i.la = icmp eq i64 %i.kz, -9223372036854775808
  br i1 %i.la, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ky)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.lb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ky)
          to label %common.resume unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.fa
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ky)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i32, %bb.ff, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.ez, %bb.ex, %bb.ew, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.ek, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit39, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit25, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit15, %bb.dh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.fd:                                            ; preds = %bb.fj, %bb.fs, %.body, %bb.fe, %bb.ey
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.fe:                                            ; preds = %bb.di
  %i.le = landingpad { ptr, i32 }
          cleanup
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.lf) #34
          to label %common.resume unwind label %bb.fd

bb.ff:                                            ; preds = %bb.di
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.lh = load i64, ptr %i.lg, align 8, !range !311, !alias.scope !3197, !noundef !8
  %i.li = icmp eq i64 %i.lh, -9223372036854775808
  br i1 %i.li, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i32 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %common.resume unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i32: ; preds = %bb.fg
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lg)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs2VbMhdeEr66_16delta_benchmarks.exit

bb.fj:                                            ; preds = %bb.dv
  %i.ll = landingpad { ptr, i32 }
          cleanup
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load ptr, ptr %i.lm, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %.val8) #34
          to label %common.resume unwind label %bb.fd

bb.fk:                                            ; preds = %bb.dv
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load ptr, ptr %i.ln, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.lo = load i64, ptr %.val7, align 8, !range !311, !alias.scope !3200, !noundef !8
  %i.lp = icmp eq i64 %i.lo, -9223372036854775808
  br i1 %i.lp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val7)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val7)
          to label %bb.fp unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
end_hunk_7
begin_hunk_8_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaECs2VbMhdeEr66_16delta_benchmarks:bb.a
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0) #34
          to label %.body unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtNtBK_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtNtBR_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtNtBR_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.g ], [ %i.f, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h) #34
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.j:                                             ; preds = %.body, %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  %i.a = load i64, ptr %0, align 8, !range !390, !alias.scope !3485, !noundef !8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3488)
  %i.c = icmp eq i64 %i.a, 2
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3494)
  %i.e = load i64, ptr %i.d, align 8, !range !181, !alias.scope !3497, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !3504, !nonnull !8, !noundef !8
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !3504
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !3511, !nonnull !8, !noundef !8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !3511
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !311, !alias.scope !3512, !noundef !8
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %bb.j
  resume { ptr, i32 } %i.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs2VbMhdeEr66_16delta_benchmarks(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit
    i64 1, label %bb.c
  ], !prof !3517

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !8, !align !469, !noundef !8 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !989, !invariant.load !8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !470, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #37
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #37
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl18AlterRoleOperationECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3518, !noundef !8 ; 3 uses
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
  %i.g = load i64, ptr %i.f, align 8, !range !311, !alias.scope !3519, !noundef !8
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ac

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit, %.body, %bb.z, %bb.p, %bb.m, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.l, %bb.g ], [ %i.o, %bb.j ], [ %i.r, %bb.m ], [ %i.u, %bb.p ], [ %i.aj, %bb.z ], [ %eh.lpad-body, %.body ], [ %i.ar, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit5 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit5: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit7 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit7: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.r:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body8 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit.i18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl11ResetConfigECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit.i16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit14, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionEECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body8

.body8:                                           ; preds = %bb.s, %bb.u
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.z, %bb.u ], [ %i.x, %bb.s ] ; 2 uses
  %i.aa = load i64, ptr %0, align 8, !range !2001, !alias.scope !3522, !noundef !8
  %i.ab = icmp samesign ugt i64 %i.aa, 68
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.v

bb.v:                                             ; preds = %.body8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl14SetConfigValueECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.ab, !inline_history !3525

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i
end_hunk_8
begin_hunk_9_@_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB36_INtNtNtB3e_5slice4iter4IterB1g_EINtNtB3e_6option4IterB1g_EEB4y_EE0E0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %.not.i = icmp uge i64 %i.g, %i.b
  %or.cond.i.not = select i1 %i.f, i1 %.not.i, i1 false
  br i1 %or.cond.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3n_5utils18find_exprs_in_exprNCINvB47_20find_aggregate_exprsINtNtNtNtBy_4iter8adapters5chain5ChainIB59_INtNtNtBy_5slice4iter4IterB3j_EINtNtBy_6option4IterB3j_EEB6k_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsINtNtNtNtBF_4iter8adapters5chain5ChainIB5g_INtNtNtBF_5slice4iter4IterB3q_EINtNtBF_6option4IterB3q_EEB6r_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5524)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !5522, !noalias !5526 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5527)
  %.val.i.i = load i64, ptr %1, align 16, !range !2645, !alias.scope !5530, !noalias !5531, !noundef !8 ; 2 uses
  %i.i = icmp ne i64 %.val.i.i, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %.val.i.i, 26
  br i1 %i.j, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !5533, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !5533, !noundef !8
  %i.o = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_13SliceContains14slice_containsCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.l, i64 noundef %i.n), !noalias !5531
  br i1 %i.o, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5533
  call fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) #40, !noalias !5531
  %i.p = load i64, ptr %i.m, align 8, !alias.scope !5534, !noalias !5537, !noundef !8 ; 3 uses
  %i.q = load i64, ptr %.val.i, align 8, !range !989, !alias.scope !5534, !noalias !5537, !noundef !8
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.g, !noalias !5539

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #34
          to label %bb.i unwind label %bb.h, !noalias !5531

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !5531
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.f, %bb.e
  %i.u = load ptr, ptr %i.k, align 8, !alias.scope !5534, !noalias !5537, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.u, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.v, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !5531
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.m, align 8, !alias.scope !5534, !noalias !5537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5533
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  tail call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB3R_INtNtNtB3Z_5slice4iter4IterBK_EINtNtB3Z_6option4IterBK_EEB5i_EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsINtNtNtNtBF_4iter8adapters5chain5ChainIB5g_INtNtNtBF_5slice4iter4IterB3q_EINtNtBF_6option4IterB3q_EEB6r_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.x, align 8, !alias.scope !5540, !noalias !5543
  store i64 20, ptr %0, align 8, !alias.scope !5540, !noalias !5543
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsINtNtNtNtBF_4iter8adapters5chain5ChainIB5g_INtNtNtBF_5slice4iter4IterB3q_EINtNtBF_6option4IterB3q_EEB6r_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsINtNtNtNtBF_4iter8adapters5chain5ChainIB5g_INtNtNtBF_5slice4iter4IterB3q_EINtNtBF_6option4IterB3q_EEB6r_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.k, %bb.j, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_20find_aggregate_exprsRSB1g_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = tail call noundef i64 @_RNvCs121xw9Q1vLn_9recursive22get_minimum_stack_size()
  %i.c = tail call noundef i64 @_RNvCs121xw9Q1vLn_9recursive25get_stack_allocation_size()
  %i.d = tail call { i64, i64 } @_RNvCs1CPciySG8bN_7stacker15remaining_stack(), !noalias !5546 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = extractvalue { i64, i64 } %i.d, 1
  %.not.i = icmp uge i64 %i.g, %i.b
  %or.cond.i.not = select i1 %i.f, i1 %.not.i, i1 false
  br i1 %or.cond.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3n_5utils18find_exprs_in_exprNCINvB47_20find_aggregate_exprsRSB3j_E0E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsRSB3q_E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5556)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !5554, !noalias !5558 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5559)
  %.val.i.i = load i64, ptr %1, align 16, !range !2645, !alias.scope !5562, !noalias !5563, !noundef !8 ; 2 uses
  %i.i = icmp ne i64 %.val.i.i, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %.val.i.i, 26
  br i1 %i.j, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !5565, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !5565, !noundef !8
  %i.o = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_13SliceContains14slice_containsCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.l, i64 noundef %i.n), !noalias !5563
  br i1 %i.o, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5565
  call fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) #40, !noalias !5563
  %i.p = load i64, ptr %i.m, align 8, !alias.scope !5566, !noalias !5569, !noundef !8 ; 3 uses
  %i.q = load i64, ptr %.val.i, align 8, !range !989, !alias.scope !5566, !noalias !5569, !noundef !8
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.g, !noalias !5571

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #34
          to label %bb.i unwind label %bb.h, !noalias !5563

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !5563
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.f, %bb.e
  %i.u = load ptr, ptr %i.k, align 8, !alias.scope !5566, !noalias !5569, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.u, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.v, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !5563
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.m, align 8, !alias.scope !5566, !noalias !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5565
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  tail call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsRSBK_E0E0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsRSB3q_E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.x, align 8, !alias.scope !5572, !noalias !5575
  store i64 20, ptr %0, align 8, !alias.scope !5572, !noalias !5575
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsRSB3q_E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsRSB3q_E0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.k, %bb.j, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB26_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = tail call noundef i64 @_RNvCs121xw9Q1vLn_9recursive22get_minimum_stack_size()
  %i.c = tail call noundef i64 @_RNvCs121xw9Q1vLn_9recursive25get_stack_allocation_size()
  %i.d = tail call { i64, i64 } @_RNvCs1CPciySG8bN_7stacker15remaining_stack(), !noalias !5578 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = extractvalue { i64, i64 } %i.d, 1
  %.not.i = icmp uge i64 %i.g, %i.b
  %or.cond.i.not = select i1 %i.f, i1 %.not.i, i1 false
  br i1 %or.cond.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB49_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5586)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !5583, !noalias !5588 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5590)
  %i.h = load i64, ptr %1, align 16, !range !2645, !alias.scope !5593, !noalias !5594, !noundef !8 ; 2 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 5
  br i1 %i.j, label %bb.d, label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5596
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) #40, !noalias !5594
  store i64 5, ptr %i.a, align 16, !noalias !5596
  %i.l = call noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a), !noalias !5594 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5596
  br label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E0Cs2VbMhdeEr66_16delta_benchmarks.exit

_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2S_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E0Cs2VbMhdeEr66_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !181, !noundef !8
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !311, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !229

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #36
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEE11extend_withCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #34
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h, %bb.d
  %.pn7 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.p, %bb.h ], [ %i.p, %bb.g ]
  resume { ptr, i32 } %.pn7

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load i64, ptr %1, align 8, !range !390, !alias.scope !5597, !noundef !8
  %i.r = icmp eq i64 %i.q, 3
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionINtB8_17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_4ExprEEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3f_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !186, !noundef !8
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RINvXsxc_NtCs4lawaffTVVK_9sqlparser3astINtB7_17WrappedCollectionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB7_4ExprEENtNtB7_7visitor8VisitMut5visitINtB1L_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionINtB8_19OneOrManyWithParensNtB8_4ExprEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2001, !noundef !8
  %.not = icmp eq i64 %i.a, 70
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RINvXs7t_NtCs4lawaffTVVK_9sqlparser3astINtB7_19OneOrManyWithParensNtB7_4ExprENtNtB7_7visitor8VisitMut5visitINtB1f_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2W_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_10ObjectNameENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_12ContactEntryEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2Y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_12ContactEntryENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2l_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_13ExceptionWhenEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2Z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_13ExceptionWhenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_13UtilityOptionEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2Z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_13UtilityOptionENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2m_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_15SequenceOptionsEENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB31_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !311, !noundef !8
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_15SequenceOptionsENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_9
begin_hunk_10_@_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks:bb.a
; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtB8_7helpers14attached_token13AttachedTokenENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2T_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !2063, !noundef !8
  %.not = icmp eq i8 %i.a, 103
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RINvXs9_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB6_13AttachedTokenNtNtBa_7visitor8VisitMut5visitINtB1o_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionbENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptioncENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionhENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionyENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtB2X_8adapters12GenericShuntINtNtB43_3map3MapINtNtNtB2Z_5slice4iter4IterNtB1t_10AssignmentENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plan0EINtNtB2Z_6result6ResultNtNtB2Z_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !5601
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2t_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plan0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  %i.h = load i64, ptr %i.c, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2t_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plan0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  %i.i = load i64, ptr %i.b, align 8, !noundef !8
  %i.j = add i64 %i.i, 1
  %i.k = lshr i64 %i.j, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5605, !noalias !5608, !noundef !8
  %i.n = icmp ugt i64 %.sroa.0.0, %i.m
  br i1 %i.n, label %bb.e, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !229

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, i1 noundef zeroext true) ; 0 uses
  br label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2u_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plan0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMs0_NtNtB7_3ops9try_traitINtB7O_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB1G_4ExprENCINvNvB6X_8for_each4callB8O_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBag_7HashMapB8P_B9r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB71_7collect6ExtendB8O_E6extendBE_E0E0E0B89_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtNtBT_3vec9into_iter8IntoIterB3R_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !5610
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5 = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.h = ptrtoint ptr %.val5 to i64
  %i.i = ptrtoint ptr %.val4 to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 144                 ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.0 = select i1 %i.e, i64 %i.k, i64 %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !5614, !noalias !5617, !noundef !8
  %i.p = icmp ugt i64 %.sroa.0.0, %i.o
  br i1 %i.p, label %bb.b, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !229

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c ; 0 uses

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB24_8for_each4callBX_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3H_7HashMapBY_B1j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB28_7collect6ExtendBX_E6extendBI_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBN_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.s

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBN_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2u_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBP_ENCINvXs8_NtB9_3setINtB4X_7HashSetBP_B1z_EIB2o_BP_E6extendINtB41_3VecBP_EE0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !5619
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val5 = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.g = ptrtoint ptr %.val5 to i64
  %i.h = ptrtoint ptr %.val4 to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 112                 ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  %i.l = lshr i64 %i.k, 1
  %.sroa.0.0 = select i1 %i.d, i64 %i.j, i64 %i.l ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !5623, !noalias !5626, !noundef !8
  %i.o = icmp ugt i64 %.sroa.0.0, %i.n
  br i1 %i.o, label %bb.b, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !229

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = invoke { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.c ; 0 uses

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %bb.a
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2E_7HashSetB1L_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1L_E6extendINtB12_3VecB1L_EE0ENtNtB4k_8iterator8Iterator4folduNCINvNvB5g_8for_each4callTB1L_uENCINvXs1i_NtB2G_3mapINtB6s_7HashMapB1L_uB3r_EIB4g_B6b_E6extendBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2V_7HashSetB22_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBN_6traits7collect6ExtendB22_E6extendINtB1j_3VecB22_EE0EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.r

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2V_7HashSetB22_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBN_6traits7collect6ExtendB22_E6extendINtB1j_3VecB22_EE0EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2o_8adapters3map3MapIB3p_INtNtNtB2q_5slice4iter4IterINtNtBU_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB5w_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENCINvXs8_NtB9_3setINtB8n_7HashSetBP_B1t_EIB2i_BP_E6extendB3Q_E0EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = lshr i64 %i.h, 1
  %.sroa.0.0 = select i1 %i.c, i64 %i.g, i64 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5628, !noalias !5631, !noundef !8
  %i.l = icmp ugt i64 %.sroa.0.0, %i.k
  br i1 %i.l, label %bb.b, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !229

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs8ulvy0Wg6Ot_12delta_kernel(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, i1 noundef zeroext true) ; 0 uses
  br label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2S_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5J_7HashSetRNtNtB1w_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB6s_E6extendBX_E0ENtNtB7I_8iterator8Iterator4folduNCINvNvB8r_8for_each4callTB6s_uENCINvXs1i_NtB5L_3mapINtB9D_7HashMapB6s_uB6P_EIB7E_B9m_E6extendBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 8 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !8
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5633
  store i8 -1, ptr %i.e, align 1, !noalias !5633
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #40, !noalias !5640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5633
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef align 8 dereferenceable(72) %1) #40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !range !1691, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5641
  store i8 %i.o, ptr %i.d, align 1, !noalias !5641
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4KeysB12_B12_EE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !8 ; 7 uses
  %i.u = icmp samesign ult i64 %i.t, 2
  br i1 %i.u, label %_RINvNtCs6Po7BT7Nknu_5alloc5slice11stable_sortRNtNtB4_6string6StringNvYBH_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b, !prof !228

bb.b:                                             ; preds = %bb.a
  %i.v = icmp samesign ult i64 %i.t, 21
  br i1 %i.v, label %bb.d, label %bb.c, !prof !228

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtB14_3vec3VecBZ_EECsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 %i.r, i64 noundef range(i64 0, 1152921504606846976) %i.t, ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs6Po7BT7Nknu_5alloc5slice11stable_sortRNtNtB4_6string6StringNvYBH_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 %i.r, i64 noundef range(i64 0, 1152921504606846976) %i.t, i64 noundef 1, ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs6Po7BT7Nknu_5alloc5slice11stable_sortRNtNtB4_6string6StringNvYBH_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j

_RINvNtCs6Po7BT7Nknu_5alloc5slice11stable_sortRNtNtB4_6string6StringNvYBH_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.w = load i64, ptr %i.h, align 8, !range !989, !noundef !8
  %i.x = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.x)
  %.idx = shl nuw nsw i64 %i.t, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.r, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx, align 8
  %i.z = icmp eq i64 %i.t, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRNtNtBN_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit13, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs6Po7BT7Nknu_5alloc5slice11stable_sortRNtNtB4_6string6StringNvYBH_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load i64, ptr %i.aa, align 8
  %.fr35 = freeze i64 %i.ab
  %i.ac = icmp eq i64 %.fr35, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %i.p, align 8, !nonnull !8 ; 2 uses
  br i1 %i.ac, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !5644)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5644
  %i.ai = load ptr, ptr %i.r, align 8, !noalias !5644, !nonnull !8, !align !469, !noundef !8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !8, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !8
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5647
  store i8 -1, ptr %i.c, align 1, !noalias !5647
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #40, !noalias !5654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5647
  br label %select.unfold

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.split
  %lpad.loopexit30 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %select.unfold
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit30, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterRNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.thread unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRNtNtBN_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit13: ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCs6Po7BT7Nknu_5alloc5slice11stable_sortRNtNtB4_6string6StringNvYBH_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterRNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.an = phi ptr [ %i.bw, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.r, %.lr.ph ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5644)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5644
  %i.ap = load ptr, ptr %i.an, align 8, !noalias !5644, !nonnull !8, !align !469, !noundef !8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !8, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !8
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5647
  store i8 -1, ptr %i.c, align 1, !noalias !5647
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #40, !noalias !5654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5647
  %i.au = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc15:                                         ; preds = %.lr.ph.split
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.noexc15
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc15 ], [ %i.bp, %bb.g ]
  %.pn.i.i.i = phi i64 [ %i.au, %.noexc15 ], [ %i.bq, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.af   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.az, align 1, !noalias !5655 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.06.0.i28.i.i = phi i16 [ %i.bo, %bb.f ], [ %i.bb, %bb.e ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i, %i.bd
  %i.bf = and i64 %i.be, %i.af
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [48 x i8], ptr %i.ag, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -48
  %i.bj = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %.lr.ph.i.i
  br i1 %i.bj, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.f, !prof !228

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %select.unfold, !prof !229

end_hunk_10
begin_hunk_11_@_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.ai = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.013.019.i.i, %bb.h ]
  %i.aj = load <16 x i8>, ptr %i.ah, align 16, !noalias !6543
  %i.ak = icmp sgt <16 x i8> %i.aj, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -2304 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ak to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.h
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.019.i.i, %bb.h ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.h ], [ %i.am, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.021.i.i, %bb.h ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i, i64 %i.ar ; 3 uses
  %i.at = add i64 %.sroa.14.022.i.i, -1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6532
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.au)
          to label %.noexc.i.i unwind label %bb.g, !noalias !6532

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ae, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.av)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.i, !noalias !6532

bb.i:                                             ; preds = %.noexc.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #34
          to label %.body.i.i unwind label %bb.j, !noalias !6532

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6532
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.noexc.i.i
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.af, %i.ay
  %i.ba = sdiv exact i64 %i.az, 144               ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [144 x i8], ptr %i.s, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bd, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !6532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6532
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.at, 0
  br i1 %i.bf, label %.loopexit.i, label %bb.h

bb.k:                                             ; preds = %.body.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6532
  unreachable

.body.i:                                          ; preds = %.body.i.i
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.l, !noalias !6519

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.y, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !6525, !noalias !6542
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !6530, !noalias !6531, !noundef !8
  store i64 %i.bi, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !6525, !noalias !6542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6519
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6519
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.bk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2y_4SendEL_EENtNtB2A_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6548)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6548, !noalias !6551, !noundef !8 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 24) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = add nuw i64 %i.h, 8
  %i.j = and i64 %i.i, -16                        ; 3 uses
  %i.k = add i64 %i.c, 17                         ; 2 uses
  %i.l = add i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp ult i64 %i.l, %i.j
  %i.n = icmp ugt i64 %i.l, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6553
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6553 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !6553
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.l) #36, !noalias !6553
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i11.i.i.i = phi ptr [ %i.p, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i.i, i64 %i.j ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6558)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !6561, !noalias !6562, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.r, ptr nonnull align 1 %i.s, i64 %i.k, i1 false), !noalias !6564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6565)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !6568, !noalias !6569, !noundef !8 ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.w = load <16 x i8>, ptr %i.s, align 16, !noalias !6571
  %i.x = icmp sgt <16 x i8> %i.w, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = ptrtoint ptr %i.s to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.14.023.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.aq, %bb.h ]
  %.sroa.10.022.i.i = phi i16 [ %i.y, %.lr.ph.i.i ], [ %i.as, %bb.h ] ; 2 uses
  %.sroa.6.021.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.sroa.013.020.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.h ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.10.022.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ab = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.021.i.i, %bb.f ] ; 2 uses
  %i.ac = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.013.020.i.i, %bb.f ]
  %i.ad = load <16 x i8>, ptr %i.ab, align 16, !noalias !6574
  %i.ae = icmp sgt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -384 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ae to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.020.i.i, %bb.f ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.021.i.i, %bb.f ], [ %i.ag, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.022.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [24 x i8], ptr %.sroa.013.1.i.i, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6579)
  %.val.i.i.i = load i8, ptr %i.al, align 1, !range !1691, !alias.scope !6579, !noalias !6582, !noundef !8
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !6579, !noalias !6582, !nonnull !8, !noundef !8 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %.val2.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !6579, !noalias !6582 ; 2 uses
  %i.ao = atomicrmw add ptr %.val1.i.i.i, i64 1 monotonic, align 8, !noalias !6584
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %.loopexit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.aq = add i64 %.sroa.14.023.i.i, -1           ; 2 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = and i16 %i.ar, %.lcssa.i.i.i
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = sub i64 %i.aa, %i.at
  %.neg.i.i = sdiv exact i64 %i.au, -24
  %i.av = getelementptr inbounds [24 x i8], ptr %i.r, i64 %.neg.i.i ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -24
  store i8 %.val.i.i.i, ptr %i.aw, align 8, !noalias !6564
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.av, i64 -16
  store ptr %.val1.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !6564
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.av, i64 -8
  store ptr %.val2.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !6564
  %i.ax = icmp eq i64 %i.aq, 0
  br i1 %i.ax, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %bb.h, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !6561, !noalias !6562, !noundef !8
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.loopexit.i
  %.sroa.7.0 = phi i64 [ %i.u, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.az, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.r, %.loopexit.i ], [ @4, %bb.a ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.ba, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6585)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6585, !noalias !6588, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6585
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6590
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6591
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6591 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6591
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6591
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6590
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6590
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6590
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6604)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !6606, !noalias !6607, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.z, i64 %.pre-phi.i, i1 false), !noalias !6608
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6606, !noalias !6607, !noundef !8 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ad = load <16 x i8>, ptr %i.z, align 16, !noalias !6609
  %i.ae = icmp sgt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ai = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.az, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6614

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.aw, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.af, %.lr.ph.i.i.i ], [ %i.at, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ak = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.al = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %i.am = load <16 x i8>, ptr %i.ak, align 16, !noalias !6615
  %i.an = icmp sgt <16 x i8> %i.am, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -768 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.au ; 3 uses
  %i.aw = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6608
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6608

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !6608

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !6608

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6608
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.bb = ptrtoint ptr %i.av to i64
end_hunk_11
begin_hunk_12_@_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !7257
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !7256
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7256
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !7256
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7270)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !7272, !noalias !7273, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.z, i64 %.pre-phi.i, i1 false), !noalias !7274
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !7272, !noalias !7273, !noundef !8 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ad = load <16 x i8>, ptr %i.z, align 16, !noalias !7275
  %i.ae = icmp sgt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = ptrtoint ptr %i.z to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.026.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.k, !noalias !7280

bb.j:                                             ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.026.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bd, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.025.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.au, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.024.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.023.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.022.i.i.i = phi i16 [ %i.af, %.lr.ph.i.i.i ], [ %i.aw, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.022.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.6.023.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.013.024.i.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !7281
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -1792 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.am to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.023.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.024.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.022.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [112 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ar ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7274
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.at) #40
          to label %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.i, !noalias !7274

_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.loopexit.i.i.i
  %i.au = add i64 %.sroa.1015.025.i.i.i, -1       ; 2 uses
  %i.av = add i16 %.lcssa.i.i.i.i, -1
  %i.aw = and i16 %i.av, %.lcssa.i.i.i.i
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = sub i64 %i.ah, %i.ax
  %i.az = sdiv exact i64 %i.ay, 112               ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [112 x i8], ptr %.sroa.0.0.i, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bc, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !7274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7274
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.au, 0
  br i1 %i.be, label %.loopexit.i, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7274
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.m unwind label %bb.l, !noalias !7256

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7286, !noalias !7280
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !7272, !noalias !7273, !noundef !8
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !7286, !noalias !7280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !7251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7256
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7256
  unreachable

bb.m:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ai

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load <2 x i64>, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7287)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7287, !noalias !7290, !noundef !8 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.f, 4                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7292
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7292 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7292
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !7292
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.h
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %i.i, %bb.g ], [ %.pre.i, %bb.f ]
  %.sroa.09.0.i = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ] ; 4 uses
  %.sroa.5.0.i = phi i64 [ %i.d, %bb.g ], [ %.sroa.7.0.ph.i.i, %bb.f ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7297)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !7300, !noalias !7301, !nonnull !8, !noundef !8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0.i, ptr nonnull align 1 %i.s, i64 %.pre-phi.i, i1 false), !noalias !7303
  %i.t = xor i64 %i.d, -1
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = xor i64 %.sroa.5.0.i, -1
  %i.w = getelementptr [16 x i8], ptr %.sroa.09.0.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = shl i64 %.sroa.5.0.i, 4
  %i.y = add i64 %i.x, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !noalias !7303
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !7300, !noalias !7301
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.h
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i, %bb.h ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.09.0.i, %bb.h ], [ @4, %bb.a ]
  %i.ab = phi <2 x i64> [ %i.aa, %bb.h ], [ zeroinitializer, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.b, ptr %i.ac, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ab, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_3AnyNtNtBO_6marker4SyncNtB22_4SendEL_EINtNtBO_4hash18BuildHasherDefaultNtNtCs4m0Tg8nAduX_20datafusion_execution6config8IdHasherEENtNtBO_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7304)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7304, !noalias !7307, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtBT_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.e, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.d, 5                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17                     ; 2 uses
  %i.h = add i64 %i.f, %i.g                       ; 5 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7309
  %i.l = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7309 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7309
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.h), !noalias !7309
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.f
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.f ], [ %i.g, %bb.g ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.f ], [ %i.b, %bb.g ]
  %.sroa.0.0.i = phi ptr [ null, %bb.f ], [ %i.p, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7317)
  %i.q = load ptr, ptr %1, align 8, !alias.scope !7320, !noalias !7321, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.q, i64 %.pre-phi.i, i1 false), !noalias !7324
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !7320, !noalias !7321, !noundef !8 ; 3 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.u = load <16 x i8>, ptr %i.q, align 16, !noalias !7325
  %i.v = icmp sgt <16 x i8> %i.u, splat (i8 -1)
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.y = ptrtoint ptr %i.q to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.sroa.1015.027.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ %i.ao, %bb.j ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.j ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.j ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.w, %.lr.ph.i.i.i ], [ %i.aq, %bb.j ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.z = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.h ] ; 2 uses
  %i.aa = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.h ]
  %i.ab = load <16 x i8>, ptr %i.z, align 16, !noalias !7330
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -512 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ac to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.h
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.h ], [ %i.ad, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.h ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7335)
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !7335, !noalias !7338, !nonnull !8, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !7335, !noalias !7338 ; 2 uses
  %i.al = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !7340
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -32
  %i.ao = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  %i.ap = add i16 %.lcssa.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.lcssa.i.i.i.i
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.y, %i.ar
  %i.at = ashr exact i64 %i.as, 5
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !noalias !7324
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.av, i64 -16
  store ptr %.val.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !7324
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.av, i64 -8
  store ptr %.val1.i.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8, !noalias !7324
  %i.ax = icmp eq i64 %i.ao, 0
  br i1 %i.ax, label %.loopexit.i, label %bb.h

.loopexit.i:                                      ; preds = %bb.j, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !7320, !noalias !7321, !noundef !8
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtBT_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtBT_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.loopexit.i
  %.sroa.7.0 = phi i64 [ %i.s, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.az, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %.loopexit.i ], [ @4, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer11trace_block(ptr noalias nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer12trace_future(ptr noalias nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0INtB2_7FnOnce1INtNtB2w_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EE9call_onceCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7347
  store ptr %1, ptr %i.c, align 8, !noalias !7349
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !7349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7349
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !8, !alias.scope !7351, !noalias !7352, !nonnull !8
  invoke void %i.f(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %1)
          to label %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.b, !noalias !7352

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #34
          to label %common.resume.i unwind label %bb.c, !noalias !7352

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7352
  unreachable

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.a
  %i.i = load i128, ptr %i.b, align 16, !noalias !7349, !noundef !8
  %i.j = icmp eq i128 %i.i, -37062676355244807409671512867870684984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7347
  br i1 %i.j, label %_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d, !prof !228

bb.d:                                             ; preds = %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7347
  store ptr %1, ptr %i.a, align 8, !noalias !7347
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.k, align 8, !noalias !7347
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 48, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #36
          to label %bb.f unwind label %bb.e, !noalias !7353

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %common.resume.i unwind label %bb.g, !noalias !7353

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7353
  unreachable

_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !7341
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 48, i64 noundef 8) #37, !noalias !7353
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @10, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB5_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB12_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB6_15IdleNotifiedSetINtNtNtNtBa_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE5drainNCNvXs0_NtNtBa_4task8join_setINtB5j_7JoinSetB1V_ENtNtNtB22_3ops4drop4Drop4drop0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = load i64, ptr %0, align 16, !range !2645, !noundef !8 ; 3 uses
  %i.ai = icmp ne i64 %i.ah, 35
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nsw i64 %i.ah, -4
  %i.ak = icmp samesign ugt i64 %i.ah, 3
  %i.al = select i1 %i.ak, i64 %i.aj, i64 31
  switch i64 %i.al, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
end_hunk_12
begin_hunk_13_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB1h_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9120)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9120, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1h_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9123)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9126, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !9126, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !9127
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.86.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !9132
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e, !noalias !9126

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.f, !noalias !9126

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !9126
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.y = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.z = add i16 %.lcssa.i.i.i, -1
  %i.aa = and i16 %i.z, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !9126
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %i.ac = mul i64 %i.b, 24
  %i.ad = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i64 %i.ac, -16                      ; 2 uses
  %i.af = add i64 %i.ae, 32                       ; 2 uses
  %i.ag = add nsw i64 %i.b, 17
  %i.ah = add i64 %i.ag, %i.af                    ; 4 uses
  %i.ai = icmp uge i64 %i.ah, %i.af
  %i.aj = icmp ult i64 %i.ah, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ai)
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1h_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.al = load ptr, ptr %0, align 8, !alias.scope !9120, !nonnull !8, !noundef !8
  %i.am = sub i64 -32, %i.ae
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !9120
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1h_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1h_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9137)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9137, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9140)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9143, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !9143, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !9144
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !9149
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1792 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [112 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -112
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.y), !noalias !9143
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 112                       ; 2 uses
  %i.ab = add i64 %i.aa, 112                      ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !9137, !nonnull !8, !noundef !8
  %i.ai = sub i64 -112, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !9137
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #37
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9154)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9154, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2w_4SendEL_EENtNtB1Q_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9157)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9160, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !9160, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !9161
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !9166
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9171)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9177)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !9180, !noalias !9160, !nonnull !8, !noundef !8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !9181
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #35, !noalias !9160
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBX_3AnyNtNtBZ_6marker4SyncNtB2d_4SendEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBJ_3AnyNtNtB4_6marker4SyncNtB1J_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %i.ad = shl i64 %i.b, 5                         ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2w_4SendEL_EENtNtB1Q_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !9154, !nonnull !8, !noundef !8
  %i.al = sub nuw nsw i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !9154
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2w_4SendEL_EENtNtB1Q_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1f_3AnyNtNtB1h_6marker4SyncNtB2w_4SendEL_EENtNtB1Q_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1c_3AnyNtNtB1e_6marker4SyncNtB2t_4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9182)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9182, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EENtNtB2y_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9185)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9188, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !9188, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !9189
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.86.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !9194
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1024 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [64 x i8], ptr %.sroa.05.1.i.i, i64 %i.v ; 3 uses
  %i.x = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %bb.g unwind label %bb.e, !noalias !9188

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9202)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !9205, !noalias !9188, !nonnull !8, !noundef !8
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !9208
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.i, !noalias !9188

bb.g:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9212)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !9215, !noalias !9188, !nonnull !8, !noundef !8
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !9216
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #35, !noalias !9188
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !9188
end_hunk_13
begin_hunk_14_@_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EENtNtB2y_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9217)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9217, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9220)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9223, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !9223, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !9224
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !9229
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1664 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.v
  %i.x = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -104
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.y), !noalias !9223
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 104
  %i.ab = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 112                      ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !9217, !nonnull !8, !noundef !8
  %i.ak = sub i64 -112, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !9217
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBV_4file10properties16ColumnPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9234)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9234, !noundef !8 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1j_4file10properties16ColumnPropertiesENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9237)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9240, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !9240, !nonnull !8, !noundef !8 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !9241
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.86.014.i.i = phi i16 [ %i.k, %bb.c ], [ %i.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !9246
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -1280 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [80 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -80 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.e, !noalias !9240

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.f, !noalias !9240

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !9240
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB11_4file10properties16ColumnPropertiesEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.y = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.z = add i16 %.lcssa.i.i.i, -1
  %i.aa = and i16 %i.z, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.v), !noalias !9240
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBN_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.b
  %i.ac = mul i64 %i.b, 80                        ; 2 uses
  %i.ad = add i64 %i.ac, 80                       ; 2 uses
  %i.ae = add i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1j_4file10properties16ColumnPropertiesENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !9234, !nonnull !8, !noundef !8
  %i.ak = sub i64 -80, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !9234
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1j_4file10properties16ColumnPropertiesENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1j_4file10properties16ColumnPropertiesENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1g_4file10properties16ColumnPropertiesEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1i_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1i_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #37
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1i_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtB1i_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #37
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !186, !noundef !8 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !186, !noundef !8
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !8
  %i.h = icmp eq i64 %i.e, %i.g                   ; 3 uses
  switch i64 %i.a, label %default.unreachable25 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

.sink.split:                                      ; preds = %bb.l, %bb.h, %bb.d
  %.sink = phi i64 [ 24, %bb.h ], [ 8, %bb.d ], [ 40, %bb.l ] ; 2 uses
  %.sink27 = phi i64 [ %i.x, %bb.h ], [ %i.e, %bb.d ], [ %i.av, %bb.l ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %bcmp15 = tail call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.k, i64 %.sink27)
  %i.o = icmp eq i32 %bcmp15, 0
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.l, %bb.i, %bb.k, %bb.f, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.j ], [ %i.o, %.sink.split ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable25:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %.sink.split, label %bb.c

bb.e:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.g, label %bb.c

bb.f:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.i, label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %bcmp16 = tail call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %i.r, i64 %i.e)
  %i.v = icmp eq i32 %bcmp16, 0
  br i1 %i.v, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.w, align 8, !noundef !8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !8
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %.sink.split, label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !8, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ag, ptr nonnull %i.ad, i64 %i.e)
  %i.ah = icmp eq i32 %bcmp, 0
  br i1 %i.ah, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !8
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !8, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %bcmp14 = tail call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.ap, i64 %i.aj)
  %i.at = icmp eq i32 %bcmp14, 0
  br i1 %i.at, label %bb.l, label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i64, ptr %i.au, align 8, !noundef !8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !8
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %.sink.split, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i128, ptr %1, align 16, !range !3358, !noundef !8 ; 3 uses
  %i.s = icmp ne i128 %i.r, 10
  tail call void @llvm.assume(i1 %i.s)
  %i.t = trunc nuw nsw i128 %i.r to i64
  %i.u = add nsw i64 %i.t, -2
  %i.v = icmp samesign ugt i128 %i.r, 1
  %i.w = select i1 %i.v, i64 %i.u, i64 8
  switch i64 %i.w, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
    i64 35, label %bb.al
    i64 36, label %bb.am
    i64 37, label %bb.an
    i64 38, label %bb.ao
    i64 39, label %bb.ap
    i64 40, label %bb.aq
    i64 41, label %bb.ar
    i64 42, label %bb.as
    i64 43, label %bb.at
    i64 44, label %bb.au
    i64 45, label %bb.av
    i64 46, label %bb.aw
    i64 47, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a
  unreachable
end_hunk_14
