inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RINvMNtNtCskFSgV2vI2Ct_13opentelemetry5trace6tracerNtB3_11SpanBuilder15with_start_timeNtNtCs2pqxYH9ZEk8_3std4time10SystemTimeECs7p2uQeJxui2_9deltalake:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load <2 x i64>, ptr %i.e, align 16
  store <2 x i64> %i.g, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.i = load i8, ptr %i.h, align 8, !range !5, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.l, ptr noundef nonnull align 16 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = load i64, ptr %i.o, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load i32, ptr %i.q, align 8, !range !6, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.p, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.x, ptr noundef nonnull align 16 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ab, ptr noundef nonnull align 16 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ad, ptr noundef nonnull align 16 dereferenceable(64) %i.ac, i64 64, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskFSgV2vI2Ct_13opentelemetry5trace6tracerNtB3_11SpanBuilder9from_nameReECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 16 captures(none) dereferenceable(272) initializes((0, 16), (32, 40), (48, 112), (120, 124), (136, 140), (144, 265)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 0, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 4 uses
  store i64 0, ptr %i.d, align 16
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 1000000000, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 1000000000, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  store i64 -9223372036854775808, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  store i64 -9223372036854775808, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  store i64 -9223372036854775808, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  store i64 -9223372036854775807, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 16
  store i128 0, ptr %0, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 5, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -9223372036854775808, ptr %i.n, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1000000000, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1000000000, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.r, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.t, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef nonnull align 16 dereferenceable(64) %i.k, i64 64, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB6_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE5spawnNCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task5spawn5spawnINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBM_6future6future6Futurep6OutputTjINtNtBM_6result6ResultINtNtB1i_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtBM_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.e = tail call noundef nonnull ptr @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE6insertCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.d)
  ret ptr %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef nonnull align 8 captures(none) %5, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.731.i.i = alloca [344 x i8], align 8     ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.416.i.i = alloca [344 x i8], align 8     ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [352 x i8], align 16              ; 2 uses
  %i.g = alloca [352 x i8], align 16              ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = load atomic i64, ptr %5 monotonic, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -9223372036854775806, ptr %i.h, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !range !7, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.j, align 8            ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.433.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.053 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit ]
  br label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.b:                                             ; preds = %.preheader, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.ag
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([352 x i8]) align 16 captures(none) dereferenceable(352) %i.g, ptr noundef nonnull align 128 %.val6)
          to label %._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge: ; preds = %bb.c
  %.pr.pre = load i64, ptr %i.g, align 16
  br label %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i)
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.d
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.034.i.i.i.be, %.backedge.i.i.i.backedge ] ; 16 uses
  %i.t = load atomic i64, ptr %.val6 acquire, align 8, !noalias !14 ; 5 uses
  %i.u = load atomic ptr, ptr %i.n acquire, align 8, !noalias !14 ; 7 uses
  %i.v = lshr i64 %i.t, 1                         ; 2 uses
  %i.w = and i64 %i.v, 31                         ; 5 uses
  %i.x = icmp eq i64 %i.w, 31
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.backedge.i.i.i
  %i.y = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.z = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter168 = and i32 %i.z, 7                  ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter172 = and i32 %i.z, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter173 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter173.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter173.next.7 = add i32 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i32 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod171 = icmp ne i32 %xtraiter168, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter169 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter169.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !17

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.f, %bb.g
  %i.ab = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.h:                                             ; preds = %.backedge.i.i.i
  %i.ac = add i64 %i.t, 2                         ; 2 uses
  %i.ad = and i64 %i.t, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  fence seq_cst
  %i.af = load atomic i64, ptr %i.o monotonic, align 8, !noalias !14 ; 3 uses
  %i.ag = lshr i64 %i.af, 1
  %i.ah = icmp eq i64 %i.v, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.unshifted.i.i.i = xor i64 %i.af, %i.t
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.ai = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.ac, %i.ai
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aj = and i64 %i.af, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread.i.i

bb.l:                                             ; preds = %bb.j, %bb.h
  %.sroa.01.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %spec.select.i.i.i, %bb.j ] ; 2 uses
  %i.al = icmp eq ptr %i.u, null
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.am = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.o:                                             ; preds = %bb.m
  %.not.i18.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i18.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %bb.o
  %i.an = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter162 = and i32 %i.an, 7                 ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.ao, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter166 = and i32 %i.an, 56
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.i.i.i.preheader.new
  %niter167 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter167.next.7, %.lr.ph.i19.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter167.next.7 = add i32 %niter167, 8         ; 2 uses
  %niter167.ncmp.7 = icmp eq i32 %niter167.next.7, %unroll_iter166
  br i1 %niter167.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod164.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %lcmp.mod165 = icmp ne i32 %xtraiter162, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i19.i.i.i.epil

.lr.ph.i19.i.i.i.epil:                            ; preds = %.lr.ph.i19.i.i.i.epil, %.lr.ph.i19.i.i.i.epil.preheader
  %epil.iter163 = phi i32 [ 0, %.lr.ph.i19.i.i.i.epil.preheader ], [ %epil.iter163.next, %.lr.ph.i19.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil, !llvm.loop !19

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.epil, %bb.n, %bb.o
  %i.ap = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.p:                                             ; preds = %bb.l
  %i.aq = cmpxchg weak ptr %.val6, i64 %i.t, i64 %.sroa.01.0.i.i.i seq_cst acquire, align 8, !noalias !14
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.aq, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i, i32 6) ; 2 uses
  %i.ar = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %.backedge.i.i.i.backedge, label %.lr.ph.i24.i.i.i.preheader

.lr.ph.i24.i.i.i.preheader:                       ; preds = %bb.q
  %xtraiter156 = and i32 %i.ar, 5                 ; 3 uses
  %i.as = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.as, label %.lr.ph.i24.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.preheader.new

.lr.ph.i24.i.i.i.preheader.new:                   ; preds = %.lr.ph.i24.i.i.i.preheader
  %unroll_iter160 = and i32 %i.ar, 56
  br label %.lr.ph.i24.i.i.i

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i24.i.i.i
  %lcmp.mod158.not = icmp eq i32 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i24.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.i24.i.i.i.preheader
  %lcmp.mod159 = icmp ne i32 %xtraiter156, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i24.i.i.i.epil

.lr.ph.i24.i.i.i.epil:                            ; preds = %.lr.ph.i24.i.i.i.epil, %.lr.ph.i24.i.i.i.epil.preheader
  %epil.iter157 = phi i32 [ 0, %.lr.ph.i24.i.i.i.epil.preheader ], [ %epil.iter157.next, %.lr.ph.i24.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i24.i.i.i.epil, !llvm.loop !20

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i24.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.at = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.034.i.i.i.be = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ %i.ap, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.at, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.q ]
  br label %.backedge.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i24.i.i.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i24.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i24.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq i64 %i.w, 30
  br i1 %i.au, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 11408 ; 2 uses
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8, !noalias !14 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %loop-unroll.iv174 = phi i32 [ %loop-unroll.iv.next175, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.s ] ; 4 uses
  %.sroa.0.02.i28.i.i.i = phi i32 [ %i.bd, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.s ] ; 4 uses
  %i.ay = shl i32 %.sroa.0.02.i28.i.i.i, 1
  %i.az = or i32 %i.ay, 1
  %i.ba = icmp ult i32 %.sroa.0.02.i28.i.i.i, 7
  br i1 %i.ba, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i27.i.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %.lr.ph.i27.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.u
  %i.bb = add i32 %loop-unroll.iv174, -1
  %xtraiter176 = and i32 %loop-unroll.iv174, 7    ; 3 uses
  %i.bc = icmp ult i32 %i.bb, 7
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter180 = and i32 %loop-unroll.iv174, -8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter181 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter181.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  call void @llvm.x86.sse2.pause(), !noalias !14
  %niter181.next.7 = add i32 %niter181, 8         ; 2 uses
  %niter181.ncmp.7 = icmp eq i32 %niter181.next.7, %unroll_iter180
  br i1 %niter181.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod178.not = icmp eq i32 %xtraiter176, 0
  br i1 %lcmp.mod178.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod179 = icmp ne i32 %xtraiter176, 0
  call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter177 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter177.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14
  %epil.iter177.next = add i32 %epil.iter177, 1   ; 2 uses
  %epil.iter177.cmp.not = icmp eq i32 %epil.iter177.next, %xtraiter176
  br i1 %epil.iter177.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !21

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.t, %bb.u
  %i.bd = add i32 %.sroa.0.02.i28.i.i.i, 1
  %i.be = load atomic ptr, ptr %i.av acquire, align 8, !noalias !14 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  %loop-unroll.iv.next175 = add i32 %loop-unroll.iv174, %i.az
  br i1 %i.bf, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.s
  %.lcssa.i.i.i.i = phi ptr [ %i.aw, %bb.s ], [ %i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.bg = and i64 %.sroa.01.0.i.i.i, -2
  %i.bh = add i64 %i.bg, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 11408
  %i.bj = load atomic ptr, ptr %i.bi monotonic, align 8, !noalias !14
  %i.bk = icmp ne ptr %i.bj, null
  %i.bl = zext i1 %i.bk to i64
  %spec.select17.i.i.i = or disjoint i64 %i.bh, %i.bl
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.n release, align 8, !noalias !14
  store atomic i64 %spec.select17.i.i.i, ptr %.val6 release, align 8, !noalias !14
  br label %bb.v

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.k
  store i8 0, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !alias.scope !22
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i

bb.v:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.r
  %i.bm = getelementptr inbounds nuw [368 x i8], ptr %i.u, i64 %i.w ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 352 ; 3 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8, !noalias !23
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i

.lr.ph.i.i3.i.i:                                  ; preds = %bb.v, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i
  %loop-unroll.iv182 = phi i32 [ %loop-unroll.iv.next183, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i ], [ 0, %bb.v ] ; 4 uses
  %.sroa.0.02.i.i4.i.i = phi i32 [ %i.bw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i ], [ 0, %bb.v ] ; 4 uses
  %i.br = shl i32 %.sroa.0.02.i.i4.i.i, 1
  %i.bs = or i32 %i.br, 1
  %i.bt = icmp ult i32 %.sroa.0.02.i.i4.i.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i3.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i.i3.i.i
  %.not.i.i.i6.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i, 0
  br i1 %.not.i.i.i6.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.preheader

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.x
  %i.bu = add i32 %loop-unroll.iv182, -1
  %xtraiter184 = and i32 %loop-unroll.iv182, 7    ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 7
  br i1 %i.bv, label %.lr.ph.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i7.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i7.i.i.preheader
  %unroll_iter188 = and i32 %loop-unroll.iv182, -8
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i7.i.i.preheader.new
  %niter189 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.preheader.new ], [ %niter189.next.7, %.lr.ph.i.i.i7.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  call void @llvm.x86.sse2.pause(), !noalias !23
  %niter189.next.7 = add i32 %niter189, 8         ; 2 uses
  %niter189.ncmp.7 = icmp eq i32 %niter189.next.7, %unroll_iter188
  br i1 %niter189.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i
  %lcmp.mod186.not = icmp eq i32 %xtraiter184, 0
  br i1 %lcmp.mod186.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.epil.preheader:                 ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.preheader
  %lcmp.mod187 = icmp ne i32 %xtraiter184, 0
  call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph.i.i.i7.i.i.epil

.lr.ph.i.i.i7.i.i.epil:                           ; preds = %.lr.ph.i.i.i7.i.i.epil, %.lr.ph.i.i.i7.i.i.epil.preheader
  %epil.iter185 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.epil.preheader ], [ %epil.iter185.next, %.lr.ph.i.i.i7.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !23
  %epil.iter185.next = add i32 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i32 %epil.iter185.next, %xtraiter184
  br i1 %epil.iter185.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil, !llvm.loop !26

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.epil, %bb.w, %bb.x
  %i.bw = add i32 %.sroa.0.02.i.i4.i.i, 1
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCshmPyUV8PP35_6chrono6offsetINtB5_11LocalResultINtNtB7_8datetime8DateTimeNtNtB5_3utc3UtcEE6unwrapCs7p2uQeJxui2_9deltalake:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !11851)
  %i.c = load i64, ptr %i.b, align 8, !range !34, !alias.scope !11851, !noalias !11854, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11856
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !11851, !noalias !11854, !nonnull !3, !align !39, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !40, !alias.scope !11851, !noalias !11854, !noundef !3
  store ptr %i.f, ptr %i.a, align 8, !noalias !11856
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !11856
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #34
          to label %bb.d unwind label %bb.c, !noalias !11851

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.e, !noalias !11851

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !11851
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.phi, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11851, !noalias !11854, !nonnull !3, !align !39, !noundef !3 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !40, !alias.scope !11851, !noalias !11854, !noundef !3 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11857)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !11857, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !11857, !noundef !3 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.u, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, %.noexc5
  %.sroa.0.03.i = phi ptr [ %i.x, %.noexc5 ], [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !11857, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 24
  %i.z = cmpxchg ptr %i.y, i64 0, i64 2 acq_rel acquire, align 8, !noalias !11857
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.z, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.f, label %.noexc5

._crit_edge.i:                                    ; preds = %.noexc5, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q) #32
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !11857, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !11857, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = atomicrmw xchg ptr %i.ad, i32 1 release, align 4, !noalias !11857
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.g, label %.noexc5

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.ad)
          to label %.noexc5 unwind label %.loopexit ; 0 uses

.noexc5:                                          ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.ah = icmp eq ptr %i.x, %i.v
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.m, i8 %i.o) #37
          to label %common.resume unwind label %bb.o

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit: ; preds = %._crit_edge.i
  %i.ai = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !3 ; 2 uses
  %i.an = icmp ult i64 %i.am, 384307168202282326
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = zext i1 %i.ao to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %.sroa.0.0 = phi i8 [ %i.ap, %bb.i ], [ 0, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.aq seq_cst, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !46

bb.l:                                             ; preds = %bb.k
  %i.av = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.av, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.ar monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aw = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit, !prof !37

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [16 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11860)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !11860 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !11860 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11860
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.v = mul nuw i32 %.sroa.0.034.i, %.sroa.0.034.i ; 2 uses
  %xtraiter92 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter96 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  %niter97.next.7 = add i32 %niter97, 8           ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96
  br i1 %niter97.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter92, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter93 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter93.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11860
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11863

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.x = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %.backedge.i
  %i.y = add i64 %i.p, 2                          ; 2 uses
  %i.z = and i64 %i.p, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  fence seq_cst
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !11860 ; 3 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.r, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.unshifted.i = xor i64 %i.ab, %i.p
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.ae = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.y, %i.ae
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = and i64 %i.ab, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.y, %bb.f ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11860
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

bb.m:                                             ; preds = %bb.k
  %.not.i18.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.m
  %i.aj = mul nuw i32 %.sroa.0.034.i, %.sroa.0.034.i ; 2 uses
  %xtraiter86 = and i32 %i.aj, 7                  ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ak, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter90 = and i32 %i.aj, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter91 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter91.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  %niter91.next.7 = add i32 %niter91, 8           ; 2 uses
  %niter91.ncmp.7 = icmp eq i32 %niter91.next.7, %unroll_iter90
  br i1 %niter91.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i19.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod88.not = icmp eq i32 %xtraiter86, 0
  br i1 %lcmp.mod88.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod89 = icmp ne i32 %xtraiter86, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter87 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter87.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11860
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !11864

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !11860
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i24.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod85 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11860
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !11865

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 992 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !11860 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i28.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.au = shl i32 %.sroa.0.02.i28.i, 1
  %i.av = or i32 %i.au, 1
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.aw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11860
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.ax = add i32 %loop-unroll.iv, -1
  %xtraiter98 = and i32 %loop-unroll.iv, 7        ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  call void @llvm.x86.sse2.pause(), !noalias !11860
  %niter103.next.7 = add i32 %niter103, 8         ; 2 uses
  %niter103.ncmp.7 = icmp eq i32 %niter103.next.7, %unroll_iter102
  br i1 %niter103.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter99 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter99.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11860
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !11866

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.az = add i32 %.sroa.0.02.i28.i, 1
  %i.ba = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !11860 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.av
  br i1 %i.bb, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ba, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 992
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8, !noalias !11860
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !11860
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !11860
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i
  %i.bi = load i32, ptr %i.i, align 8, !range !6, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !11860
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !11860
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8, !noalias !11867
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv104 = phi i32 [ %loop-unroll.iv.next105, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 4 uses
  %i.bo = shl i32 %.sroa.0.02.i.i4, 1
  %i.bp = or i32 %i.bo, 1
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11867
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.br = add i32 %loop-unroll.iv104, -1
  %xtraiter106 = and i32 %loop-unroll.iv104, 7    ; 3 uses
  %i.bs = icmp ult i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter110 = and i32 %loop-unroll.iv104, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter111 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter111.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !11867
  call void @llvm.x86.sse2.pause(), !noalias !11867
  call void @llvm.x86.sse2.pause(), !noalias !11867
  call void @llvm.x86.sse2.pause(), !noalias !11867
  call void @llvm.x86.sse2.pause(), !noalias !11867
  call void @llvm.x86.sse2.pause(), !noalias !11867
  call void @llvm.x86.sse2.pause(), !noalias !11867
  call void @llvm.x86.sse2.pause(), !noalias !11867
  %niter111.next.7 = add i32 %niter111, 8         ; 2 uses
  %niter111.ncmp.7 = icmp eq i32 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod108.not = icmp eq i32 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod109 = icmp ne i32 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter107 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter107.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11867
  %epil.iter107.next = add i32 %epil.iter107, 1   ; 2 uses
  %epil.iter107.cmp.not = icmp eq i32 %epil.iter107.next, %xtraiter106
  br i1 %epil.iter107.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !11870
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10disconnectCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %.sroa.18.0.in.i.i.i10, label %bb.i, label %.noexc12

._crit_edge.i11:                                  ; preds = %.noexc12, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al) #32
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit13 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph.i7
  %i.av = load ptr, ptr %.sroa.0.03.i8, align 8, !noalias !12038, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !12038, !nonnull !3, !noundef !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.az = atomicrmw xchg ptr %i.ay, i32 1 release, align 4, !noalias !12038
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.j, label %.noexc12

bb.j:                                             ; preds = %bb.i
  %i.bb = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.ay)
          to label %.noexc12 unwind label %.loopexit ; 0 uses

.noexc12:                                         ; preds = %bb.j, %bb.i, %.lr.ph.i7
  %i.bc = icmp eq ptr %i.as, %i.aq
  br i1 %i.bc, label %._crit_edge.i11, label %.lr.ph.i7

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit13: ; preds = %._crit_edge.i11, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit13
  %i.be = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bf = and i64 %i.be, 9223372036854775807
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !46

bb.l:                                             ; preds = %bb.k
  %i.bh = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.bh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.bd monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit13
  %i.bi = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, !prof !37

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 17 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 10 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.at
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noundef nonnull align 128 %.8.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, i64 undef, i32 noundef 1000000000)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cz

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12044)
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 5 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8, !noalias !12046 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 5 uses
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12046
  %i.ab = and i64 %i.y, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.lr.ph.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload36.i = load i64, ptr %i.u, align 8, !alias.scope !12044, !noalias !12041
  %.sroa.5.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx37.i, i64 16, i1 false), !noalias !12041
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.03.0.ph78.i.i = phi i64 [ %i.y, %.lr.ph.lr.ph.i.i ], [ %i.bl, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.07.0.ph77.i.i = phi ptr [ %i.aa, %.lr.ph.lr.ph.i.i ], [ %i.bm, %.outer.backedge.i.i ]
  %.sroa.0.0.ph76.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 5 uses
  %.sroa.035.0.ph75.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.ae = lshr exact i64 %.sroa.03.0.ph78.i.i, 1
  %i.af = and i64 %i.ae, 31                       ; 2 uses
  %i.ag = icmp eq i64 %i.af, 31
  br i1 %i.ag, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i
  %i.ah = mul i32 %.sroa.0.0.ph76.i.i, %.sroa.0.0.ph76.i.i
  %i.ai = shl i32 %.sroa.0.0.ph76.i.i, 1
  %i.aj = or i32 %i.ai, 1
  br label %.lr.ph.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.ak = add i32 %.sroa.0.071.i77.i, 1           ; 2 uses
  %i.al = lshr exact i64 %i.au, 1
  %i.am = and i64 %i.al, 31                       ; 2 uses
  %i.an = icmp eq i64 %i.am, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.ap
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %loop-unroll.iv = phi i32 [ %i.ah, %.lr.ph.i.preheader ], [ %loop-unroll.iv.next, %bb.d ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.d ] ; 2 uses
  %.sroa.0.071.i77.i = phi i32 [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.preheader ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ao = shl i32 %indvar, 1
  %i.ap = add i32 %i.aj, %i.ao
  %i.aq = icmp ult i32 %.sroa.0.071.i77.i, 7
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit56.i.i, !noalias !12046

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.071.i77.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.ar = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.as = icmp ult i32 %i.ar, 7
  br i1 %i.as, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.03.073.i.lcssa.i = phi i64 [ %.sroa.03.0.ph78.i.i, %.lr.ph.i.i ], [ %i.au, %bb.d ] ; 2 uses
  %.sroa.07.072.i.lcssa.i = phi ptr [ %.sroa.07.0.ph77.i.i, %.lr.ph.i.i ], [ %i.av, %bb.d ] ; 2 uses
  %.sroa.0.071.i.lcssa.i = phi i32 [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ], [ %i.ak, %bb.d ] ; 6 uses
  %.lcssa54.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.at = icmp eq i64 %.lcssa54.i, 30             ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.0.ph75.i.i, null
  %or.cond.i.i = select i1 %i.at, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod161 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !12049

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.f, %bb.e
  %i.au = load atomic i64, ptr %i.x acquire, align 8, !noalias !12046 ; 3 uses
  %i.av = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12046
  %i.aw = and i64 %i.au, 1
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %.outer._crit_edge.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g, %._crit_edge.i
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %._crit_edge.i ], [ %i.az, %bb.g ] ; 9 uses
  %i.ay = icmp eq ptr %.sroa.07.072.i.lcssa.i, null
  br i1 %i.ay, label %bb.h, label %bb.m

bb.g:                                             ; preds = %._crit_edge.i
  %i.az = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake()
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %.body.loopexit.i, !noalias !12050

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake()
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !noalias !12046 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.bb = cmpxchg ptr %i.z, ptr null, ptr %i.ba release monotonic, align 8, !noalias !12046
  %i.bc = extractvalue { ptr, i1 } %i.bb, 1
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.ba, ptr %i.ad release, align 8, !noalias !12046
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bd = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.bd, label %.outer.backedge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !12046
  br label %.outer.backedge.i.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.072.i.lcssa.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.ba, %bb.j ] ; 3 uses
  %i.be = add i64 %.sroa.03.073.i.lcssa.i, 2
  %i.bf = cmpxchg weak ptr %i.x, i64 %.sroa.03.073.i.lcssa.i, i64 %i.be seq_cst acquire, align 8, !noalias !12046
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bf, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.071.i.lcssa.i, i32 6) ; 2 uses
  %i.bg = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not.i24.i.i = icmp eq i32 %.sroa.0.071.i.lcssa.i, 0
  br i1 %.not.i24.i.i, label %.outer.backedge.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
  %xtraiter162 = and i32 %i.bg, 5                 ; 3 uses
  %i.bh = icmp ult i32 %.sroa.0.071.i.lcssa.i, 3
  br i1 %i.bh, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter166 = and i32 %i.bg, 56
  br label %.lr.ph.i25.i.i

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i25.i.i
  %lcmp.mod164.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod165 = icmp ne i32 %xtraiter162, 0
  tail call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter163 = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter163.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !12051

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i25.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.bi = add i32 %.sroa.0.071.i.lcssa.i, 1
  br label %.outer.backedge.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter167 = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter167.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  tail call void @llvm.x86.sse2.pause(), !noalias !12046
  %niter167.next.7 = add i32 %niter167, 8         ; 2 uses
  %niter167.ncmp.7 = icmp eq i32 %niter167.next.7, %unroll_iter166
  br i1 %niter167.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i25.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.at, label %bb.p, label %.outer._crit_edge.i.i

bb.p:                                             ; preds = %bb.o
  %.not16.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not16.i.i, label %bb.q, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i, !prof !37

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #34
          to label %.noexc5.i unwind label %.body.loopexit.split-lp.i, !noalias !12050

.noexc5.i:                                        ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i: ; preds = %bb.p
  store atomic ptr %.sroa.035.2.i.i, ptr %i.z release, align 8, !noalias !12046
  %i.bj = atomicrmw add ptr %i.x, i64 2 release, align 8, !noalias !12046 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 992
  store atomic ptr %.sroa.035.2.i.i, ptr %i.bk release, align 8, !noalias !12046
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload42.i = load i64, ptr %i.u, align 8, !alias.scope !12044, !noalias !12041
  %.sroa.5.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx43.i, i64 16, i1 false), !noalias !12041
  br label %bb.t

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.n, %bb.l, %bb.k
  %.sroa.035.0.ph.be.i.i = phi ptr [ %i.ba, %bb.l ], [ %i.ba, %bb.k ], [ %.sroa.035.2.i.i, %bb.n ], [ %.sroa.035.2.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.071.i.lcssa.i, %bb.l ], [ %.sroa.0.071.i.lcssa.i, %bb.k ], [ 1, %bb.n ], [ %i.bi, %._crit_edge.loopexit.i.i.i ]
  %i.bl = load atomic i64, ptr %i.x acquire, align 8, !noalias !12046 ; 2 uses
  %i.bm = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12046
  %i.bn = and i64 %i.bl, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i, label %.outer._crit_edge.i.i

.loopexit56.i.i:                                  ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit56.i.i
  %.sroa.035.1.ph.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %.loopexit56.i.i ], [ %.sroa.035.2.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit56.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.bp = icmp eq ptr %.sroa.035.1.ph.i.i, null
  br i1 %i.bp, label %.body.thread.i, label %.thread47.i.i

.thread47.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !12046
  br label %.body.thread.i

.outer._crit_edge.i.i:                            ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.o
  %.sroa.412.0.i = phi ptr [ %.sroa.07.1.i.i, %bb.o ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.lcssa54.i, %bb.o ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ]
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.o ], [ %.sroa.035.0.ph75.i.i, %.loopexit.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %i.bq = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.bq, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i, label %bb.s

bb.s:                                             ; preds = %.outer._crit_edge.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !12046
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i

.body.loopexit.i:                                 ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.loopexit.split-lp.i:                        ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.s, %.outer._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload.i = load i64, ptr %i.u, align 8, !alias.scope !12044, !noalias !12041 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !12041
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12055)
  %i.br = icmp eq ptr %.sroa.412.0.i, null
  br i1 %i.br, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i
  %.sroa.016.0.copyload46.i = phi i64 [ %.sroa.016.0.copyload42.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.016.0.copyload.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ]
  %.sroa.9.145.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %.sroa.412.144.i = phi ptr [ %.sroa.07.1.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i ], [ %.sroa.412.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.bs = icmp samesign ult i64 %.sroa.9.145.i, 31
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %.sroa.412.144.i, i64 %.sroa.9.145.i ; 3 uses
  store i64 %.sroa.016.0.copyload46.i, ptr %i.bt, align 8, !noalias !12057
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx18.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !12057
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = atomicrmw or ptr %i.bu, i64 1 release, align 8, !noalias !12058 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.val, i64 312 ; 3 uses
  %i.bx = load atomic i8, ptr %i.bw seq_cst, align 8, !noalias !12058
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.noexc6.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread.i

.noexc6.i:                                        ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12058
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 8 %i.bz), !noalias !12050
  call void @llvm.experimental.noalias.scope.decl(metadata !12059)
  %i.ca = load i64, ptr %i.r, align 8, !range !34, !alias.scope !12059, !noalias !12062, !noundef !3
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.u, label %bb.z, !prof !37

bb.u:                                             ; preds = %.noexc6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12064
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !12059, !noalias !12062, !nonnull !3, !align !39, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !40, !alias.scope !12059, !noalias !12062, !noundef !3
  store ptr %i.cd, ptr %i.p, align 8, !noalias !12064
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !12064
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #34
          to label %bb.w unwind label %bb.v, !noalias !12065

bb.v:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #37
          to label %common.resume unwind label %bb.x, !noalias !12065

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !12065
  unreachable

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.ah, %.noexc5.i.i.i, %bb.af, %.lr.ph.i.preheader.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.cl, i8 %i.cn) #37
          to label %common.resume unwind label %bb.ap, !noalias !12058

bb.z:                                             ; preds = %.noexc6.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !12059, !noalias !12062, !nonnull !3, !align !39, !noundef !3 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !40, !alias.scope !12059, !noalias !12062, !noundef !3 ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12058
  %i.cp = load atomic i8, ptr %i.bw seq_cst, align 8, !noalias !12058
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12058
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
end_hunk_2
