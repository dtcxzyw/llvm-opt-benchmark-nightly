Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.15?download=true
inline.NumInlined: 12000
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB4_16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl11return_type:bb.a
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.m, %bb.d ], [ %i.u, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit17: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #55
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5Field3newReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2408, i64 noundef 7, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.p, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !36509
  %i.q = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 128, i64 noundef range(i64 1, 17) 8) #45, !noalias !36509 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !55

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #53
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.o)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.j:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.g) #50
          to label %common.resume unwind label %bb.o

bb.k:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit17, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit
  %.sink = phi ptr [ %i.k, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit17 ], [ %i.q, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 27, ptr %i.v, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sink, ptr %.sroa.41.0..sroa_idx, align 8
  store i64 20, ptr %i.g, align 8
  %i.w = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.x = icmp ult i64 %i.w, 6
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp samesign ugt i64 %i.w, 3
  br i1 %i.y, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXst_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB7_3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.413.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @2411, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 38, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @2411, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 38, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @2410, ptr %i.ac, align 8
  invoke void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull @2409, ptr noundef nonnull %i.d, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.o:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB4_16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl12coerce_types(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #0 !guid !36510 {
bb.a:
  tail call void @_RNvXs0_NtCsjXVmwyzybGx_27datafusion_functions_nested10make_arrayNtB5_9MakeArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl12coerce_types(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB4_16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl13documentation(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #0 !guid !36511 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs0_NtCsjXVmwyzybGx_27datafusion_functions_nested10make_arrayNtB5_9MakeArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl13documentation(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB4_16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl16invoke_with_args(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !36554 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 9 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [128 x i8], align 8               ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 16               ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [64 x i8], align 16               ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [112 x i8], align 8               ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 12 uses
  %i.s = alloca [72 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 16               ; 7 uses
  %.sroa.7 = alloca [40 x i8], align 16           ; 8 uses
  %i.u = alloca [64 x i8], align 16               ; 16 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !54, !noundef !54 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !54 ; 2 uses
  %.idx = shl nuw nsw i64 %i.aa, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  %.not121129 = icmp eq i64 %i.aa, 0
  br i1 %.not121129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0130 = phi ptr [ %i.ac, %bb.c ], [ %i.y, %bb.a ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0130, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs0_NtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_valueNtB5_13ColumnarValue9data_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0130)
          to label %bb.b unwind label %.split.loopexit

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  invoke void @_RNvXs0_NtCsjXVmwyzybGx_27datafusion_functions_nested10make_arrayNtB5_9MakeArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl16invoke_with_args(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.s)
          to label %bb.d unwind label %.split.loopexit.split-lp

.split.loopexit:                                  ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split.loopexit.split-lp:                         ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.b:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.w)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br label %.split

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not121 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not121, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ae = load i128, ptr %i.t, align 16, !range !98, !noundef !54 ; 5 uses
  %i.af = icmp eq i128 %i.ae, 51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(40) %i.ag, i64 40, i1 false)
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ah, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  store i128 51, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.w)
  br label %bb.ax

bb.f:                                             ; preds = %bb.d
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.632.0.copyload = load i64, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  store i128 %i.ae, ptr %i.u, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %.sroa.632.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i128 %i.ae, 50
  br i1 %.not, label %bb.as, label %3

3:                                                ; preds = %bb.f
  %4 = icmp ne i128 %i.ae, 10
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i128 %i.ae, 27
  br i1 %5, label %bb.g, label %bb.as

bb.g:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx, align 16, !nonnull !54, !noundef !54
  store ptr %i.ai, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5Field3newReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2408, i64 noundef 7, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.p

.critedge66:                                      ; preds = %.noexc82, %bb.aq, %bb.w, %bb.p, %bb.k, %bb.y
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp94, %bb.p ], [ %i.bp, %bb.y ], [ %lpad.thr_comm93, %.noexc82 ], [ %i.bn, %bb.w ], [ %i.aq, %bb.k ], [ %lpad.thr_comm93, %bb.aq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36555)
  call void @llvm.experimental.noalias.scope.decl(metadata !36556)
  %i.aj = load ptr, ptr %i.r, align 8, !alias.scope !36557, !nonnull !54, !noundef !54
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !36557
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.h, label %bb.ay

bb.h:                                             ; preds = %.critedge66
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #52
          to label %bb.ay unwind label %bb.ai

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.an, ptr noundef nonnull align 8 dereferenceable(112) %i.q, i64 112, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !36558
  %i.ao = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 128, i64 noundef range(i64 1, 17) 8) #45, !noalias !36558 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.j, label %bb.m, !prof !55

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #53
          to label %.noexc69 unwind label %bb.k

.noexc69:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.an)
          to label %.critedge66 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ao, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.ao, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.as = load ptr, ptr %i.r, align 8, !nonnull !54, !noundef !54 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !54, !noundef !54 ; 3 uses
  %i.av = atomicrmw add ptr %i.au, i64 1 monotonic, align 8
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !noundef !54
  store ptr %i.au, ptr %i.m, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ay, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ba, ptr %.sroa.542.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bb = load ptr, ptr %i.r, align 8, !nonnull !54, !noundef !54
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  invoke void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7to_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc)
          to label %bb.q unwind label %bb.ao

bb.o:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.g, %bb.t, %bb.r
  %lpad.thr_comm.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge66

bb.q:                                             ; preds = %bb.n
  %i.bd = invoke { ptr, ptr } @_RNvNtCs1N9T06jgEdt_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.l)
          to label %bb.r unwind label %bb.ao      ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.be = extractvalue { ptr, ptr } %i.bd, 0
  %i.bf = extractvalue { ptr, ptr } %i.bd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr null, ptr %i.k, align 8
  invoke void @_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylE7try_newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.d, ptr noundef nonnull %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.s unwind label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bg = load i8, ptr %i.d, align 8, !range !137, !noundef !54 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 41
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.aj unwind label %bb.p

bb.u:                                             ; preds = %bb.s
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.320.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.645.0..sroa_idx, i64 72, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.544.0..sroa_idx, i64 39, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.bg, ptr %i.bk, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !36559
  %i.bl = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 128, i64 noundef range(i64 1, 17) 8) #45, !noalias !36559 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.v, label %bb.z, !prof !55

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #53
          to label %.noexc71 unwind label %bb.w

.noexc71:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c) #50
          to label %.critedge66 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.y:                                             ; preds = %bb.ac
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.o) #50
          to label %.critedge66 unwind label %bb.ai

bb.z:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bl, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i128 27, ptr %i.o, align 16
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.bl, ptr %.sroa.511.0..sroa_idx, align 16
  %i.bq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 6
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp samesign ugt i64 %i.bq, 3
  br i1 %i.bs, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %i.o, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !36560)
  call void @llvm.experimental.noalias.scope.decl(metadata !36561)
  %i.bt = load ptr, ptr %i.r, align 8, !alias.scope !36562, !nonnull !54, !noundef !54
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !36562
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit74

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit74 unwind label %bb.ae

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.o, ptr %i.j, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXst_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB7_3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.449.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @2411, ptr %i.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 38, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr @2411, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 38, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr @2413, ptr %i.bz, align 8
  invoke void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull @2412, ptr noundef nonnull %i.j, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
          to label %bb.ad unwind label %bb.y

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.ak, %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit74: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cb = load i128, ptr %i.u, align 16, !range !119, !noundef !54 ; 3 uses
  %.not59 = icmp eq i128 %i.cb, 50
  br i1 %.not59, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit74
  call void @llvm.experimental.noalias.scope.decl(metadata !36563)
  call void @llvm.experimental.noalias.scope.decl(metadata !36564)
  call void @llvm.experimental.noalias.scope.decl(metadata !36565)
  %i.cc = load ptr, ptr %.sroa.4.0..sroa_idx, align 16, !alias.scope !36566, !nonnull !54, !noundef !54
  %i.cd = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !noalias !36566
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx) #52
  br label %.critedge

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit74
  %i.cf = icmp ne i128 %i.cb, 10
  call void @llvm.assume(i1 %i.cf)
  %6 = icmp eq i128 %i.cb, 27
  br i1 %6, label %.critedge, label %7

7:                                                ; preds = %bb.ah
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.u)
  br label %.critedge

bb.ai:                                            ; preds = %bb.aq, %bb.ap, %bb.h, %bb.bb, %.split, %12, %bb.az, %bb.ar, %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.aj:                                            ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  store i128 51, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !36567)
  call void @llvm.experimental.noalias.scope.decl(metadata !36568)
  %i.ci = load ptr, ptr %i.r, align 8, !alias.scope !36569, !nonnull !54, !noundef !54
  %i.cj = atomicrmw add ptr %i.ci, i64 -1 release, align 8, !noalias !36569
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit78

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #52
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit78 unwind label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit78: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cl = load i128, ptr %i.u, align 16, !range !119, !noundef !54 ; 3 uses
  %.not64 = icmp eq i128 %i.cl, 50
  br i1 %.not64, label %bb.al, label %8

8:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit78
  %9 = icmp ne i128 %i.cl, 10
  call void @llvm.assume(i1 %9)
  %10 = icmp eq i128 %i.cl, 27
  br i1 %10, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit81, label %bb.an

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEEECs14kWLkQVSKO_14deltalake_core.exit78
  call void @llvm.experimental.noalias.scope.decl(metadata !36570)
  call void @llvm.experimental.noalias.scope.decl(metadata !36571)
  call void @llvm.experimental.noalias.scope.decl(metadata !36572)
  %i.cm = load ptr, ptr %.sroa.4.0..sroa_idx, align 16, !alias.scope !36573, !nonnull !54, !noundef !54
  %i.cn = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !noalias !36573
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit81

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx) #52
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit81

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit81: ; preds = %bb.an, %bb.am, %bb.al, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ax

bb.an:                                            ; preds = %8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit81

bb.ao:                                            ; preds = %bb.q, %bb.n
  %lpad.thr_comm93 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !36574
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ap, label %.noexc82

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #52
          to label %.noexc82 unwind label %bb.ai

.noexc82:                                         ; preds = %bb.ap, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !36575)
  call void @llvm.experimental.noalias.scope.decl(metadata !36576)
  %i.cr = load ptr, ptr %i.n, align 8, !alias.scope !36577, !nonnull !54, !noundef !54
  %i.cs = atomicrmw add ptr %i.cr, i64 -1 release, align 8, !noalias !36577
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.aq, label %.critedge66

bb.aq:                                            ; preds = %.noexc82
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #52
          to label %.critedge66 unwind label %bb.ai

bb.ar:                                            ; preds = %bb.au
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.h) #50
          to label %.split unwind label %bb.ai

bb.as:                                            ; preds = %bb.f, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 16 dereferenceable(64) %i.u, i64 64, i1 false)
  %i.cv = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 6
  call void @llvm.assume(i1 %i.cw)
  %.not58 = icmp eq i64 %i.cv, 0
  br i1 %.not58, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.av, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.w)
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs3_NtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_valueNtB5_13ColumnarValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @2411, ptr %i.f, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 38, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @2411, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 38, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @2415, ptr %i.da, align 8
  invoke void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull @2414, ptr noundef nonnull %i.g, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.av unwind label %bb.ar

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.at

.critedge:                                        ; preds = %7, %bb.ag, %bb.af, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ax

bb.aw:                                            ; preds = %.split
  br i1 %.not121127, label %.thread109, label %bb.bb

bb.ax:                                            ; preds = %.critedge, %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core.exit81, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.ay:                                            ; preds = %bb.ae, %bb.h, %.critedge66
  %.pn61.ph = phi { ptr, i32 } [ %.pn, %.critedge66 ], [ %.pn, %bb.h ], [ %i.ca, %bb.ae ] ; 3 uses
  %i.db = load i128, ptr %i.u, align 16, !range !119, !noundef !54 ; 3 uses
  %.not63 = icmp eq i128 %i.db, 50
  br i1 %.not63, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common14columnar_value13ColumnarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.u) #50
          to label %.thread109 unwind label %bb.ai

bb.ba:                                            ; preds = %bb.ay
  %i.dc = icmp ne i128 %i.db, 10
  call void @llvm.assume(i1 %i.dc)
  %11 = icmp eq i128 %i.db, 27
  br i1 %11, label %.thread109, label %12

12:                                               ; preds = %bb.ba
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.u) #50
          to label %.thread109 unwind label %bb.ai

.split:                                           ; preds = %.split.loopexit, %.split.loopexit.split-lp, %bb.ar, %.thread
  %.not121127 = phi i1 [ false, %.thread ], [ true, %bb.ar ], [ false, %.split.loopexit ], [ true, %.split.loopexit.split-lp ]
  %.pn122 = phi { ptr, i32 } [ %i.ad, %.thread ], [ %i.cu, %bb.ar ], [ %lpad.loopexit, %.split.loopexit ], [ %lpad.loopexit.split-lp, %.split.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.w) #50
          to label %bb.aw unwind label %bb.ai

.thread109:                                       ; preds = %12, %bb.ba, %bb.az, %bb.bb, %bb.aw
  %.pn122.pn = phi { ptr, i32 } [ %.pn122, %bb.aw ], [ %.pn122, %bb.bb ], [ %.pn61.ph, %12 ], [ %.pn61.ph, %bb.ba ], [ %.pn61.ph, %bb.az ]
  resume { ptr, i32 } %.pn122.pn

bb.bb:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr3udf18ScalarFunctionArgsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %2) #50
          to label %.thread109 unwind label %bb.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB4_16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 !guid !36578 {
bb.a:
  ret { ptr, i64 } { ptr @2416, i64 18 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB4_16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #6 !guid !36579 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @2417, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB4_16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl7aliases(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #14 !guid !36580 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !54, !noundef !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !noundef !54
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB4_16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl9signature(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #6 !guid !36581 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs4lawaffTVVK_9sqlparser7dialect7genericNtB4_14GenericDialectNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !36582 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2421, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_extNtNtNtCsjyY8HP3IvQ6_12object_store6client5retry11RetryConfigNtNtB8_6config12TryUpdateKey14try_update_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 9)) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 !guid !36583 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 7 uses
  %i.b = alloca [96 x i8], align 16               ; 8 uses
  %i.c = alloca [96 x i8], align 16               ; 8 uses
  %i.d = alloca [96 x i8], align 16               ; 8 uses
  %i.e = alloca [96 x i8], align 16               ; 7 uses
  switch i64 %3, label %bb.r [
    i64 11, label %bb.b
    i64 13, label %bb.d
    i64 12, label %bb.f
    i64 27, label %bb.h
    i64 20, label %bb.i
    i64 26, label %bb.l
    i64 19, label %bb.m
    i64 4, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %2, align 1
  %i.g = xor i64 %i.f, 8247328359524622701
  %i.h = getelementptr i8, ptr %2, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 8315168227309482591
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config11parse_usize(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.o = load i64, ptr %i.e, align 16, !range !97, !noundef !54 ; 2 uses
  %.not132 = icmp eq i64 %i.o, -9223372036854775711
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  br i1 %.not132, label %bb.ad, label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.r = load i64, ptr %2, align 1
  %i.s = xor i64 %i.r, 7598803446496781682
  %i.t = getelementptr i8, ptr %2, i64 5
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 8391735962092794975
  %i.w = or i64 %i.s, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config14parse_duration(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.aa = load i64, ptr %i.d, align 16, !range !97, !noundef !54 ; 2 uses
  %.not122 = icmp eq i64 %i.aa, -9223372036854775711
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = load i32, ptr %i.ad, align 16           ; 2 uses
  br i1 %.not122, label %bb.ab, label %bb.aa

bb.f:                                             ; preds = %bb.a
  %i.af = load i64, ptr %2, align 1
  %i.ag = xor i64 %i.af, 7161113044610281065
  %i.ah = getelementptr i8, ptr %2, i64 8
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = xor i64 %i.aj, 1717989227
  %i.al = or i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config14parse_duration(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.ap = load i64, ptr %i.c, align 16, !range !97, !noundef !54 ; 2 uses
  %.not = icmp eq i64 %i.ap, -9223372036854775711
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.at = load i32, ptr %i.as, align 16           ; 2 uses
  br i1 %.not, label %bb.z, label %bb.y

bb.h:                                             ; preds = %bb.a
  %i.au = load i128, ptr %2, align 1
  %i.av = xor i128 %i.au, 139809882651755987703337620606543946082
  %i.aw = getelementptr i8, ptr %2, i64 11
  %i.ax = load i128, ptr %i.aw, align 1
  %i.ay = xor i128 %i.ax, 136113129705268112145559757668592609638
  %i.az = or i128 %i.av, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.bd = load i128, ptr %2, align 1
  %i.be = xor i128 %i.bd, 132099219616828866167158255166983201122
  %i.bf = getelementptr i8, ptr %2, i64 16
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = zext i32 %i.bg to i128
  %i.bi = xor i128 %i.bh, 1717989227
  %i.bj = or i128 %i.be, %i.bi
  %i.bk = icmp ne i128 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.bn = load i64, ptr %2, align 1
  %i.bo = xor i64 %i.bn, 7738135659889058157
  %i.bp = getelementptr i8, ptr %2, i64 3
  %i.bq = load i64, ptr %i.bp, align 1
  %i.br = xor i64 %i.bq, 7378707546512646751
  %i.bs = or i64 %i.bo, %i.br
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config14parse_duration(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.bw = load i64, ptr %i.b, align 16, !range !97, !noundef !54 ; 2 uses
  %.not131 = icmp eq i64 %i.bw, -9223372036854775711
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ca = load i32, ptr %i.bz, align 16           ; 2 uses
  br i1 %.not131, label %bb.x, label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.cb = load i128, ptr %2, align 1
  %i.cc = xor i128 %i.cb, 145126794634895651194952848847665324386
  %i.cd = getelementptr i8, ptr %2, i64 10
  %i.ce = load i128, ptr %i.cd, align 1
  %i.cf = xor i128 %i.ce, 136113129705268112145845734892972369518
  %i.cg = or i128 %i.cc, %i.cf
  %i.ch = icmp ne i128 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.ck = load i128, ptr %2, align 1
  %i.cl = xor i128 %i.ck, 142743408125619034060837033459115581794
  %i.cm = getelementptr i8, ptr %2, i64 3
  %i.cn = load i128, ptr %i.cm, align 1
  %i.co = xor i128 %i.cn, 136113129705268112145845734892955397995
  %i.cp = or i128 %i.cl, %i.co
end_hunk_0
